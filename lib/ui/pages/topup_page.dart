import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project01/blocs/auth/auth_bloc.dart';
import 'package:project01/models/payment_method_model.dart';
import 'package:project01/models/topup_form_model.dart';
import 'package:project01/shared/theme.dart';
import 'package:project01/ui/pages/topup_ammont_page.dart';
import 'package:project01/ui/widgets/bank_item.dart';
import 'package:project01/ui/widgets/buttons.dart';

import '../../blocs/payment_method/payment_method_bloc.dart';

class TopupPage extends StatefulWidget {
  const TopupPage({Key? key}) : super(key: key);

  @override
  State<TopupPage> createState() => _TopupPageState();
}

class _TopupPageState extends State<TopupPage> {

  PaymentMethodModel? selectedPaymentMethod;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Top UP'
        ),
      ),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          // TODO: implement listener
          if (state is AuthSuccess) {
            Row(
              children: [
                Image.asset(
                  'assets/img_wallet.png',
                  width: 80,
                ),
                const SizedBox(
                  width: 16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      state.user.cardNumber!.replaceAllMapped(
                          RegExp(r".{4}"), (match) => "${match.group(0)} "),
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      state.user.name.toString(),
                      style: greyTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            );
          }
           // return Container();
        },
        builder: (context, state) {
          return ListView(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                'Wallet',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              const SizedBox(
                height: 40,
              ),
              Text(
                'Pilih Bank',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              BlocProvider(
                create: (context) =>
                PaymentMethodBloc()
                  ..add(PaymentMethodGet()),
                child: BlocBuilder<PaymentMethodBloc, PaymentMethodState>(
                  builder: (context, state) {
                    if(state is PaymentMethodSuccess){
                      return Column(
                        children:state.paymentMethods.map((paymentMethod){
                          return GestureDetector(
                            onTap: (){
                              setState(() {
                                selectedPaymentMethod = paymentMethod;
                              });
                            },
                            child: BankItem(
                                paymentMethod: paymentMethod,
                                isSelected:
                                  paymentMethod.id == selectedPaymentMethod?.id,
                            ),
                          );
                        }).toList(),
                      );
                    }
                    return const Center(child: CircularProgressIndicator(),);
                  },
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              if(selectedPaymentMethod != null ) CustomFilledButton(
                title: 'Lanjut',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TopupAmount(
                        data: TopupFormModel(
                          paymentMethodCode: selectedPaymentMethod?.code,
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 57,
              ),
            ],
          );
        },
      ),
    );
  }
}
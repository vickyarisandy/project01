import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project01/blocs/auth/auth_bloc.dart';
import 'package:project01/shared/theme.dart';
import 'package:project01/ui/widgets/bank_item.dart';
import 'package:project01/ui/widgets/buttons.dart';

class TopupPage extends StatelessWidget {
  const TopupPage({Key? key}) : super(key: key);

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
          if(state is AuthSuccess){
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
                      state.user.cardNumber!.replaceAllMapped(RegExp(r".{4}"), (match) => "${match.group(0)} "),
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
          return Container();
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
              const BankItem(
                title: 'BCA',
                imageUrl: 'assets/img_bank_bca.png',
                isSelected: true,
              ),
              const BankItem(
                title: 'BNI',
                imageUrl: 'assets/img_bank_bni.png',
              ),
              const BankItem(
                title: 'Mandiri',
                imageUrl: 'assets/img_bank_mandiri.png',
              ),
              const BankItem(
                title: 'OCBC',
                imageUrl: 'assets/img_bank_ocbc.png',
              ),
              const SizedBox(
                height: 12,
              ),
              CustomFilledButton(
                title: 'Lanjut',
                onPressed: () {
                  Navigator.pushNamed(context, '/top-up-amount');
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
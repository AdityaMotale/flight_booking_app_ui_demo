import '../../../design/design_colors.dart';
import 'package:flutter/material.dart';

class TaxiServiceWidgetHome extends StatelessWidget {
  const TaxiServiceWidgetHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: UDesignColors.border),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Taxi service",
            style: TextStyle(
              fontSize: 20,
              height: 1.25,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 10.0,
              runSpacing: 10.0,
              children: [
                for (_TaxiServiceProviderDto dto in _serviceProviders)
                  Container(
                    width: MediaQuery.of(context).size.width * 0.24,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(7, 0, 0, 0),
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        dto.luxuryRating == 5
                            ? Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 1.5,
                                ),
                                margin: const EdgeInsets.only(bottom: 5),
                                decoration: const BoxDecoration(
                                  color: UDesignColors.primary,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(12),
                                    bottomRight: Radius.circular(12),
                                  ),
                                ),
                                child: const Text(
                                  "Luxury",
                                  style: TextStyle(
                                    fontSize: 10,
                                    height: 1.5,
                                    color: Color(0xFFCFA92D),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            : const SizedBox(height: 15),
                        SizedBox(
                          height: 20,
                          child: Image.asset("assets/images/${dto.logo}"),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (int i = 0; i < 5; i++)
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 0.5,
                                ),
                                child: Text(
                                  '\$',
                                  style: TextStyle(
                                    color: i < dto.luxuryRating
                                        ? UDesignColors.primary
                                        : const Color(0xFF909090),
                                  ),
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(height: 10)
                      ],
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

const List<_TaxiServiceProviderDto> _serviceProviders = [
  _TaxiServiceProviderDto(logo: "uber.png", luxuryRating: 4),
  _TaxiServiceProviderDto(logo: "careem.png", luxuryRating: 4),
  _TaxiServiceProviderDto(logo: "yango.png", luxuryRating: 3),
  _TaxiServiceProviderDto(logo: "blacklane.png", luxuryRating: 5),
];

class _TaxiServiceProviderDto {
  final String logo;
  final int luxuryRating;

  const _TaxiServiceProviderDto({
    required this.logo,
    required this.luxuryRating,
  });
}

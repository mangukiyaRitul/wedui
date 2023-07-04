
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:wedui/controllrs/MenuController.dart';
import 'package:wedui/responsive.dart';

import '../../../constants.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if(!Responssive.isDestop(context))IconButton(onPressed: context.read<MenuAppController>().controlMenu , icon: Icon(Icons.menu)),
        if(!Responssive.isMobile(context))  Text("DashBoard",style: Theme.of(context).textTheme.titleLarge,),
        if(!Responssive.isMobile(context)) Spacer(flex: Responssive.isDestop(context)? 2:1,),
        Expanded(child: SearchField()),
        Profilecard(),
      ],
    );
  }
}

class Profilecard extends StatelessWidget {
  const Profilecard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding/2,
      ),
      margin: EdgeInsets.only(left: defaultPadding),
      decoration: BoxDecoration(color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          Image.asset("asset/images/profile_pic.png",height: 32,),

         if(!Responssive.isMobile(context))
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding/2
            ),
            child: Text("Angeline Joli"),
          ),
          Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor:secondaryColor,
        hintText: "Search",
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        suffixIcon: InkWell(
          onTap: (){},
          child: Container(padding: EdgeInsets.all(defaultPadding*0.75),
            margin: EdgeInsets.symmetric(horizontal: defaultPadding/2),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: SvgPicture.asset("asset/Icons/Search.svg"),
          ),
        ),


      ),
    );
  }
}

part of dd_js_util;


class MyErrorWidget extends StatelessWidget {
  final AppException exception;
  const MyErrorWidget({Key? key,required this.exception}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.info,color: Colors.red,),
            12.h,
            Text('Error code : ${exception.code}'),
            Text('Error message :${exception.message}')
          ],
        ),
      ),
    );
  }
}

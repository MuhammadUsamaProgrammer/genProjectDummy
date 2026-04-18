// part of '../../wird_book.dart';

// class CustomDropdown<T> extends StatefulWidget {
//   const CustomDropdown({
//     super.key,
//     required this.items,
//     required this.hintText,
//     this.value,
//     this.onChanged,
//     this.validator,
//     this.builder,
//     this.enabled = true,
//   });

//   final List<T> items;
//   final String hintText;
//   final T? value;
//   final Function(T?)? onChanged;
//   final String? Function(T?)? validator;
//   final String Function(T)? builder;
//   final bool enabled;

//   @override
//   State<CustomDropdown<T>> createState() => _CustomDropdownState<T>();
// }

// class _CustomDropdownState<T> extends State<CustomDropdown<T>> {
//   T? selectedValue;
//   bool isOpen = false;

//   @override
//   void initState() {
//     super.initState();
//     selectedValue = widget.value;
//   }

//   // Get display text for an item
//   String getItemText(T item) {
//     return widget.builder != null ? widget.builder!(item) : item.toString();
//   }

//   // Open the dropdown
//   void openDropdown() {
//     if (!widget.enabled) return;
//     setState(() => isOpen = true);
//   }

//   // Close the dropdown
//   void closeDropdown() {
//     setState(() {
//       isOpen = false;
//     });
//   }

//   // Select an item
//   void selectItem(T item) {
//     setState(() => selectedValue = item);
//     widget.onChanged?.call(item);
//     closeDropdown();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         // Main dropdown button
//         GestureDetector(
//           onTap: widget.enabled ? openDropdown : null,
//           child: Container(
//             padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
//             decoration: BoxDecoration(
//               color: AppColors.white,
//               borderRadius: BorderRadius.circular(10),
//               border: Border.all(color: AppColors.colorC1C7D0, width: 2),
//             ),
//             child: Row(
//               children: [
//                 // Selected value or hint
//                 Expanded(
//                   child: InterText(
//                     selectedValue != null
//                         ? getItemText(selectedValue as T)
//                         : widget.hintText,
//                     size: 16,
//                     maxLines:1,
//                     textOverflow: TextOverflow.ellipsis,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 // Arrow icon
//                 Assets.svg.arrowDown.svg(),
//               ],
//             ),
//           ),
//         ),

//         // Dropdown menu (shown when open)
//         if (isOpen)
//           Container(
//             margin: const EdgeInsets.only(top: 4),
//             padding: const EdgeInsets.all(8),
//             constraints: const BoxConstraints(maxHeight: 300),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(10),
//               border: Border.all(color: AppColors.colorC1C7D0, width: 2),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.1),
//                   blurRadius: 8,
//                   offset: const Offset(0, 4),
//                 ),
//               ],
//             ),
//             child: ListView.builder(
//               shrinkWrap: true,
//               padding: EdgeInsets.zero,
//               itemCount: widget.items.length,
//               itemBuilder: (context, index) {
//                 final item = widget.items[index];
//                 final isSelected = selectedValue == item;

//                 return InkWell(
//                   onTap: () => selectItem(item),
//                   child: Container(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 16,
//                       vertical: 20,
//                     ),
//                     color: isSelected
//                         ? Colors.blue.withOpacity(0.1)
//                         : Colors.transparent,
//                     child: Row(
//                       children: [
//                         Expanded(
//                           child: InterText(
//                             getItemText(item),
//                             size: 16,
//                             fontWeight: isSelected
//                                 ? FontWeight.w500
//                                 : FontWeight.w400,
//                           ),
//                         ),
//                         if (isSelected)
//                           const Icon(Icons.check, color: Colors.blue, size: 20),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//       ],
//     );
//   }
// }

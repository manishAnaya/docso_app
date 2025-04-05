import 'package:flutter/material.dart';

class DoctorDetailScreen extends StatefulWidget {
  const DoctorDetailScreen({super.key});

  @override
  State<DoctorDetailScreen> createState() => _DoctorDetailScreenState();
}

class _DoctorDetailScreenState extends State<DoctorDetailScreen> {
  int selectedDateIndex = 2; // Wednesday selected by default
  int selectedTimeSlotIndex = 1; // 6:30-7:00 selected by default
  int selectedTabIndex = 0; // Info tab selected by default

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Cardiologist',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Doctor Profile Section
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Doctor Profile Image
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey[200],
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: const CircleAvatar(
                        radius: 38,
                        backgroundColor: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  // Doctor Info
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Dr. Reena Sharma',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'Cardiologist',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.teal,
                          ),
                        ),
                        const Text(
                          'MBBS',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 12),
                        // Rating, Experience and Patients
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Rating
                            Column(
                              children: [
                                Row(
                                  children: const [
                                    Icon(Icons.star,
                                        color: Colors.amber, size: 18),
                                    SizedBox(width: 4),
                                    Text(
                                      '4.3',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                const Text(
                                  'Rating & Review',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                              ],
                            ),
                            // Experience
                            Column(
                              children: [
                                Row(
                                  children: const [
                                    Icon(Icons.business_center_outlined,
                                        color: Colors.teal, size: 18),
                                    SizedBox(width: 4),
                                    Text(
                                      '10',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                const Text(
                                  'Years of work',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                              ],
                            ),
                            // Patients
                            Column(
                              children: [
                                Row(
                                  children: const [
                                    Icon(Icons.people_outline,
                                        color: Colors.teal, size: 18),
                                    SizedBox(width: 4),
                                    Text(
                                      '125',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                const Text(
                                  'No. of patients',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Tabs
            Container(
              color: Colors.white,
              margin: const EdgeInsets.only(top: 1),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  _buildTab('Info', 0),
                  _buildTab('History', 1),
                  _buildTab('Review', 2),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Appointment Price
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.lightBlue[50],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'In-Clinic Appointment',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Rs.1,000',
                    style: TextStyle(
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Hospital Info
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Evercare Hospital Ltd.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Preet Vihar, Delhi',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          '2 More clinic',
                          style: TextStyle(
                            color: Colors.teal,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    '20 mins or less wait time',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Day Selection
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Today, Tomorrow, Date options
                  Row(
                    children: [
                      _buildDayOption('Today', '(No Slot)', 0),
                      _buildDayOption('Tomorrow', '(20 Slot)', 1),
                      _buildDayOption('17 Oct', '', 2),
                    ],
                  ),

                  const SizedBox(height: 16),

                  // Time Slots
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildTimeSlot('06:00 - 06:30', 0),
                      _buildTimeSlot('06:30 - 07:00', 1),
                      _buildTimeSlot('07:00 - 07:30', 2),
                    ],
                  ),

                  const SizedBox(height: 32),

                  // Date Selection
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Date',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Select',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 8),

                  // Calendar Days
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildDateOption('Mon', '21', 0),
                      _buildDateOption('Tue', '22', 1),
                      _buildDateOption('Wed', '23', 2),
                      _buildDateOption('Thu', '24', 3),
                      _buildDateOption('Fri', '25', 4),
                      _buildDateOption('Sat', '26', 5),
                    ],
                  ),

                  const SizedBox(height: 32),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                shape: BoxShape.circle,
                border: Border.all(color: Colors.teal, width: 1),
              ),
              child: const Icon(Icons.chat_bubble_outline, color: Colors.teal),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF006064),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Book Appointment',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(String title, int index) {
    final bool isSelected = selectedTabIndex == index;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedTabIndex = index;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: isSelected ? Colors.teal : Colors.transparent,
                width: 2,
              ),
            ),
          ),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: isSelected ? Colors.teal : Colors.grey,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDayOption(String day, String slotInfo, int index) {
    final bool isSelected = index == 0; // Today is selected by default
    return Expanded(
      child: GestureDetector(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: isSelected ? Colors.teal : Colors.grey.shade300,
                width: 2,
              ),
            ),
          ),
          child: Column(
            children: [
              Text(
                day,
                style: TextStyle(
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  color: isSelected ? Colors.black : Colors.grey,
                ),
              ),
              if (slotInfo.isNotEmpty)
                Text(
                  slotInfo,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTimeSlot(String time, int index) {
    final bool isSelected = selectedTimeSlotIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTimeSlotIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: isSelected ? Colors.teal.shade50 : Colors.grey[200],
          borderRadius: BorderRadius.circular(24),
          border: isSelected ? Border.all(color: Colors.teal, width: 1) : null,
        ),
        child: Text(
          time,
          style: TextStyle(
            color: isSelected ? Colors.teal : Colors.black,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }

  Widget _buildDateOption(String day, String date, int index) {
    final bool isSelected = selectedDateIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedDateIndex = index;
        });
      },
      child: Container(
        width: 40,
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.teal.shade50 : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          border: isSelected ? Border.all(color: Colors.teal, width: 1) : null,
        ),
        child: Column(
          children: [
            Text(
              day,
              style: TextStyle(
                fontSize: 12,
                color: isSelected ? Colors.teal : Colors.grey,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              date,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.teal : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

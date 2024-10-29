-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mindmapstechnologies.com
-- Generation Time: Oct 17, 2024 at 07:03 AM
-- Server version: 5.6.48
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sankalpschool`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_activities`
--

CREATE TABLE `t_activities` (
  `activity_id` int(11) NOT NULL,
  `standard_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `month` varchar(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `video` varchar(1000) DEFAULT NULL,
  `objective` varchar(1000) DEFAULT NULL,
  `Description` longtext,
  `tags` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_activities`
--

INSERT INTO `t_activities` (`activity_id`, `standard_id`, `subject_id`, `display_order`, `month`, `name`, `image`, `video`, `objective`, `Description`, `tags`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`, `Branch_id`) VALUES
(1, 1, 9, 1, 'Month_1', 'Pairing Colour rods-1 Insert', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/1/pair colour rods.jpg', NULL, '1.Putting rods into the slots/holes in the board \n2.Improves fine motor skills.', '<p>Introduce the material&nbsp;&nbsp;as Pairing&nbsp;</p>\n', NULL, 1, NULL, '2018-07-06 08:28:38', NULL, '2018-07-06 08:28:38', NULL),
(2, 1, 15, 1, 'Month_1', 'Ring Game', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/2/ring game.jpg', NULL, 'To physical body movement;To follow teacher instructions,improves gross motar skills.', '<p>To physical body movement;To follow teacher instructions,improves gross motar skills.</p>\n', NULL, 1, NULL, '2018-07-07 04:29:29', NULL, '2018-07-07 04:29:29', NULL),
(3, 1, 8, 1, 'Month_1', 'Clay 1- Kneading', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/3/clay kneading.jpg', NULL, ' Kneading', '<p>&nbsp;Kneading</p>\n', NULL, 1, NULL, '2018-07-07 04:40:59', NULL, '2018-07-07 04:41:00', NULL),
(4, 1, 8, 1, 'Month_1', 'Pounding ', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/4/pounding.jpg', NULL, '1. Culturally stimulating, making the child aware of a typical indian activity.\n2. Aids musculardevelopment\n3. Hand Eye Co- ordination.', '<p>Introduce the material as the &quot;Pounding Set&quot; show the child how to carry the material to his chowki. Ask the child to bring a sitting mat. Take all the pieces out from the tray.Keep the cup with grains on right side.Placethe Pounding Set in the centre.Take a few grains and pour it into the mortar.Use the pestle to pound into a fine powder. Point out the child how the powder is beingformed.Once the powder is formed, show the child how to store in the box.</p>\n', NULL, 1, NULL, '2018-08-04 12:10:39', NULL, '2018-07-07 04:59:35', NULL),
(5, 1, 9, 1, 'Month_1', 'Rough and Smooth 1- Introduction', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/5/rough and smooth.jpg', NULL, '1. To introduce the sensation of rough and smooth\n2. Make the child aware of his sense of touch', '<p>Introduce the material to the child as rough and smooth board.ask the child to bring the board to his chowki.Show the child how to run his palm over the smooth side.Show him with gestures thatit feels different.After he has done it a couple of times,introduce the names &quot; Rough&quot; and &quot;Smooth&quot;This is&nbsp; his first introduction to texture.</p>\n', NULL, 1, NULL, '2018-08-04 12:10:40', NULL, '2018-07-07 05:16:03', NULL),
(6, 1, 15, 1, 'Month_1', 'Rolling Ball1- Tracking', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/6/balancing beam.jpg', NULL, 'Tracking', '<p>Watch ball move on slope</p>\n', NULL, 1, NULL, '2018-08-04 12:10:41', NULL, '2018-07-07 05:24:40', NULL),
(7, 1, 15, 1, 'Month_1', 'Circle Sorter 1- Insert ', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/7/Circle sorter.png', NULL, '1.A pre -writing exercise Introduction of the pensil grip\n2.  Develops a sense of visual memory which indirectly aids in reading \n3.Complementary pairing \n4. Slotting', '<p>Introduce the material to the child as &quot; circle Sorter&quot;. Show the child how to carry it to his mat. Place the board in the middle of the workmat infront of you, with the child sitting on your left. Remove any one circle from the board holding the nob between the thumb,index finger and middle finger(writing fingers).Hold the circle up so the child can see the back ,and put it back on the board.Repeat for 1-2 more insets and let the child takeover the activity.Move the board infront of the child.</p>\n', NULL, 1, NULL, '2018-08-04 12:10:41', NULL, '2018-07-07 05:39:22', NULL),
(8, 1, 10, 1, 'Month_1', 'Pattern Maze A 1-Round, Curved', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/8/pattern maze curve.png', NULL, '1.Palmar Grasp\n2.develop hand movements for curved strokes', '<p>Show the child how to hold the knob firmly and move it without taking off his hand from oneend to another</p>\n', NULL, 1, NULL, '2018-08-04 12:10:42', NULL, '2018-07-07 05:49:37', NULL),
(9, 1, 15, 1, 'Month_1', 'Balancing Beam', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/9/Balancing beam parallel.png', NULL, '1.To impove gross motor skills\n2. learning to walk with balance', '<p>Just place 2 beams parallel to each other and then add the other 2 at the end of each creating a normal parallel walk .Ask each of the children in the small group to walk on the beam from one end to the other.it is likely you will see exuberant activity, and children helping each other out</p>\n', NULL, 1, NULL, '2018-08-04 12:10:43', NULL, '2018-07-07 06:01:31', NULL),
(10, 1, 14, 1, 'Month_1', 'Teddy Bear', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/10/teddy bear rhymes.jpg', NULL, 'To improve Vocabulary to get hold on language', '<p>To improve Vocabulary to get hold on language</p>\n', NULL, 1, NULL, '2018-08-04 12:10:44', NULL, '2018-07-07 07:32:36', NULL),
(11, 1, 10, 1, 'Month_1', 'Object Box', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/11/object box.jpg', NULL, 'Introduce Vocabulary', '<p>Introduce Vocabulary</p>\n', NULL, 1, NULL, '2018-08-04 12:10:45', NULL, '2018-07-07 07:43:12', NULL),
(12, 1, 9, 1, 'Month_1', 'Human Evolution 1 Insert', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/12/Untitled.jpg', NULL, 'Pensil grip,Spatial understanding', '<p>Initially it is used as an insert board. take each piece out holding carefully with 3 fingers keep it on the side. then put it back in.</p>\n', NULL, 1, NULL, '2018-08-04 12:10:46', NULL, '2018-07-08 08:45:25', NULL),
(13, 1, 9, 1, 'Month_1', 'Working mat', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/13/working mat.jpg', NULL, 'To help a child role and carry a workmat', '<p>Show the child how to unroll and sit on the&nbsp;mat. Then show him how to roll it back and carry it to the box.</p>\n', NULL, 1, NULL, '2018-08-04 12:10:47', NULL, '2018-07-07 08:00:13', NULL),
(14, 1, 9, 1, 'Month_1', 'Sitting mat', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/14/sitting mat.jpg', NULL, 'To show a child how to fold a sitting mat ', '<p>Show the child how to unfold and sit on the mat then show the child how to fold and carry it back.</p>\n', NULL, 1, NULL, '2018-08-04 12:10:47', NULL, '2018-07-07 08:04:34', NULL),
(15, 1, 11, 1, 'Month_1', 'Me and My family', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/15/me and my family.jpg', NULL, 'Understanding family ', '<p>Understanding family&nbsp;</p>\n', NULL, 1, NULL, '2018-08-04 12:10:48', NULL, '2018-07-07 08:10:55', NULL),
(16, 1, 9, 2, 'Month_2', 'Geometery Board 1-Insert', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/16/geometery board.jpg', NULL, '!.A pre writing exercise introduction of the pencil grip.\n2. Develops a sense of visual memory which indirectly aids in reading \n3.Complementary pairing\n4.Slotting', '<p>Introduce the material to the child as &quot;Geomety Board&quot;.Show the child how to carry itto his mat.Place the board in the middle of the work mat in front of you,with the child sitting on your left.Remove the insetc from the board one by one holding the knob between the thumb,index finger and middle finger(writing fingers).Hold the inset up so the child can see the back and put it back on the board.Repeat for 1-2 more insets and let the child take over the activity.Move the board in front of the child.</p>\n', NULL, 1, NULL, '2018-08-04 12:10:50', NULL, '2018-07-09 13:48:17', NULL),
(17, 1, 9, 2, 'Month_2', 'Grow a Plant puzzle', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/17/download.jpg', NULL, 'To solve the puzzle.\nTo understand the life cycle of plant. ', '<p>To understand the life cycle of plant.&nbsp;</p>\n', NULL, 1, NULL, '2018-07-08 08:45:49', NULL, '2018-07-08 08:45:49', NULL),
(18, 1, 8, 2, 'Month_2', 'Cloth Pegging 1-Peg on box', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/18/download (1).jpg', NULL, 'Introduce the name of pegs.', '<p>Introduce the name of pegs.Show the child how to open the peg by pressing at the ends,and then peg on a plastic bowl in which they are placed.</p>\n', NULL, 1, NULL, '2018-08-04 12:10:51', NULL, '2018-07-08 09:09:19', NULL),
(19, 1, 9, 2, 'Month_2', 'Threading Shapes 1-Threading', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/19/beads.png', NULL, '1.Excellent for improving fine motor skills.\n2.Excellent for concentration development.', '<p>Introduction the material as &quot;Threading Shapes&quot;.Ask the child to take the shapes(with lace in the same bowl)to his place of work.Place the bow in the centre of the mat.Then show the child how too take the bead with the left hand firmly.Show him how to hold the lace firmly with his right hand a little away from the pointed end.Push the thread through the hole a bit from the right side and then bring your right hand forward and pull them firmly till the knot is reached like stitching.Show the child how the thread can be moved in and out of holes like a needle.</p>\n', NULL, 1, NULL, '2018-08-04 12:10:52', NULL, '2018-07-08 09:22:45', NULL),
(20, 1, 9, 2, 'Month_2', 'Velcro Frame', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/20/vlcro frame.jpg', NULL, '1. This practical life activity helps the child fasten and unfasten his shoes/bag.\n2.Excellent for dexterity.', '<p>Fastening 1.Pull the velcro and tighten the cloth.2. Fasten the frame by fixing the rough part of the velcro on its counterpart.</p>\n\n<p>Unfastening.1.Bring the flaps close together.</p>\n\n<p>2.pull the velcro out staring from the top 3.Open all other fasteners. 4 Loosen the cloth to show the child that there are 2 seperate flaps of cloth.</p>\n', NULL, 1, NULL, '2018-08-04 12:10:52', NULL, '2018-07-08 09:37:32', NULL),
(21, 1, 8, 2, 'Month_2', 'Sponging', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/21/sponging.jpg', NULL, '1.This daily life activity shows the child how to use the sponge.It is excellent for muscle development 3. Fostering love and care for the environment.', '<p>Introduce this material to the child as Sponging set. At most times,this material is already laid out for younger chidern.If not,ask the child to carry the material to the &quot;wet chowki&quot; or oil cloth chowki.Ask him to bring a napkin from the napkin corner.Take out the bowls from the tray and place and place them one beside the other.Place the tray next to the chowki.One bowl remains empty and ask the child to fill water in the second bowl.When the child brings the bowl filled with water back,show him who to place it on the left side preferably.Soak the sponge in the water .Slowly take it out without the water dripping.Squeeze it out into the other bowl.Repeat the activity a couple of times and let the child continue.If any water drops have split on the table,show the child how to use the napkin to wipe them off.</p>\n', NULL, 1, NULL, '2018-08-04 12:10:53', NULL, '2018-07-08 09:57:26', NULL),
(22, 1, 10, 2, 'Month_2', 'Farm 1 - Animals', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/22/farm.png', NULL, 'To learn farm animals', '<p>Give a name lesson for the animals</p>\n', NULL, 1, NULL, '2018-08-04 12:10:54', NULL, '2018-07-08 10:01:11', NULL),
(23, 1, 10, 2, 'Month_2', 'Pattern Maze -Slope', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/23/slope.jpg', NULL, '1. Palmar grasp\n2. To develop hand movements for sloping strokes', '<p>Show the child how to hold the knob firmly and move it without taking off his hand from one end to another.A small pause at the top of the V,and then continuously again.</p>\n', NULL, 1, NULL, '2018-08-04 12:10:54', NULL, '2018-07-09 05:46:09', NULL),
(24, 1, 10, 2, 'Month_2', 'Scenic Pictures', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/24/scenic pic.jpg', NULL, 'Conversations on scenic pictures', '<p>Conversations on scenic pictures</p>\n', NULL, 1, NULL, '2018-08-04 12:10:55', NULL, '2018-07-09 05:53:26', NULL),
(25, 1, 11, 2, 'Month_2', 'The farm 2-3', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/25/farm.png', NULL, 'Theme', '<p>The Farm</p>\n', NULL, 1, NULL, '2018-08-04 12:10:56', NULL, '2018-07-09 05:55:45', NULL),
(26, 1, 9, 3, 'Month_3', 'Grip and match 1-Insert', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/26/grip n match.jpg', NULL, 'Enhance the sterognostic sense', '<p>Introduce the material as grip and match.Ask the child to carry the material to his place of work ,take out any one piece from the centre,and run your palms around to feel the shape.Show the child how to fix it on any one arm of the box.similarly ask the child to feel each shape and fix.</p>\n', NULL, 1, NULL, '2018-08-04 12:10:58', NULL, '2018-07-09 06:08:03', NULL),
(27, 1, 8, 3, 'Month_3', 'Straining 1-Using strainer', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/27/strainer.png', NULL, '1.Excellent for improving fine motor skills\n2. This daily life activity teaches the child to strain', '<p>Introduce this material to the child as &quot;straining set&quot;.At most times,this material is already laid out for younger childern .It is laid out with water in one bowl and a plan bowl in the other.The bowl with the water has balls floating in the water.Then we show the child how to fish the ball out of water.Show the child how to use the strainer snaking gently up and down into the wet bowl and place it gently in the other bowl.Transfer 2-3 balls and then ask him if he would like to continue.</p>\n', NULL, 1, NULL, '2018-08-04 12:10:59', NULL, '2018-07-09 08:21:55', NULL),
(28, 1, 9, 3, 'Month_3', 'Diameter variation cylinders 1-insert', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/28/diameter variation cylinder.png', NULL, '1 To improve fine motor skills and dexterity\n2 To help the child develop the pencil grip as a preparation for writing\n3 To help the child become conscious of dimension,especially diameter\n4 Start using materials gently and consciously without making a noise', '<p>The block must be displayed with the cylinder with the maximum width towards the right.Take the child to the place of display and introduce the material as Diameter variation cylinders,ask the child carry the block to his mat.Show the child how to carry the material by grasping one side with the thumb and the other side with three fingers and the little finger supporting at the base. Ask the child to place the block on the centre the work mat preferably such that the cylinder with the maximum diameter is on the right. Take one cylinder out of the socket at a time starting from the largest. Emphasize to the child the way the cylinder in being held. This is important for future pencil holding. Hold the knob making analysis of movement by using middle finger,index and thumb. Grasp and lift the rest of the socket and place it down in front of the block. Then pick it up again and put it back in the slot noiselessly. Emphasis is on the grip and the noiselessness.</p>\n', NULL, 1, NULL, '2018-07-11 08:21:39', NULL, '2018-07-11 08:21:40', NULL),
(29, 1, 10, 3, 'Month_3', 'Pattern Maze-Straight', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/29/straight mazze.png', NULL, '1. Palmar grasp\n2. To develop hand movements for straight(horizontal and vertical )strokes', '<p>Show the child how to hold the knob firmly and move it without taking off his hand from one end to another. A small pause at the turns and then continuously again.</p>\n', NULL, 1, NULL, '2018-08-04 12:11:00', NULL, '2018-07-09 13:44:02', NULL),
(30, 1, 9, 3, 'Month_3', 'Rectangle Sorter 1- Insert', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/30/rectangular sorter.png', NULL, '1. A pre-writing exercise Introduction of the pencil grip\n2. Develops a sense of visual memory which indirectly aids in reading \n3. Complementary Pairing\n4. Slotting', '<p>Introduce the material to the child as &quot;Rectangle Sorter&quot;.Show the child how to carry itto his mat.Place the board in the middle of the work mat in front of you,with the child sitting on your left.Remove the inset from the board one by one holding the knob between the thumb,index finger and middle finger(writing fingers).Hold the inset up so the child can see the back and put it back on the board.Repeat for 1-2 more insets and let the child take over the activity.Move the board in front of the child.</p>\n', NULL, 1, NULL, '2018-08-04 12:11:01', NULL, '2018-07-09 13:52:58', NULL),
(31, 1, 10, 3, 'Month_3', 'OPA 1-First Sound', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/31/OPA.png', NULL, 'Enhance listening skills for word formation', '<p>Oral Phonetic Analysis-Identification of first sound</p>\n', NULL, 1, NULL, '2018-08-04 12:11:03', NULL, '2018-07-09 13:58:28', NULL),
(32, 1, 10, 3, 'Month_3', 'Stories', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/32/story.png', NULL, 'Stories', '<p>Simple Realistic stories</p>\n', NULL, 1, NULL, '2018-08-04 12:11:02', NULL, '2018-07-09 14:01:17', NULL),
(33, 1, 10, 3, 'Month_3', 'Classified Pictures', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/33/story.png', NULL, 'to enrich vocabulary', '<p>Classified pictures are a set of pictures that belong to the same group. Eg:Pictures of wild animals,Pictures of tings in a kitchen As in all language activities,this is a small group exercise Whenever you are using classified pictures with the group for vocabulary enrichment,try and make it into a story. Sample: There is a forest called Gir in a place far away from here.Mira visited Gir forest in her summer vacation.She was Scared when she entered the jungle, but felt safe because her parents were with her. She saw many majestic lions in the forest. It was a sight to watch,she was so excited.She also saw many monkeys on her way...and so on be expressive The children may point out,all jungle animals are dangerous or we are scared of the forest.Encourage use of more words.</p>\n', NULL, 1, NULL, '2018-08-04 12:11:05', NULL, '2018-07-12 06:09:40', NULL),
(34, 1, 9, 3, 'Month_3', 'Geometric Tiles 1 -Sorting', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/34/geometeric tiles.png', NULL, '1. Sorting and grouping based on shape\n2. Enhance logical reasoning abilities ', '<p>Introduce the material to the child as &quot;Geometric Tiles&quot; Ask him to bring 2 empty containers to his place of work.Show him how you are visually examining the shapes and separating them out (sorting)Show the chid how to put different shapes into seperate containers.(Grouping) At the end of the activity,each container will contain only one type of shape.Slowly you could increase the complexity by giving 3-4 different shapes and asking him to group accordingly.</p>\n', NULL, 1, NULL, '2018-08-04 12:11:06', NULL, '2018-07-09 14:29:21', NULL),
(35, 1, 11, 3, 'Month_3', 'Jungle', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/35/download.jpg', NULL, 'Jungle', '<p>Jungle</p>\n', NULL, 1, NULL, '2018-08-04 12:11:07', NULL, '2018-07-09 14:30:21', NULL),
(36, 1, 10, 4, 'Month_4', 'Picture Cards', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/36/picture card.png', NULL, 'Vocabulary enrichment,basis for oral phonetic analysis', '<p>Show the child picture cards and give the names</p>\n', NULL, 1, NULL, '2018-08-04 12:11:08', NULL, '2018-07-10 05:29:58', NULL),
(37, 1, 8, 4, 'Month_4', 'Opening and closing 1-Simple 2', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/37/open n close.png', NULL, 'Opening and closing', '<p>Take one 2 simple ones and demonstrate slowly</p>\n', NULL, 1, NULL, '2018-08-04 12:11:08', NULL, '2018-07-10 05:33:10', NULL),
(38, 1, 8, 4, 'Month_4', 'Clay moulding', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/38/clay.jpg', NULL, 'Clay molding', '<p>Clay molding</p>\n', NULL, 1, NULL, '2018-08-04 12:11:09', NULL, '2018-07-10 05:39:33', NULL),
(39, 1, 8, 4, 'Month_4', 'Beads 1-threading', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/39/beads_1.png', NULL, '1. Excellent for improving fine motor skills\n2 Excellent for concentration development', '<p>Introduce the material as &quot;Beads&quot;.Ask the child to take the shapees (with lace in the same bowl)to his place of work.Place the bow in the centre of the mat. Then show the child how to take the bead with the left hand firmly.Show him how to hold the lace firmly with his right habd a little away from the pointed end. Push the thread through the hole a bit from the right side and then bring your right hand forward and pull firmly till the knot is reached like stitching. Show the child how the thread can be moved in and out of holes like a needle.&nbsp;</p>\n', NULL, 1, NULL, '2018-07-10 08:34:11', NULL, '2018-07-10 08:34:12', NULL),
(40, 1, 9, 4, 'Month_4', 'Ship Shape 1-Slotting', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/40/ship shape.png', NULL, '1. Correlate 3D shapes with 2D base\n2. Match 3D solids with the appropriate slots ', '<p>Introduce the material to the child. This is &quot;Ship Shape&quot;.Show the child how to carry it to his mat and place it in the centre of the mat in front of the child. Show the child how to open the hinged lid. Remove all the soilds and place randomly on the mat. Close the lid of the container Select a solid and pick it up.Hold in your left hand and trace the base with your right hand. Then trace the appropricate hole shape also and place it in gently without pushing or making a noise.Do this one by one until all the solids are in the box.</p>\n', NULL, 1, NULL, '2018-08-04 12:11:10', NULL, '2018-07-11 05:48:43', NULL),
(41, 1, 8, 4, 'Month_4', 'Spooning', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/41/spooning.png', NULL, '1. Excellent for improving fine motor skills\n2. This daily life activity is excellent for helping the child learn to use spoons', '<p>Introduce this material to the child as &quot;Spooning set&quot;.Ask the child to carry the material to the &quot;wet chowki&quot; or oil cloth choki.Ask him to bring a napkin from the napkin corner.Take out the bowls from the tray and place them one beside the other.Place the tray next to the chowki.One bowl contains grains/paste/liquid and the other is empty.Place the cups one beside the other. Slowly transfer the contect from one bowl to another without spilling.Once the child has mastered this with a simple spoon,you could try out varieties of spoons to give him some variety.Also increase complexity from grains to paste to liquid.Repeat the activty a couple of times and let the child continue.</p>\n', NULL, 1, NULL, '2018-08-04 12:11:11', NULL, '2018-07-11 06:12:58', NULL),
(42, 1, 9, 4, 'Month_4', 'Texture Box 1-Introdution', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/42/texture.png', NULL, 'to make the child conscious of his sense of touch by introducing various textures', '<p>Ask the child to carry the texture box his mat.Ask him to remove one tablet from each of the compartments and place them in a row randomly show the child how to place his palm on a tablet and move it gently across its surface. Ask the child to repeat the same if you feel that a child is not really noticing difference in textures much, sensitize his hand before he does this exercise. Keep a bowl of warm water and ask the child to dip his fingers into the bowl and rub dry with a towel before this expercise. This will heighten his sense of touch</p>\n', NULL, 1, NULL, '2018-08-04 12:11:12', NULL, '2018-07-11 06:44:53', NULL),
(43, 1, 8, 4, 'Month_4', 'Rolling Ball 2-Variety of balls', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/43/balancing beam.jpg', NULL, 'Tracking', '<p>Using different sized balls</p>\n', NULL, 1, NULL, '2018-08-04 12:11:12', NULL, '2018-07-11 08:16:45', NULL),
(44, 1, 9, 4, 'Month_4', 'Body Puzzle 1-Insert', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/44/body puzzle.png', NULL, '1 Improves fine motor skills\n2 improves the pencil grip', '<p>Take each piece out and put it back in using the 3 fingered grip</p>\n', NULL, 1, NULL, '2018-08-04 12:11:13', NULL, '2018-07-11 08:20:49', NULL),
(45, 1, 9, 4, 'Month_4', 'height Variation cylinders 1- Insert', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/45/height variation cylinder.png', NULL, '1 To improve fine motor skills and dexterity\n2 To help the child develop the pencil grip as a preparation for writing\n3 To help the child become conscious of dimension,especially height\n4 Start using materials gently and consciously without making noise', '<p>The block must be displayed with the cylinder with the maximum height&nbsp;towards the right.Take the child to the place of display and introduce the material as &quot;Height&nbsp;variation cylinders&quot;,ask the child carry the block to his mat.Show the child how to carry the material by grasping one side with the thumb and the other side with three fingers and the little finger supporting at the base. Ask the child to place the block on the centre the work mat preferably such that the cylinder with the maximum height&nbsp;is on the right. Take one cylinder out of the socket at a time starting from the largest. Emphasize to the child the way the cylinder in being held. This is important for future pencil holding. Hold the knob making analysis of movement by using middle finger,index and thumb. Grasp and lift the rest of the socket and place it down in front of the block. Then pick it up again and put it back in the slot noiselessly. Emphasis is on the grip and the noiselessness.</p>\n', NULL, 1, NULL, '2018-08-04 12:11:14', NULL, '2018-07-11 08:38:13', NULL),
(46, 1, 9, 4, 'Month_4', 'Tree Puzzle 1- Insert', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/46/tree puzzle.png', NULL, '1. Improves fine motor skills\n2. improves the pencil grip\n3. Gives an understanding of shape and space', '<p>Introduce the material to the child saying this a Tree Puzzle.Help the child carry the material to hhis work area. Place the board in the middle of the work mat, between you and the child. Remove each piece on the puzzle one at a time holding the between the thumb&nbsp;and the index finger. Hold it in a position that the child can see the back of the piece.Place the piece back in the slot it came from correctly without error.Preferably start from the bottom and go to the top of the tree.</p>\n', NULL, 1, NULL, '2018-08-04 12:11:16', NULL, '2018-07-11 08:46:38', NULL),
(47, 1, 9, 4, 'Month_4', 'Triangle Sorter 1-Insert', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/47/triangle sorter.png', NULL, '1. A pre writing exercise Introduction of the pencil grip\n2. Develops a sense of visual memory which indirectly aids in reading\n3 Complementary pairing\n4. Slotting', '<p>Introduce the material to the child as &quot;Triangle Sorter&quot;.Show the child how to carry it to his mat.Place the board in the middle of the work mat in front of you,with the child sitting on your left.Remove the insetc from the board one by one holding the knob between the thumb,index finger and middle finger(writing fingers).Hold the inset up so the child can see the back and put it back on the board.Repeat for 1-2 more insets and let the child take over the activity.Move the board in front of the child.</p>\n', NULL, 1, NULL, '2018-08-04 12:11:15', NULL, '2018-07-11 08:55:08', NULL),
(48, 1, 10, 4, 'Month_4', 'Pattern maze-Curves', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/48/curve.png', NULL, '. Palmar grasp\n2. Reverse strokes', '<p>Show the child how to hold the knob firmly and move it withouttaking off his hand from one end to another. When you reach the end,Show the child how to turn back and reverse,A small pause at the turns and then continuously again</p>\n', NULL, 1, NULL, '2018-08-04 12:11:18', NULL, '2018-07-11 09:03:44', NULL),
(49, 1, 10, 4, 'Month_4', 'Sandpaper Letters', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/49/sandpaper letter.png', NULL, 'To prepare the child for writing and reading. 1. To learn the sound and shape of the letters of the alphabet and become conscious of the sounds of the spoken language.\n2. To gain a muscular memory of the shape of the letters as a prelude to writing by associating the sounds with its symbols with the child\'s visual sense,acoustic sense and muscular sense', '<p>Take the child to the place of display and introduce the material.Choose the sandpaper letter that has to be presented and help the child carry it horizontally(like a tray) and place it on a table.Hold the card on the empty side with your left hand all the fingers together and the arm resting on the table. Using the two writing fingers i.e the index and middle finger of the right hand and holding the right palm as flat as possible trace the sand paper letter in the same manner as you would write as lightly as possible. When we reach the end of tracing the shape of the letter we utter the sound of the letter symbolised.Trace a couple of times and let the child take over. Allow the child to trace as long as he is interested.Once the child has learnt to say the sound. We say a few familiar ,interesting nouns which have the sound in the middle of the word. eg.If you are introducing &quot;g&quot; say &quot;tiger&quot;.day 1-a,m Day 4-b,c Day 7-o,h day 10-g,t Day 13-i,n Day 16-i,p Day 19 -v,r Day 22-s,u Day 25-d,e Day 28-f,z Day 31-w,y</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n', NULL, 1, NULL, '2018-08-04 12:11:19', NULL, '2018-07-12 06:14:36', NULL),
(50, 1, 11, 4, 'Month_4', 'Food and nutrition', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/50/download (2).jpg', NULL, 'Food and nutrition', '<p>Food and nutrition</p>\n', NULL, 1, NULL, '2018-08-04 12:11:19', NULL, '2018-07-12 06:17:11', NULL),
(51, 1, 9, 4, 'Month_4', 'Geometry Board 2- Shapes', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/51/geometery board.jpg', NULL, '1 To help the child become conscious of geometrical shapes with the help of his visual sense and kinesthetic sense.\n2. Learning the basic shapes: Triangle,square,circle\n3. Matching the inset shape with the slot and visually learning the shapes\n4. Indirectly helps the child prepare himself for writing', '<p>Place the board in the middle of the work mat, between you and the child. Remove all the insets from the board one by one holding the knob between the thumb and index finger and place them randomly around the board. Pick up any one inset with the left hand holding the knob. Hold it in a position that the child can see the back of the circle .Check the slots to see which one the inset will fit. The movements must be clear and exaggerated so that the child understands that you are trying to find the right slot. Place the inset in the slot correctly without error.One by one take each of the insets and put them back in their repective slots</p>\n', NULL, 1, NULL, '2018-08-04 12:11:20', NULL, '2018-07-12 06:35:12', NULL),
(52, 1, 10, 5, 'Month_5', 'OPA 2-Last sound', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/52/last sound.png', NULL, 'Enhance listening skills for word formation', '<p>OPA - identify the last sound all oral phonetic activities to be done in small groups of 5-6 childern Remember to maintain a list of sounds that you are introducing DO NOT pressurize any one child to answer. Let the group flow irrespective of whether you feel a child is following or not, let the child be a part of the group. Language is meant to be absorbed, and at some time,the child will start expressing Emphasize the sounds that you want the childern to identify. Eg,if you are asking for last sound of bus,say &quot;busssssss&quot; It is not a test,it is an absorption activity.</p>\n', NULL, 1, NULL, '2018-08-04 12:11:22', NULL, '2018-07-12 06:50:55', NULL),
(53, 1, 8, 5, 'Month_5', 'Churning', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/53/churning.png', NULL, '1. Excellent for improving fine motor skills\n2. Culturally stimulating making the child aware of a typical indian activity\n3. Makes the child independent and confident', '<p>Take the child to the shelf and introduce the material. This is a &quot;Churning Set&quot;. Then show the child how to carry the tray to his oil clot chowki. Ask him to bring a napkin fromthe napkin corner. Now be seated and show the child how to remove all the parts from the tray and place on the table. take the tray and place on side or below the chowki. Now tell the child to take a glass and come with you to the kitchen to collect the curd. after he has got the curd,come back to the chowki. Ask him to take the other glass and fill it with water and bring to the chowki. use good drinking water ensure curd is fresh. First place the glass fill in with curd at the top right corner of the oil cloth. Then, place the glass containing water at the left corner of the oil cloth. Place the chomboo in the middle and insert the churner and roll the churner in between the palms and create froth. Show the chid how the butter is getting formed. It is good to ask the child to serve the buttermilk to one other child and himself after he has made the buttermilk. These activities instil a sense of responsibility and also show that value his preparation and it is not just meant for storage. this sense of purpose is very important to the child.</p>\n', NULL, 1, NULL, '2018-08-04 12:11:23', NULL, '2018-07-12 07:07:39', NULL),
(54, 1, 9, 5, 'Month_5', 'Width Stairs 1 - Stacking in box', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/54/width stair.png', NULL, '1. To  improve eye hand co-ordination\n2. To lay a foundation for dimensions,mainly width', '<p>Ask the child to have a work mat at the place of presentation. Introduce the width stairs and show him how to carry it to his mat. Place the box on one side and take out all the prisms one by one from smallest to largest. Place the prisms randomly around on the mat. Now show the child how you are visually examining and finding the widest piece and placing it back in the box, then the next so on. Let the child continue with the activity.</p>\n', NULL, 1, NULL, '2018-08-04 12:11:23', NULL, '2018-07-12 07:15:02', NULL),
(55, 1, 9, 5, 'Month_5', 'Counting Rings 1- Stacking ', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/55/counting rings.png', NULL, '1. To improve fine motor skills through stacking\n2. Lay a foundation for quantity', '<p>Introduce the material as&quot;Counting rings&quot; to the child Show the child how to carry the material to his mat. Place the material in the middle of the mat with the smallest (1) on the left.Show the child how to remove the ring from the rod by removing it and holding it firmly between 2 fingers. Start from smallest and remove all the rings slowly one by one and place them ramdomly around the base .Ask the child if he would like to remove the rest. Sort the rings on colour and show the child how to out back the rings based on colour. Since the child does not know colour yet, he may put it back randomly which is fine. then show the child how to put the rings back one at a time.</p>\n', NULL, 1, NULL, '2018-08-04 12:11:24', NULL, '2018-07-12 07:30:50', NULL),
(56, 1, 9, 5, 'Month_5', 'Rough and Smooth Board 2 - Blindfold', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/56/rough and smooth.jpg', NULL, '1. To introduce the sensation of rough and smooth without visual aid.\n2. Make the child more aware of his sense of touch', '<p>Ask the child to bring the board to his table. Place a blindflod next to the board and ask him/her if he would like to play a game with a blindflod. First tie the blindfold around your own eyes and show how to do the activity esle it can lead to panic. Tie the blindfold around the child&#39;s eyes and take her/his palm and place it on the rough side. Ask the child to identify the texture. Similarly for the smooth Then ask the child to keep placing his palm randomly on either side and ask to identify &quot;Rough&quot; or &quot;Smooth&quot;. Turn the board around while the child is doing this so that the texture is not always on the same side.</p>\n', NULL, 1, NULL, '2018-07-12 10:19:18', NULL, '2018-07-12 10:19:18', NULL),
(57, 1, 9, 5, 'Month_5', 'Circle Sorter 2 -Size variation', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/57/Circle sorter.png', NULL, '1. Indirectly helps the child prepare himself for writing by developing wrist movement.\n2. A pre-writing exercise introduction of the pencil grip\n3. to help the child analyse the size by comparing the inset with the slot', '<p>.Place the board in the middle of the work mat in front of you,with the child sitting on your left.Remove the circles&nbsp;from the board one by one holding the knob between the thumb,index finger and middle finger(writing fingers) and place them randomly around the board.Pick up any one circle with the left hand holding the knob.Hold it in a position that the child can see the back of the circle. Check the slots to see which one the inset will fit. The movements must be clear and exaggerated so that&nbsp;the child understands that you are trying to find the right slot. Place the circle back in the slot it came from correctly without error. One by one take each of the circles insets and put them back in their repective slots.&nbsp;</p>\n', NULL, 1, NULL, '2018-08-04 12:11:25', NULL, '2018-07-12 11:36:29', NULL),
(58, 1, 9, 5, 'Month_5', 'Counting Jigsaw 1-Jigsaw', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/58/jigsaw.png', NULL, '1. Jigsaw Puzzles build spatial awareness, and logical reasoning.\n2. Complementary pairing\n3. Exposure to numbers and quantity', '<p>Introduce the material to the child and show him how to carry the box to his mat. Then take all the pieces out of the box one at a time with gentle movements and place them noiselessly on the mat. DO NOT overturn the box or take out several pieces at a time. Show the child how one part matches with only one other card cut similarly and form 10 jigsaw puzzles. This activity is like a simple 2-piece puzzle</p>\n', NULL, 1, NULL, '2018-08-04 12:11:26', NULL, '2018-07-13 10:19:37', NULL),
(59, 1, 9, 5, 'Month_5', 'Jungle Train 1-Names', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/59/jungle train.png', NULL, 'Names of wild animals', '<p>Introducing wild animals names</p>\n', NULL, 1, NULL, '2018-08-04 12:11:26', NULL, '2018-07-13 11:15:52', NULL),
(60, 1, 10, 5, 'Month_5', 'Pattern Maze _ Pincer,Curves', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/60/pattern maze curve.png', NULL, '1.Pincer grip\n2 Curved Strokes', '<p>Show the child how to hold the knob firmly and move it without taking off his hand from one end to another continuously</p>\n', NULL, 1, NULL, '2018-08-04 12:11:27', NULL, '2018-07-13 11:19:11', NULL),
(61, 1, 8, 5, 'Month_5', 'Rolling Pins', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/61/download (3).jpg', NULL, 'Rolling Pins', '<p>Rolling Pin</p>\n', NULL, 1, NULL, '2018-08-04 12:11:28', NULL, '2018-07-13 11:22:02', NULL),
(62, 1, 9, 5, 'Month_5', 'Pairing Colour Rods 2- Colour Pairing', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/62/colour rods.png', NULL, 'Introduction to colour as a property\nPairing objects with same colour', '<p>Ask the child to carry the material to his place of work. One by one show the child how to remove all the rods and place randomly on the mat. Take out any one rod of a distinct colour(like red) and keep it in a corner. Now show the child that you are visually examining each of the remaining rods to find its partner. Place the partner rod next to the original. Similarly create pairs of rods of all colours and place in pairs on the mat. Now take each pair one by one. First take the longer one and place it on the slot behind and place the shorter one on the slot in front OR Remove only the shorter rods. Leave the longer one on the base and ask the child to find each of the corresponding pairs.</p>\n', NULL, 1, NULL, '2018-08-04 12:11:28', NULL, '2018-07-13 11:30:40', NULL),
(63, 1, 9, 5, 'Month_5', 'Number names 1 to 10', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/63/number.jpg', NULL, 'Learn the number names', '<p>Learn the number names</p>\n', NULL, 1, NULL, '2018-08-04 12:11:29', NULL, '2018-07-13 11:33:06', NULL),
(64, 1, 9, 5, 'Month_5', 'Human Evolution 2-Sizes', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/64/Untitled.jpg', NULL, 'Improves pencil grip, and lays the foundation for complex jigsaws', '<p>Ask the child carry the material to his mat.Show him how to take all the pieces out, and place randomly around the board. Then take any one piece, and show the child how you are visually examining to see where it will fit and put it in the right place.</p>\n', NULL, 1, NULL, '2018-08-04 12:11:30', NULL, '2018-07-17 07:14:35', NULL),
(65, 1, 9, 5, 'Month_5', 'Body Puzzle 2-Names of Parts', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/65/body puzzle.png', NULL, 'Identify parts of the body', '<p>Take each piece out and put it back in. Give a name lesson for the various parts.&nbsp;</p>\n', NULL, 1, NULL, '2018-08-04 12:11:31', NULL, '2018-07-18 07:18:56', NULL),
(66, 1, 8, 5, 'Month_5', 'Big Button Sewing', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/66/big button.png', NULL, 'Big Button Sewing', '<p>Sewing</p>\n', NULL, 1, NULL, '2018-08-04 12:11:31', NULL, '2018-07-18 07:22:02', NULL),
(67, 1, 11, 5, 'Month_5', 'theme_Culture', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/67/new logo-1 (1)-1.png', NULL, 'Culture', '<p>Culture</p>\n', NULL, 1, NULL, '2018-08-04 12:11:32', NULL, '2018-07-18 07:24:28', NULL),
(68, 1, 8, 6, 'Month_6', 'Pouring grains', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/68/pouring grains.jpg', NULL, '1.Excellent for improving fine motor skills 2. Teaches the child to pour from one container to another 3.Very important daily life skill -pouring solids', '<p>Take the child to the shelf and introduce the material. This is the &quot;Pouring Grains set&quot; .Ask&nbsp;the child to carry it to his oil cloth chowKi. After he has placed the set down, ask&nbsp;him to bring a napkin. Then be seated and taKe out all component from the tray and place on the chowKi. Keep the tray on the side or below chowKi. Now arrange the 3 small chombus on one side.Ask&nbsp;the child to take the big chombu and bring some grains in it. Place it on the other side. Pour from the bigger jug to the smaller jugs without spilling.Pour till the lower rim of the jug.Show the child the left over grains, so that he understands that not all the grains will fit into the three smaller matkas.In case the child spills grains on the table while pouring,show him how to picK them up and put it back&nbsp;in the bigger jug.</p>\n', NULL, 1, NULL, '2018-08-04 12:11:36', NULL, '2018-07-19 15:06:24', NULL),
(69, 1, 8, 6, 'Month_6', 'Sandalwood Paste', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/69/sandal.jpg', NULL, '1.Excellent for improving fine motor skills 2. Culturally stimulating . making the child aware of a traditional Indian activity\n', '<p>Introduce this material as &quot;Chandan Ser Show the child how to carry the materialto his oil cloth chowki, and place it on the centre of the chowki. After the child to bring a napkin.&nbsp; Then be seated and take out allcomponents from the tray and place on the chowki. Keep the tray on the side or below chowki. Place the base rightin front on the centre.Ask the child to bring some water in the &quot;Panchapatram&quot; Use the &quot;Udraneeyam&quot;to put some water on the base. Show the child how to move the sandalwood piece in circles on the base applying pressure so that the paste is generated.Once sufficient pasteis generated. collect it and put rtin the small copper cup.Let the child take over the activity</p>\n', NULL, 1, NULL, '2018-08-04 12:11:36', NULL, '2018-07-19 15:09:17', NULL),
(70, 1, 9, 6, 'Month_6', 'Geometry Board 3-Name Lesson', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/70/geometery board.jpg', NULL, 'Learn the names of the shapes- circle, square and triangle', '<p>1.AsK the child to take the material to his worK place. Then take out one each of the circle,square and triangle.One by one give names for all 3 objects. Standard Name lesson.</p>\n', NULL, 1, NULL, '2018-08-04 12:11:37', NULL, '2018-07-19 15:12:01', NULL),
(71, 1, 9, 6, 'Month_6', 'Height Stairs 1- Stacking', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/71/height stairs.jpg', NULL, '1.Eye- Hand Coordination 2. To help the child develop and control his prehensile co­ ordination i.e. capacity to judge the dimensions 3.To visualse from memory and buid', '<p>Ask the child to have a work mat at the place of presentation. Take him to the place of shelf and introduce the materialto him. Help the child carry the material one at a time to&nbsp;&nbsp; the work mat. The prisms are all kept miXed up on the mat. Clear the space on the mat to build the stairs. The stairs is built diagonally so that the child can see all the three dimensions.Find the thickest prism. Help the child understand this with your movements. Place it farthest away. Find the next prism,lift it and Keep it close to the isolated prism and then hold the two ends with four fingers and bring it together. Part of the palm is on the previous prism so that it does not move. This also ensures that the child understands that all the prisms share some common dimensions and it also helps him observe the differences. Continue wtth the presentation until the child takes over. If the chid wants to repeat the activity, tell him to keep all the prisms mixed up and build the stairs. The children stack the stairs as they remember seeing tt. This kind of activtty helps them observe and register things in their memory. Chidren may choose to explore once the activity has been presented. (as shown in the pictures)This is not a presentat on,but exploration by the child</p>\n', NULL, 1, NULL, '2018-08-04 12:11:38', NULL, '2018-07-19 15:14:40', NULL),
(72, 1, 9, 6, 'Month_6', 'Press Button Frame', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/72/press button.jpg', NULL, '1.This pract cal life activity helps the chid figure out now to fasten and unfasten press buttons,making the chid independent 2. Excellent for dexterity\n', '<p>Unsnapping 1. Demonstrate by placingleft index finger and middle fingers under right flap in each&nbsp;side of tne snap.2. With&nbsp;right thumb under and first two fingers over nap, hold and pull up and back. 3. Open snaps this way. 4.Open fabric.5. Close fabric.</p>\n\n<p>Snapping 1.Place left fingers on each&nbsp;side of button snap, 2. Hold right nap with right thumb,index, and middle fingers near snap, and point out the little pin which will fit into the bottom snap. 3.Fit pin into the bottom snap and press with right index finger. 4.Repeat for remaining snaps</p>\n', NULL, 1, NULL, '2018-08-04 12:11:38', NULL, '2018-07-19 15:35:21', NULL),
(73, 1, 10, 6, 'Month_6', 'WW Sizes', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/73/www.jpg', NULL, '1.Help the teacher assess if the child has understood sizes.2. Developing wrist\nmovement\n', '<p>Arrange all the pieces randomly next to the board Keep all these arranged on the mat before you invrte the child to worK.AsK the child to examine visually each piece and place right&nbsp;in the correct slot. Assessment worksheets are always pre-arranged on the mat in a special place in the room assigned solely for Assessment. These worksheets are designed to assess if the chid has interacted sufficiently with specific material and has subsequently acquired the associated skill.</p>\n', NULL, 1, NULL, '2018-07-19 15:38:22', NULL, '2018-07-19 15:38:22', NULL),
(74, 1, 9, 6, 'Month_6', 'Rectangle Sorter 2-Size Variation', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/74/rectangular sorter.png', NULL, '1.Indirectly helps the child prepare himself for writing by developing wrist movement 2.A pre-writing exercise Introduction of the pencil grip 3.To help the child analyse the size by comparing the inset with the slot\n', '<p>Place the board in the middle of the worK mat,between you and the child. Remove all the rectangles from the board one by one holding the knob between the thumb and index&nbsp; finger (writing fingers)and place them randomly around the board. Pick up any one rectangle with the left hand holding the Knob. Hold it in a position that the child can see the bacK of the rectangle. Check the slots to see which one the inset will fit. The movements must be clear and exaggerated so that the child understands that you are trying to find the right slot. Place the rectangle back in the slot it came from correctly without error. One by&nbsp; one taKe each of the rectangle insets and put them bacK in their respective slots.</p>\n', NULL, 1, NULL, '2018-08-04 12:11:40', NULL, '2018-07-19 15:42:06', NULL);
INSERT INTO `t_activities` (`activity_id`, `standard_id`, `subject_id`, `display_order`, `month`, `name`, `image`, `video`, `objective`, `Description`, `tags`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`, `Branch_id`) VALUES
(75, 1, 10, 6, 'Month_6', 'Flags Pairing 1-Pairing', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/75/flag.jpg', NULL, 'Identify and pairing with visual sense', '<p>Introduce the material as &quot;Flags Pairing&quot; AsK the child to take the material to the mat.Place the box in the centre and take out all the flags and place randomly on the mat. Move the box to one corner of the mat to maKe space. Once the flags are spread out, show the child how to take one at a time. Place it on top left corner and find its corresponding pair.Place it next to the first one.Pair a couple more and arrange in two columns as shown. Let the child taKe <em>o</em><em>ver</em><em>.</em></p>\n', NULL, 1, NULL, '2018-08-04 12:11:40', NULL, '2018-07-19 15:45:49', NULL),
(76, 1, 10, 6, 'Month_6', 'Pattern Maze -Slope,Pincer', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/76/inclined.jpg', NULL, '1.Pincer Grip 2. Sloping strokes', '<p>Show the child how to hold the knob firmly and <em>m</em><em>o</em><em>ve </em>it without taking off his hand from one end to another. A small pause at the top of the V, and then continuously again.</p>\n', NULL, 1, NULL, '2018-08-04 12:11:41', NULL, '2018-07-19 15:49:25', NULL),
(77, 1, 9, 6, 'Month_6', 'Diameter variation Cylinders 2 - Pair', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/77/diameter variation cylinder.png', NULL, 'Complementary Pairing helps the child develop his abiity to judge dimensions especially diameter', '<p>Ask the child to carry the block to his mat. Ask the child to place the block on the centre the work mat preferably such that the cylinder with the maximum diameter is on the right. Take all the cylinders out of the socket one by one starting from the tallest. Place all the cylinders randomly on the mat,Keeping them all miXed up. Point to any one cylinder randomly and show the child how you are visually judging and place it in the right slot.Similarly now ask the child to randomly pick up pieces and put them noiselessly in the right slots.Show the child how we compare the height of the base and all the cylinders to check if all are in the right positions</p>\n', NULL, 1, NULL, '2018-08-04 12:11:41', NULL, '2018-07-19 15:51:16', NULL),
(78, 1, 15, 6, 'Month_6', 'Balancing beam 2 - Single', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/78/Balancing beam parallel.png', NULL, '1.To improve gross motor sKills 2. Learning to balance on a walking beam', '<p>Just place the beams one after the other in along narrow line.AsK each of the children to walK on the beam from one end to the other.</p>\n', NULL, 1, NULL, '2018-08-04 12:11:42', NULL, '2018-07-19 15:53:30', NULL),
(79, 1, 9, 6, 'Month_6', 'Flower Stacker 0 - Stacking', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/79/flower stacker.jpg', NULL, 'Stacking', '<p>Stacking</p>\n', NULL, 1, NULL, '2018-08-04 12:11:43', NULL, '2018-07-19 15:56:04', NULL),
(80, 1, 9, 6, 'Month_6', 'Geometric Tiles 2-Patterns', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/80/geometeric tiles.png', NULL, '1.To improve fine motor skills\n2. to lay a foundation for understanding 2D shapes and tiling\n3. Indirectly leads to association with areas', '<p>Give the child a few patterns that are simple from the stack . Ask her/him to carry the Geometric tiles to the mat/place of work. Show how to select pieces corresponding to the pattern and place them on the pattern</p>\n', NULL, 1, NULL, '2018-08-04 12:11:43', NULL, '2018-07-19 16:41:31', NULL),
(81, 1, 11, 6, 'Month_6', 'Animal Kingdom', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/81/new logo-1 (1)-1.png', NULL, 'Animal Kingdom', '<p>Animal Kingdom</p>\n', NULL, 1, NULL, '2018-08-04 12:11:44', NULL, '2018-07-19 17:50:09', NULL),
(82, 1, 10, 7, 'Month_7', 'OPA 3 - First and Last Sound 1', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/82/oral LS.png', NULL, 'Enhance listening skills for word formation', '<p>Oral Phonetic Analysis - Identify First and Last Sound Different children</p>\n', NULL, 1, NULL, '2018-08-04 12:11:46', NULL, '2018-07-20 06:36:45', NULL),
(83, 1, 9, 7, 'Month_7', 'Length Stairs 1 - Arrangement', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/83/lenght stair.png', NULL, '1.1.	To maKe the child conscious of dimensions.2. Improving Gross Motor SKills and balance 3.To help the child experience unit of measurements of length 4.Inter­ changeability of dimensions 5. To lay a foundation for arithmetic activity - number system 1-10', '<p>Ask the child to have a work mat at the place of presentation. TaKe the child to the place of display and introduce the materials &quot;length stairs&quot;.Show the child how to carry the rods one at a time horiZontally to the worK mat. The child has to be shown how to hold the rod along the edges with 2 fingers of each hand.Show the child how to place the rods randomly on the mat. We maKe some space at the centre of the mat. We show the child with visual movements how to identify the longest rod.Place it on theleft top corner. Now, find the nextlongest rod, and place it just below the isolated rod so that their left ends are aligned. One by one stacK all the rods, one below the others wrth their end aligned at one side. We asK the child to feel the ends of the rods and understand the variation.After the activity,<em>we </em>show the child how to put it bacK in its place one by one. starting from the longest.It is important that the child put it bacK in the same order. This reinforces his concepts of lengths. Tal&lt;ing the rod from horizontal position and placing it vertically makes him conscious of inter-changeability of dimension depending on which angle you are looKing at an object. While putting bacK the rods in the stand, we observe thatlength becomes the height</p>\n', NULL, 1, NULL, '2018-08-04 12:11:46', NULL, '2018-07-20 06:56:30', NULL),
(84, 1, 9, 7, 'Month_7', 'Height Stairs 2 - Name Lesson', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/84/height stairs.jpg', NULL, 'To introduce the terms taller. shortest etc', '<p>Ask tne child to build a stairs sideways.Tnen take out tne tallest piece and say &quot;Tall&#39;. Take the widest piece and say &quot;Snort&quot;. Do a 3 period Namelesson. Later do tne comparative and superlative name lessons also</p>\n', NULL, 1, NULL, '2018-08-04 12:11:47', NULL, '2018-07-20 06:59:09', NULL),
(85, 1, 9, 7, 'Month_7', 'Height Variation cylinders 2 - Pair', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/85/height variation cylinder.png', NULL, 'Complementary Pairing helps the child develop his ablity to judge dimensions especially height\n', '<p>Ask the child to carry the block to his mat. Ask the child to place the block on the centre the work mat preferably such that the cylinder with the maximum heightis on the right. Take all the cylinders out of the socket one by one starting from the tallest. Place all the cylinders randomly on the mat,Keeping them all miXed up. Point to any one cylinder randomly and show the child how you are visually judging and place it in the right slot.</p>\n\n<p>Similarly now ask the child to randomly pick up pieces and put them noiselessly in the right slots.Show the child how we compare the height of the base and all the cylinders to check if all are in the right positions.</p>\n', NULL, 1, NULL, '2018-08-04 12:11:48', NULL, '2018-07-20 07:04:22', NULL),
(86, 1, 9, 7, 'Month_7', 'Pairing Colour Rods 3 - Names of Colours', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/86/colour rods.png', NULL, '1.To maKe the child conscious of all 1O colours. 2. To help the child identify the colour by its name\n', '<p>Give a name lesson for the colours. Day 1- Red,Blue.Day 4- Yellow,Purple Day 7 -</p>\n\n<p>Orange,Green Day 10- Blacl&lt;, White Day 13 - Brown, grey</p>\n', NULL, 1, NULL, '2018-08-04 12:11:48', NULL, '2018-07-20 07:06:15', NULL),
(87, 1, 9, 7, 'Month_7', 'Threading Quadrilaterals 1 - Threading', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/87/tiles.jpg', NULL, '1. To improving fine motor skills with co-ordination 2. To build concentration', '<p>Introduce the materials &quot;Threading quadrilaterals&#39;.Asl&lt; the child to select any one of the boards.Have the shoelaces in the set displayed next to the boardin a small bowl. Asl&lt; the child to tal&lt;e one lace to his place of work. Place the boardin the centre of the <em>mat&nbsp;</em>chowki. Then show the child how to tal&lt;e the board with theleft hand firmly. Show him how to hold the lace firmly With his right hand a little away from the pointed end. Push the thread through the hole a bit from the underside and then bring your right hand forward and pull firmly till the !&lt;notis reached lil&lt;e stitching.Show the child how the thread can be movedin and out of holes lil&lt;e a needle.</p>\n', NULL, 1, NULL, '2018-07-20 07:22:35', NULL, '2018-07-20 07:22:35', NULL),
(88, 1, 9, 7, 'Month_7', 'Tracing numbers', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/88/tracing picture.jpg', NULL, '1.Associate the number name with the shape 2.Prelude to reading and writing numbers', '<p>TaKe the child to the place of display andintroduce the material as sandpaper numbers.</p>\n\n<p>Introduce the tracing in the following order.Day 1 - 1,2 Day 3 - 3, 4 Day 6 - 5, 6 Day 9 - 7, 8 Day 11- 9 Day 13 - o Hold the card on the empty side With your ren hand all the fingers together and the arm resting on the table. Using the two writing fingers i.e. the index and middle finger of the right hand and holding the right palm as flat as possible trace the sand paper numberin the same manner as you would wrtte as lightly as possible.When <em>we</em><em>&nbsp; </em>reach the end of tracing the shape of the letter <em>w</em><em>e </em>say the number one or &#39;&#39;tWo&#39;</p>\n', NULL, 1, NULL, '2018-08-04 12:11:50', NULL, '2018-07-20 07:33:00', NULL),
(89, 1, 8, 7, 'Month_7', 'Cloth Pegging 1 - Hang Clothes', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/89/download (1).jpg', NULL, 'Pegging, hanging clothes\n', '<p>TaKe the pegs to the place where the clothes line is placed,and show the child how to hang clothes and peg.</p>\n', NULL, 1, NULL, '2018-08-04 12:11:50', NULL, '2018-07-20 08:58:28', NULL),
(90, 1, 9, 7, 'Month_7', 'Grip and Match 2- Pairing', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/90/grip n match.jpg', NULL, '.To enhance the sterognostic understanding 2.Visual pairing', '<p>Ask the child to carry the material to nis place of work. Take out any one piece from tne centre,and run your palms around it to feel the snape . snow the child how to fll&lt; it on any one arm of the box. Now visually inspect tne others and check wnicn one is tne corresponding pair Take that out and place it on the adjacent hole to the first. Similarly ask the child to pair all with tne help of his sterognostic as well as visual sense</p>\n', NULL, 1, NULL, '2018-08-04 12:11:51', NULL, '2018-07-20 09:01:07', NULL),
(92, 1, 10, 7, 'Month_7', 'Pattern Maze -Pincer,straight', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/92/straight mazze.png', NULL, '1.Pincer Grip 2. To develop hand movements for Straight (Horizontal and vertical) strokes', '<p>Show the child how to hold the Knob firmly and <em>m</em><em>o</em><em>ve </em>it without taKing off his hand from one</p>\n\n<p>end to another. A small pause at the turns. and then continuously again.</p>\n', NULL, 1, NULL, '2018-08-04 12:11:52', NULL, '2018-07-22 14:31:28', NULL),
(93, 1, 9, 7, 'Month_7', 'Quantity Box 1 - Colours', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/93/fixed quantity.jpg', NULL, '1.lntroduce on to loose quantity 2. TaKing the sensorial into arithmetic 3. Colour sorting', '<p>Place the quantity box in front of the chid. Use your index finger and your thumb to remove each rod. Place the rods randomly around the box. Then sort all the rods based on the colour.After all the sorting and grouping is done,start putting the rods bacK in the box. Start with 1. Put the whrte rod back. Base colours are given on the bottom.Put the rods one by one into the corresponding compartment.</p>\n', NULL, 1, NULL, '2018-08-04 12:11:52', NULL, '2018-07-22 14:36:19', NULL),
(94, 1, 8, 7, 'Month_7', 'Sieving', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/94/sieve.jpg', NULL, '1.Excellent for improving fine motor skills. 2.It teaches the child how to sieve and\nseparate 2 different types of solids\n', '<p>Introduce this material to the child as &quot;Sieving set&quot;.AsK the child to carry the material to the &#39;&#39;Wet chowki&quot; or oilcloth chowki. AsK him to bring a napKin from the napkin comer. Take out the components from the tray and place them one beside the other.Place the tray next to the chowKi. Place the large bowl into which the sieving needs to be done in the centre of the chowki. Place the sieve on top of that. Now ask the child to mix any two grains (Eg&nbsp; rava and channa) in the bowl. Show him how to pour the miXture into the sieve and gently sieve. Point to the rava falling into the bowl below. Once all the miX1ure is sieved,show the child how to pour the channa into the bowl and the sieved grain (rava) into a box. Let the child continue sieving</p>\n', NULL, 1, NULL, '2018-08-04 12:11:53', NULL, '2018-07-22 14:55:36', NULL),
(95, 1, 15, 7, 'Month_7', 'Helper Puppets', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/95/new logo-1 (1)-1.png', NULL, 'Puppets', '<p>Puppet</p>\n', NULL, 1, NULL, '2018-08-04 12:11:54', NULL, '2018-07-22 14:59:51', NULL),
(96, 1, 10, 7, 'Month_7', 'Metal Insets', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/96/metal inset.jpg', NULL, 'Metal Insets', '<p>Metal Insets</p>\n', NULL, 1, NULL, '2018-08-04 12:11:54', NULL, '2018-07-22 15:03:17', NULL),
(97, 1, 8, 7, 'Month_7', 'Opening and Closing 2 - All', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/97/open n close.png', NULL, 'Self help', '<p>Show how to open and close all of them 2 at a time</p>\n', NULL, 1, NULL, '2018-08-04 12:11:55', NULL, '2018-07-22 15:05:06', NULL),
(98, 1, 11, 7, 'Month_7', 'Plant Kingdom ', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/98/download.jpg', NULL, 'Plant Kingdom ', '<p>Plant Kingdom</p>\n', NULL, 1, NULL, '2018-08-04 12:11:55', NULL, '2018-07-22 15:05:58', NULL),
(99, 1, 9, 7, 'Month_7', 'Triang le Sorter 2 - Shape Variation', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/99/triangle sorter.png', NULL, '1.Indirectly helps the child prepare himself for writing by developing wrist movement 2.A\npre-writing exercise Introduction of the pencil grip 3.To help the child analyse the size by comparing the inset with the slot\n', '<p>Place the boardin the middle of the worK mat,between you and the child. Remove all the triangles from the board one by one holding the Knob between the thumb and index finger (writing fingers)and place them randomly around the board. PicK up any one triangle with the left hand holding the Knob. Holditin a position that the child can see the bacK of the triangle.Check the slots to see which one the inset will fit. The movements must be clear and exaggerated so that the child understands that you are trying to find the right slot. Place the triangle bacK in the slot it came from correctly without error. One by one taKe</p>\n\n<p>each of the triangleinsets and put them bacK in their respective slots.</p>\n', NULL, 1, NULL, '2018-08-04 12:11:56', NULL, '2018-07-22 15:07:49', NULL),
(100, 1, 10, 7, 'Month_7', 'Sandpaper Letters 2 - Sounds in a word', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/100/sandpaper letter.png', NULL, 'To prepare the child for writing and reading: 1. To learn tne sound and shape of theletters\nof the alphabet, and become conscious of the sounds of the spol<en language. 2. To start the \"spelling• process of identifying tne sounds that a wordis composed of\n', '<p>By now the child will be very familiar with at least 10 sounds from the sequence. The first&nbsp;&nbsp;&nbsp; 1o sounds are:c m a t p Io g b h Give pictures containing these sounds lil&lt;e tap, cat, map, and asl&lt; the child to identify the sounds Asl&lt; tnem to then point to the corresponding sandpaperletter. This is again a small group activity so, one of the children is usually sure to answer</p>\n', NULL, 1, NULL, '2018-08-04 12:11:57', NULL, '2018-07-22 15:10:01', NULL),
(101, 1, 9, 8, 'Month_8', 'Width Stairs 2 - Arrangement', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/101/width stair.png', NULL, '1.To improve eye-hand co-ordination 2.To lay a foundation for Width,dimensions visually\nand With hands\n', '<p>Ask the child to have a work mat at the place of presentation.Ask him to take the Width Stairs to the work mat. Take the prisms out one by one and place them randomly on the&nbsp; mat. Clear tne space on tne mat to build the stairs.Find the widest one and place it at the bottom.One by one find tne next one and build a sort of pyramid with the back sides aligned Leave the child once <em>you </em>are sure that he has understood the nature of the activity. Once tne child has built a pyramid,he could work in any direction with the material. He&nbsp; could buid a train,a caterpillar or anything he chooses.</p>\n', NULL, 1, NULL, '2018-08-04 12:11:59', NULL, '2018-07-22 17:08:08', NULL),
(102, 1, 9, 8, 'Month_8', 'Flower Stacker 1 - Sort and Stack', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/102/flower stacker.jpg', NULL, '1.Sorting by shape 2. Fine motor sKills and dexterity 3. Logicalanalysis 4. StacKing', '<p>Introduce tne materialto the child, saying tnis is a nower stacKer and asK him to carry it to his place of worK. Place rt in the centre with 1 on theleft side and 5 on the right. snow the child how to taKe out all tne pieces out of the rods one at a time, using 3 fingers. For the large pieces, tne child may need to use all his fingers. Place tne pieces randomly around the base. After all pieces nave been removed, show tne child now to sort based on snape. After sorting, put bacK tne pieces any one set at a time,preferably from smallest to largest</p>\n', NULL, 1, NULL, '2018-08-04 12:11:59', NULL, '2018-07-22 17:10:03', NULL),
(103, 1, 9, 8, 'Month_8', 'Trapezoid Tower 1 - Stacking', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/103/trapezodial.png', NULL, '1.Eye- Hand Co-ordination 2. To help the child develop his capacity to judge the dimensions 3. To introduce area variations', '<p>Ask the child to have a work mat ready at his place of work. Take him to the display and introduce the material saying this is a Trapezoid Tower. Ask him to carry the trapezoid tower one by one to his mat. We ask the child to place the pieces randomly spread on the mat. We show the child how to find the largest piece and placeit at the bottom.Then <em>we </em>find the nextlargest piece and place it on top of the first and so on. Help the child understand this with your movements and gestures.We show the child how thereis no&nbsp;&nbsp; gap on any side between the first and second pieces. (This is a clear indication that the right piece has been placed) The top most piece ends in a point We show the child how to build a pyramid thus.After the child has worked with the material. show him how to deassemble the pyramid and place the pieces back ftat on the mat. The child must now take the pieces one by one back to the display starting from thelargest. It is advisable to place the trapezoid tower at a low levelin the place of display,otherwise the pieces may&nbsp; fall down when the child is putting it back in the shelf.</p>\n', NULL, 1, NULL, '2018-08-04 12:12:00', NULL, '2018-07-22 17:20:33', NULL),
(104, 1, 8, 8, 'Month_8', 'Hook Frame', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/104/button.jpg', NULL, '1.To improve Eye-hand Co-ordination and improve Dexterity 2. To mal<e the child\nIndependent. 3. Important daily life activity - hool<s\n', '<p>Hool&lt;ing 1. Put the naps of cloth one on topof the other 2. Hold the eye with left index finger. 3.Use the fingers of the right hand to tal&lt;e the top most hooK and place over the eye. 4. Pull bacK gently to show the child that it has been fastened. 5.Repeat with remaining hooKs.UnhooKing 1. Pullthe hooK and eye closer together to loosen the button. 2.Use the left index finger to push the eye, while simultaneously with the right hand,pull&nbsp; the hooK out of the eye 3. Start from the top most button and unfasten all of them one by one. 4.Open both the naps to show the child that the hooKs have been unfastened.</p>\n', NULL, 1, NULL, '2018-08-04 12:12:00', NULL, '2018-07-22 17:22:45', NULL),
(105, 1, 8, 8, 'Month_8', 'Lock Box Small', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/105/lock box.png', NULL, 'Lock Box Small', '<p>Show the child how to fasten <em>I </em>unfasten each of the mechanisms. First time -2 ,then other</p>\n\n<p>3</p>\n', NULL, 1, NULL, '2018-08-04 12:12:01', NULL, '2018-07-22 17:25:18', NULL),
(106, 1, 10, 8, 'Month_8', ': Pattern Maze - Pincer, Rev Curves', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/106/curve.png', NULL, '1.Pincer Grip 2. To develop hand movements for Reverse strokes', '<p>Show the child how to hold the Knob firmly and <em>m</em><em>o</em><em>ve </em>it without taking off his hand from one</p>\n\n<p>end to another. When you reach the end,show the child how to turn bacl&lt; and reverse. A small pause at the turns, and then continuously again.</p>\n', NULL, 1, NULL, '2018-08-04 12:12:02', NULL, '2018-07-22 17:27:17', NULL),
(107, 1, 9, 8, 'Month_8', 'Fixed Qty Prism 1 - Arrangement', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/107/fixed quantity1.png', NULL, '1.To help the child experience unit of measurements oflength 2.To lay a foundation for\narithmetic activity especially with regard to number system 1-10 3. Reinforce the sequence of increasing/ decreasing lengths\n', '<p>Introduce the materialto the child as &quot;Fixed Quantity&bull;. Show him how to carry the box to his mat horizontally like a tray. Now tal&lt;e out all the prisms and lay them randomly on the mat. Move the box away and clear place in the topleft corner. Show the child with your movements that you arelooKing for the longest rod, and place it in the topleft corner. Then left align all the rods, and one by one arrange in descending order of length. Allow the child to tal&lt;e over whenever heis ready. Show him how to put bacl&lt; in the box when he is done, again fromlongest to shortest.</p>\n', NULL, 1, NULL, '2018-08-06 08:42:12', NULL, '2018-08-06 08:42:05', NULL),
(108, 1, 9, 8, 'Month_8', 'Geometry Shape Cards 1 - With Board', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/108/geometeric .png.jpg', NULL, '1.Match the inset with the shape card.2. To move from concrete shapes to abstract shapes', '<p>Take the child to the place of display andintroduce the materialto the child as, &quot;thisis a&nbsp;&nbsp; box of geometric shape cards&#39;.Ask him to carry the box to his place of work. Show the child how to take out all the cards one by one. using 2 fingers and place it on the mat in 3 rows. Full figures in one line, thickin one line and half figures in one line. Now ask the child&nbsp; to bring the Geometry Board. After the child brings the board to the work mat,show him to remove any one of the insets by the Knob and trace the outline and find the matching card for the inset. Place it on the corresponding card. Help the child understand that <em>we </em>are comparing the shapes and place the inset on the card and make sure that no red colour is seen outside the inset. Draw the attention of the child to the fact that no red colour of the cardis seen. Show him how to hold the cards with both the hands in such a manner that&nbsp; the cards don&#39;t <em>m</em><em>o</em><em>ve </em>or shillwhile placing the inset. Cont nue until the child takes <em>o</em><em>ver</em><em> </em>from you.</p>\n', NULL, 1, NULL, '2018-07-22 17:37:23', NULL, '2018-07-22 17:37:23', NULL),
(109, 1, 10, 8, 'Month_8', ': OPA 4 - First and Last Sound 2', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/109/oral LS.png', NULL, 'Enhance listening sl<ills for word formation', '<p>Oral Phonetic Analysis - Identify First and Last Sound - Same child</p>\n', NULL, 1, NULL, '2018-08-04 12:12:05', NULL, '2018-07-22 17:42:44', NULL),
(110, 1, 10, 8, 'Month_8', 'Vowel cards 1- Pictures', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/110/vowel card.jpg', NULL, '1.To emphasize the sound of the vowels in 3 letter words 2. Introduction to reading 3.\nPhonetic awareness\n', '<p>Take the child to the shelf and introduce the materialas &quot;VowelCards&#39;. Show him how to</p>\n\n<p>carry the materialto his table.Now place the box in the centre and take out any one set of pictures and place randomly around the box. Set the box aside and make space in front of the child.Arrange the pictures in a line We introduce the names of the pictures to the child. We introduce all the pictures belonging to a group together. Eg. Bag, tap, hat, fan,ant The sameis repeated for all vowels. Then we ask the child to repeat the names</p>\n', NULL, 1, NULL, '2018-08-04 12:12:05', NULL, '2018-07-22 17:45:36', NULL),
(111, 1, 10, 8, 'Month_8', 'Alphabet Box 1-Sandpaper letters', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/111/sandpaper letter.png', NULL, '1.Making the child conscious of the shape of the loose alphabet 2.Associating the sound\nwith the alphabet\n', '<p>Before this material is presented,the child should !&lt;now majo rity of the sounds through sandpaper tracing. Leave the alphabet box inits place. But tal&lt;e the child to whereitis&nbsp;&nbsp;&nbsp; placed and introduce the material saying thisis an alphabet box. Now asl&lt; the child to bring about 7-8 sandpaper cards and place in rows on his table. Asl&lt; him the sounds of each. Then tell him to go the alphabet box and bring the same letter from the box, and place next to each card.</p>\n', NULL, 1, NULL, '2018-08-04 12:12:06', NULL, '2018-07-23 07:13:37', NULL),
(112, 1, 9, 8, 'Month_8', 'Texture Box 2 - Pairing', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/112/rough and smooth.jpg', NULL, 'To make the child aware of varying textures combining his visual sense and sense of touch\nand pair them\n', '<p>Asl&lt; the child to carry the texture box to her/ his mat. Remove one each of all the texture cards and place them randomly on the mat. Show the child how to place his palm on a&nbsp;&nbsp;&nbsp;&nbsp; card and move it gently across its surface to feel its texture. Then show him how to feel each of the cards in the box and find the pair. Place the card on top of rts pair. TEXTURE PREPARATION ACT IVITY If you feel that a childis not really noticing differencein textures much, sensitize his hand before she/ he does this exercise. Keep a bowl of warm water, and asl&lt; the child to dip her/his fingers into the bowl, and rub dry with a towelbefore this exercise. This Will heighten the sense of touch.</p>\n', NULL, 1, NULL, '2018-08-04 12:12:07', NULL, '2018-07-23 07:16:19', NULL),
(113, 1, 11, 8, 'Month_8', 'Trans and Comm', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/113/Stickers.png', NULL, 'Trans and Comm', '<p>Trans and Comm</p>\n', NULL, 1, NULL, '2018-08-04 12:12:08', NULL, '2018-07-23 07:17:30', NULL),
(114, 1, 9, 8, 'Month_8', 'Diameter variation Cylinders 3 - Name Lesson', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/114/diameter variation cylinder.png', NULL, 'To introduce the terms thick, thin, thicker,thinner', '<p>Ask the child to bring the diameter cylinders to his mat. Now taKe out the 2 extreme ones</p>\n\n<p>and tell the child &quot;thick&quot; and &#39;thin&#39;through a 3 period name lesson</p>\n', NULL, 1, NULL, '2018-08-04 12:12:08', NULL, '2018-07-23 07:24:05', NULL),
(115, 1, 9, 9, 'Month_9', 'Circle Shape Cards 1', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/115/Circle sorter.png', NULL, '1.Match the circle inset wtth the shape card 2. To move from concrete shapes to abstract\nshapes\n', '<p>Place the boardin the middle of the worK mat,between you and the child. Remove allthe insets from the board one by one holding the knob between the thumb and index finger (writing fingers)and place them randomly around the board. PicK up any one inset with the left hand holding the knob. Hold it in a position that the child can see the back of the circle. ChecK the slots to see which one the inset will fit. The movements must be clear and exaggerated so that the child understands that you are trying to find the right slot. Place the inset in the slot correctly without error. One by one take each of the insets and put them bacK in their respective slots.</p>\n', NULL, 1, NULL, '2018-08-04 12:12:10', NULL, '2018-07-23 07:35:36', NULL),
(116, 1, 9, 9, 'Month_9', 'Length Stairs 2 - Name Lesson', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/116/lenght stair.png', NULL, 'To introduce the terms longer, shortest etc', '<p>Ask tne child to build tne stairs. Tnen take out tne longest piece and say &quot;Long&quot;. Take the smallest piece and say &quot;Short&quot;</p>\n', NULL, 1, NULL, '2018-08-04 12:12:11', NULL, '2018-07-23 07:53:06', NULL),
(117, 1, 9, 9, 'Month_9', 'Pairing Colour Rods 4 - Memory', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/117/colour rods.png', NULL, '1.To help the child remember colours 2.To help the child associate all the colours he sees\naround him\n', '<p>Ask the child to carry the material to his place of work.Also ask the child to bring a tray to the mat. You may carry the indicator.Ask the child to remove all the smaller rods and place randomly on a tray.Ask him to place the tray away from his place of work. Place the indicator in front of any one of the longer rods and indicate to the child that he must bring&nbsp;&nbsp; the corresponding pair from the shorter rods on the tray.When the child is comfortable with this,you can increase the complexity by placing the different colours in different places. The child then has to remember the location and the colour.</p>\n', NULL, 1, NULL, '2018-08-04 12:12:11', NULL, '2018-07-23 08:14:23', NULL),
(118, 1, 9, 9, 'Month_9', ' Width Stairs 3 - Name lesson', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/118/width stair.png', NULL, 'To introduce the terms wide, narrow.wider than, narrowest etc', '<p>Ask the child to build a stairs sideways.Then take out the narrowest piece and say &quot;Narrow&quot;. Take the widest piece and say &quot;Wide&#39;. Doa 3 period Namelesson.</p>\n', NULL, 1, NULL, '2018-08-04 12:12:12', NULL, '2018-07-23 12:53:21', NULL),
(119, 1, 9, 9, 'Month_9', 'Noise Boxes 1', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/119/noise box.jpg', NULL, '1.To make the child aware of varieties of sounds', '<p>AsK tne child to carry the material to nis mat softly without making a noise. Take out every cylinder one by one in a straight line and place in a line on tne mat. Now take tne first cylinder in your nand. snow the child how to nold tne cylinder using your right hand fingertips and thumb.Bring tne cylinder up to your right ear and snaKe it steadily 3 times. Place the cylinder on the mat on one side.snaKe tne cylinder near your left ear 2-3 times. Place the cylinder in front of the child and have him listen using botn ears.Put this one back in tne box. Repeat for an cylinders, and put them back in a row. This activity must be done in silence Witnout talking to enable concentrated nearing</p>\n', NULL, 1, NULL, '2018-08-04 12:12:13', NULL, '2018-07-23 12:55:55', NULL),
(120, 1, 9, 9, 'Month_9', ' Fixed Qty Prism 2 - Name Lesson', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/120/fixed quantity1.png', NULL, 'To introduce names of quantities', '<p>Ask the child to arrange the fixed quantity materialon the mat. Thenisolate the first 3 rods and giVe the child a name lesson for 1,2,3. Day 1 - 1,2,3 Day 4 - 4.5 Day 7 - 6,7 Day 10 - 8,9, Day 13 - 1o and consolidate</p>\n', NULL, 1, NULL, '2018-08-06 08:43:32', NULL, '2018-08-06 08:43:25', NULL),
(121, 1, 9, 9, 'Month_9', 'Colour Viewer 1 - Viewing', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/121/colour viewer.jpg', NULL, 'Helping a child understand that a colour is an abstraction', '<p>Show the child how to hold the viewer and view and object through that. This is a variation</p>\n\n<p>of abstract pairing</p>\n', NULL, 1, NULL, '2018-08-04 12:12:14', NULL, '2018-07-23 17:25:22', NULL),
(122, 1, 8, 9, 'Month_9', 'Coat Button Frame', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/122/press button1.jpg', NULL, '1.This practical life activity helps the chid figure out how to fasten and unfasten coat and\nshirt buttons. 2.Excellent for dexterity 3.A practicallife activity that mal<es the child independent\n', '<p>Unbuttoning - Show the child how to undo the buttons from top to bottom.Hold each</p>\n\n<p>button in the right hand and the fabric next to the buttonhole with the left hand. Tilt the button vertically so that rt slips through easily. Open fabric. After finishing the activity,close the fabric and rebutton. Let the child continue unbuttoning. Buttoning Hold theleft edge of the button withleft thumb and index finger and push into buttonhole. With right thumb and</p>\n\n<p>index finger, grasp button; Left fingers hold right cloth. Both hands pull, left pulls cloth to</p>\n\n<p>the left; right pulls button to right and through buttonhole. Repeat for allremaining buttons.</p>\n', NULL, 1, NULL, '2018-08-04 12:12:15', NULL, '2018-07-23 17:27:50', NULL),
(123, 1, 9, 9, 'Month_9', 'Diameter variation Cylinders 4 - Gradation', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/123/diameter variation cylinder.png', NULL, '1.Gradation of diameter 2. To develop visual dimension skills', '<p>Ask tne child to remove all tne cylinders and place tnem randomly on tne mat. Tnen move the block a little away at tne back. We now snow the child now to arrange tne cylinders from big to small,or from tall to snort.After tne gradation is done, we move the block forward again.Tnen starting from tne tallest one, we put tnem all back in tne slots tney came from.</p>\n', NULL, 1, NULL, '2018-07-23 17:34:26', NULL, '2018-07-23 17:34:27', NULL),
(124, 1, 9, 9, 'Month_9', 'Knobless Cylinders 1 - Diameter Pair', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/124/dia.jpg', NULL, '1.To help the child become conscious of dimension.2. To compare and understand diameter', '<p>TaKe tne child to tne place of display andintroduce tne material. Tnese are Knobless cylinders.AsK tne child to carry the material to his mat. One by one take all the cylinders out and place randomly around the board. snow the cnild how to separate tne cylinders into 2 groups based on tne colour. Tnen take any one cylinder in one colour, say yellow, and find the cylinder tnat nas the same diameter in green. Pair one on top of tne other</p>\n', NULL, 1, NULL, '2018-08-04 12:12:18', NULL, '2018-07-24 06:58:34', NULL),
(125, 1, 10, 9, 'Month_9', 'WW: Seriation 1 - Small Group', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/125/ww seq.jpg', NULL, 'Help the child understand that there is a sequence in activities', '<p>TaKe any one set of sequence cards and worK with a small group of 5-6, as this is a language activity. Get the children to tell the story,and addin details where needed.This activity must bring out a clear sequence of activities .It also serves as a vocabulary enrichment exercise. As itis a small group activity ,there is sure to be a slightly older child who is confident With this activty</p>\n', NULL, 1, NULL, '2018-08-04 12:12:19', NULL, '2018-07-24 07:05:15', NULL),
(126, 1, 9, 9, 'Month_9', 'Threading Quadrilaterals 2 - Patterns', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/126/qudrilaterals.jpg', NULL, '1.To improve dexterity 2. To build concentration 3. Designs and Pattern making increases\nthe understanding of geometry\n', '<p>Once tne child is comfortable with tnreading, snow him now various patterns can be formed using the no1es at tne edge and the centre.</p>\n', NULL, 1, NULL, '2018-08-04 12:12:21', NULL, '2018-07-24 07:08:15', NULL),
(127, 1, 10, 9, 'Month_9', 'Picture Association 1 - Pictures', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/127/picture assco.png', NULL, 'Use pictures to pair', '<p>Use pictures to pair</p>\n', NULL, 1, NULL, '2018-08-04 12:12:20', NULL, '2018-07-24 07:10:53', NULL),
(128, 1, 9, 9, 'Month_9', 'Body Puzzle 3 - Jigsaw', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/128/body puzzle.png', NULL, '.Improve fine motor skills 2. Lays the foundation for solVing problems 3.Improves short­\n1. term memory 4.Improves Co-relation skills 5.Improves Observation skills 6. Learns parts of a body\n', '<p>Take all the pieces out, jumble it up,and asl&lt; the child to put the puzzle together.While doing a puzzle, a child has to &bull; See the picture &bull; Looi&lt; at each of the pieces &bull; Retain that information &bull; Put the ends together and match adjacent pieces &bull; Put all the pieces together and mal&lt;e the complete picture This involves a lot of sequencing and deduction. In practicallife,these spatialco-ordination skills can helpin areas lil&lt;e arranging efficient utilization of space (lil&lt;e packing luggage) or understanding</p>\n', NULL, 1, NULL, '2018-08-04 12:12:22', NULL, '2018-07-24 07:13:30', NULL),
(129, 1, 9, 9, 'Month_9', 'Geometric Tiles 3 - Name Lesson', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/129/geometeric tiles.png', NULL, 'Name of 2D shapes', '<p>Give a name lesson to the child for the various parts, not more than 3 a day- Triangle, Square, Trapezium, Kite, Pentagon. Rectangle, Parallelogram, Hexagon, Rhombus</p>\n', NULL, 1, NULL, '2018-08-04 12:12:23', NULL, '2018-07-24 07:18:17', NULL),
(130, 1, 10, 9, 'Month_9', 'Metal Insets 2 - Colouring', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/130/metal inset.jpg', NULL, 'Pre-writing stroKes,colouring', '<p>Pre-writing stroKes,colouring</p>\n', NULL, 1, NULL, '2018-08-04 12:12:24', NULL, '2018-07-24 07:33:10', NULL),
(131, 1, 10, 9, 'Month_9', ' Community Helpers ', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/131/new logo-1 (1)-1.png', NULL, 'Community Helpers', '<p>&nbsp;Community Helpers&nbsp;</p>\n', NULL, 1, NULL, '2018-08-04 12:12:24', NULL, '2018-07-24 07:55:39', NULL),
(132, 1, 9, 9, 'Month_9', 'Height variation Cylinders 3 - Name Lesson', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/132/diameter variation cylinder.png', NULL, 'To introduce the terms tall, shorter,tallest etc', '<p>Ask the child to bring the height var cylinders to his mat. Now take out the 2 extreme ones</p>\n\n<p>and tellthe child &quot;tau&middot;and &quot;short&quot; through a 3 period name lesson. On other days use the name lesson to introduce taller,shortest etc</p>\n', NULL, 1, NULL, '2018-08-04 12:12:25', NULL, '2018-07-24 07:57:12', NULL),
(133, 1, 8, 10, 'Month_10', 'Grating', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/133/grating.jpg', NULL, '1.Improves fine motor skills 2. This daily life exercise is excellent for improving dexterity', '<p>Take the child to the shelf and introduce the material. This is the &quot;Grating set&quot; .Ask&nbsp;the child to carry it to his oilcloth chowki. After he has placed the set down, asK him to bring a napkin. Then be seated and tal&lt;e out allcomponents from the tray and place on the chowki. Take the child with you and give him a cut piece of fresh fruiV vegetable to grate . Show the child how to hold the fruit <em>I </em>vegetable firmly with the right hand. Show him how to hold the grater with the left tightly in position. Show him the grating movement slowly without any haste.After the child has grated sufficiently, show him how Not to grate till the end of the vegetable.Show him where to put back the &quot;ungrated&quot; pieces, and how to put&nbsp;&nbsp; the grated vegetables in a cup. It would be good to use the grated vegetables to make a salad <em>I </em>sandwich and not just put rt away</p>\n', NULL, 1, NULL, '2018-08-04 12:12:29', NULL, '2018-07-24 08:00:38', NULL),
(134, 1, 10, 10, 'Month_10', 'WW Geometry Simple', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/134/ww geo.jpg', NULL, 'Help the teacher make an assessment on the child\'s understanding of shapes and his\n\nvisual discrimination skills', '<p>&nbsp;&nbsp;</p>\n\n<p>&nbsp;\n<table style=\"width:100%\">\n	<tbody>\n		<tr>\n			<td>\n			<p>Wooden worl&lt;sheets are always pre-arranged on the mat in a specialplace in the room</p>\n\n			<p>assigned solely for assessment. These worl&lt;sheets are designed to assess if the child has interacted sufficiently with specific materialand has subsequently acquired the associated sl&lt;ill.Arrange all the pieces on the board.Asl&lt; the child to&middot;loo!&lt; for what is different&quot; in the</p>\n\n			<p>images. Do the first row as an example for the child. Once you haveidentified the odd one out, turn the card thatis the odd one out and place it bacl&lt; into the slot,face down.Asl&lt; the</p>\n\n			<p>child to complete the following rows. The child may have remarKs lil&lt;e &quot;Itis not a square&middot;</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n<br />\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>\n', NULL, 1, NULL, '2018-08-04 12:12:31', NULL, '2018-07-24 14:00:25', NULL),
(135, 1, 9, 10, 'Month_10', 'Height Variation cylinders 4 - Gradation', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/135/height variation cylinder.png', NULL, '1.Gradation of height 2. To develop visual dimension skills', '<p>Ask tne child to remove all tne cylinders and place tnem randomly on tne mat. Tnen <em>m</em><em>o</em><em>ve</em>&nbsp;the block a little away at tne back. We now snow the child now to arrange tne cylinders from big to small,or from tall to snort.After tne gradation is done, we move the block forward again.Tnen starting from tne tallest one, we put tnem all back in tne slots they came from.</p>\n', NULL, 1, NULL, '2018-08-04 12:12:32', NULL, '2018-07-24 14:02:27', NULL),
(136, 1, 10, 10, 'Month_10', 'Story Stamps', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/136/new logo-1 (1)-1.png', NULL, 'Story Stamps', '<p>Story Stamps</p>\n', NULL, 1, NULL, '2018-08-04 12:12:33', NULL, '2018-07-24 14:04:16', NULL),
(137, 1, 9, 10, 'Month_10', ' Fixed Qty Prism 3 - Fixed Counting', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/137/fixed quantity1.png', NULL, 'To introduce fiXed counting', '<p>Ask the child to arrange the fixed quantity materialon the mat. Show him how to count the segments on the prism and verify its name The child should Know sequence of numbers 1&nbsp; to 10 from oralrotelearning by now. Show him to count the segments 1.2,3... and then last number is the cardinal quantity.</p>\n', NULL, 1, NULL, '2018-08-04 12:12:33', NULL, '2018-07-24 14:06:42', NULL),
(138, 1, 9, 10, 'Month_10', 'Geometry Shape Cards 2 - Cards only', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/138/geometeric .png.jpg', NULL, '1.Matching the form cards with each other 2. Matching the shape with the form card, and hence help the child realise that these shapes are spaces bounded by lines. 3.To help the child prepare himself for a systematic study of plain geometry and to become familiar with the conventional way of representing geometrical figure.4.To help the child prepare himself for reading by his visual memory for shapes.', '<p>Would you lil&lt;e to see how to worl&lt; With more than one set of cards? Ask the child to bring the box of cards. Tal&lt;e out all the cards and sort theminto full, thicl&lt; and half. Now tal&lt;e the set of full figures and arrange in a row. Next show the child how to tal&lt;e out one card from the thicl&lt; set,and Let the child see that we are trying to find the matching card. Place the thick outline card under the corresponding shape of full figure. Continue untilthe child takes <em>o</em><em>ver</em><em>.</em>When all the sets are made we suggest to the child &quot;Shall we seeif we have done the pairing correctly&quot;.Now to check if the pairing is done correctly, we asl&lt; the child to bring the geometry board. From the board we pick any one of theinset and place rt on the corresponding card.Then we say to the child, &quot;see it fits on this card; then it should fit on this also (indicating rts pair).Shall we see it fits exactly the same?&quot; Piel&lt; the inset and place rt on each of cards one below the other. &quot;It fits on this and it fits on this also (indicating the appropriate card). So both are the same and matched properly. Leave the inset on the card and pick another one.The presentation goes on until the child takes <em>o</em><em>ver</em><em>.</em>Once all&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the insets are matched, we asl&lt; the child to put back the insets into the board and put it&nbsp; back into in its place</p>\n', NULL, 1, NULL, '2018-08-04 12:12:34', NULL, '2018-07-24 14:08:30', NULL),
(139, 1, 10, 10, 'Month_10', 'Water World 1 - Sorting', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/139/water world.png', NULL, '1.Sorting doubles and singles 2. Build skills like picture matching,visual discrimination\nand sequencing\n', '<p>Introduce the materialto the child as Water World. Ask the child to take the material to a mat Place the box on tne matin the centre. Take out all the pieces and place randomly around. Remove tne box from the mat. Show tne child how you are visually examining the pieces and checking if both parts are same. then rtis a &quot;DOUBLE&quot; Tell him that rt is a double.If both parts are different rt is not a double So sortinto doubles and not doubles for a few pieces andlet the child take over</p>\n', NULL, 1, NULL, '2018-08-04 12:12:35', NULL, '2018-07-24 14:11:37', NULL),
(140, 1, 9, 10, 'Month_10', 'Tree Puzzle 2 - Puzzle', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/140/tree puzzle.png', NULL, 'Improve hand-eye co-ordination 2.Improves their spatial co-ordination skills.3.\nImproves logicalthinking, hence improving problem solVing abilities\n', '<p>At the second level, take all the pieces out,jumble it up,and asK the child to put the puzzle together. While doing a puzzle, a child has to - See the picture &bull; LooK at each of the pieces</p>\n\n<ul>\n	<li>Retain that information &bull; Put the ends together and match adjacent pieces &bull; Put an the pieces together and make the complete picture Thisinvolves alot of sequencing and deduction.This process hence - Lays the foundation for solving problems. - Improves short-term memory. &middot;Improves Co-relation skills - Improves Observation skills In practical life,these spatialco-ordination skills can helpin areas lil&lt;e arranging efficient utilization of space (lil&lt;e packing luggage) or understanding</li>\n</ul>\n', NULL, 1, NULL, '2018-08-04 12:12:35', NULL, '2018-07-24 14:13:25', NULL),
(141, 1, 9, 10, 'Month_10', 'Height Stairs 3 - Small group', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/141/height stairs.jpg', NULL, '1.Eye- Hand Coordination 2. To help the child develop and control his prehensile co­\nordination i.e. capacity to judge the dimensions 3.To visualise from memory and build\n', '<p>Invite 3 to 4 children.AsK the children to have tne height stairs on a mat and come and call you. AsK eacn child to taKe two or tnree prisms each and Keep it behind them.AsK the child having the thinnest prism to place forward.The children should be able to feelwith their hands and find the next one.The child naving tne next prism will have to bring tne prism forward and the activity goes on until the whole stairs is built.</p>\n', NULL, 1, NULL, '2018-08-04 12:12:36', NULL, '2018-07-24 14:28:52', NULL),
(142, 1, 9, 10, 'Month_10', 'Beads 2 - Sort and Thread', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/142/beads1.jpg', NULL, '1.Excellent for improving fine motor skills 2. Excellent for concentration development 3.\nEhnance sorting sl<ills\n', '<p>Asl&lt; tne child to carry the beads to his mat. Asl&lt; him to bring 4-5 smaller cups (depending on number of colours in beads) snow the child how you are comparing 2 beads and tal&lt;ing out and placing outside the container the beads of any one colour Thread all these beads, then tnread the remaining one colour after the other similarty Give the child around 20&nbsp;&nbsp; beads to start this exercise with, and increase tne quantity if tne child is ready for it This could also be done as a small group activity with eacn colour being strung by one child and then all joined togetner by tne teacner to make a chain.</p>\n', NULL, 1, NULL, '2018-07-24 14:35:08', NULL, '2018-07-24 14:35:08', NULL);
INSERT INTO `t_activities` (`activity_id`, `standard_id`, `subject_id`, `display_order`, `month`, `name`, `image`, `video`, `objective`, `Description`, `tags`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`, `Branch_id`) VALUES
(143, 1, 9, 10, 'Month_10', 'Flower Stacker 2 - Memory', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/143/flower stacker.jpg', NULL, '1.Enhance shape memory 2.Indirect introduction to reading 3.Understanding of patterns\nand sequencing\n', '<p>Ask the child to take the nower stacker to his place of work and also bring a tray. You take out one piece of each type and place on the tray (For tne first one, nothingisleft on the base). Place the tray at a distance away from the place of work. Now point to any one shape and ask the child to bring the same from the tray. Also point to tne empty space in the first rod. and ask him to bring that as well. When he is comfortable with tnat Keep the pieces in different places, and ask tne child to bring the same.</p>\n', NULL, 1, NULL, '2018-08-04 12:12:37', NULL, '2018-07-24 14:38:50', NULL),
(144, 1, 11, 10, 'Month_10', 'Earth and Nature ', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/144/new logo-1 (1)-1.png', NULL, 'Earth and Nature ', '<p>Earth and Nature</p>\n', NULL, 1, NULL, '2018-08-04 12:12:38', NULL, '2018-07-24 14:40:25', NULL),
(145, 1, 9, 10, 'Month_10', 'Rectangle Shape Cards 1', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/145/rectangular sorter.png', NULL, '1.Match the rectangle inset with the shape card 2. To move from concrete shapes to\nabstract shapes\n', '<p>TaKe the child to the place of display and introduce the material to the child as, &quot;this are rectangle shape cards&quot;. AsK him to taKe the cards to his mat. Asl&lt; him to also carry the rectangle sorter. Show the child how to tal&lt;e out all the cards one by one.Show the child how to sort based on full figures, thicl&lt; outlines and thin outlines. TaKe all the full figures and place in one line. Tal&lt;e the rectangles from the sorter one by one and place on the full figures. Now tal&lt;e the set of half shapes, and show the child how to compare and place below the correct shape. Show the child how to tal&lt;e the rectangle shape and place on the thicK outline to verify is the pairingis correct Now tal&lt;e the thin outlines and place below&nbsp;&nbsp; and repeat the process. Let the child tal&lt;e over from you.A few days after this presentation, asK the child to worK without the insert board.</p>\n', NULL, 1, NULL, '2018-08-04 12:12:39', NULL, '2018-07-24 14:44:45', NULL),
(146, 1, 9, 10, 'Month_10', 'OPA 5 - Multiple Sounds', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/146/last sound.png', NULL, 'Multiple Sounds', '<p>Oral Phonetic Analysis - Identify more than one sound in a word RULES - Same as OPA 1 (Refer Month 3) Eg. Table, what are the soundsin &quot;taablle) - emphasize when you are saying it One child may say &quot;b&quot;, ask the group what other sounds can you hear? Another child may say &quot;t&quot; See how many sounds the group can identify</p>\n', NULL, 1, NULL, '2018-08-04 12:12:40', NULL, '2018-07-24 14:49:48', NULL),
(147, 1, 9, 10, 'Month_10', 'Colour Wheel 1 - Pairing', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/147/colour gradation.jpg', NULL, '1.To maKe the child conscious of primary and secondary colours and discriminate\nbetween the shades 2. To pair shades of colours\n', '<p>Introduce the materialto the child as colour wheel. Since this is a bulKy materialto carry, it</p>\n\n<p>is recommended that the child worK where the colour wheelis placed. We ask him to bring the extra box of colour slabs. Ensure that the placeis wen lit so that the child can easily perceive the differences in shades. TaKe out arr the pieces from the boxes and sort the shades as per colour (all reds together. arr yellows together etc). Show the child how to&nbsp; taKe any one set Eg.All reds. TaKe out each of the reds from the wheel and compare and pair. This way <em>we </em>maKe 5 pairs of colours that are identical to each other. We show the child how to hold the slab between our fingers on the edges without touching the slab in between.We ask the child to repeat the activity With any other colour.</p>\n', NULL, 1, NULL, '2018-08-04 12:12:40', NULL, '2018-07-24 14:52:20', NULL),
(148, 3, 16, 21, 'Month_21', '3 PC Action Words	1 - Pictures', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/148/action picture.png', NULL, 'To introduce Action Words', '<p>Place cards in front of the child. AsK the child tolooK at the cards and say out the words. AsK him to match the word with its action.Place the card with the name and action first on the left side (control card). Then show the child how to find the same action card with picture only and place it next to the control card. Then finally show him how to locate the name card and place it next to the picture card. For all 3 part cards and terminology cards there are 2 ways of presentation: 1. If the child is able to match word patterns or can read the word cards can also be giVen in the first presentation 2.If the child is unable to read <em>I</em><em> </em>match do not give word cards in the first presentation. On another day you could callthe child and hold each word card one by one and place it down and say it out saying can you find running&quot; or can you find &quot;playing&quot;. It may be advisable to start with 3-4 sets only if the child is not ready for all at once.</p>\n', NULL, 1, NULL, '2018-08-04 12:14:21', NULL, '2018-07-26 06:27:21', NULL),
(149, 3, 17, 21, 'Month_21', 'Addition Table of Ten 1- Arrangement Sequence', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/149/addition table.png', NULL, '1.To introduce the child to fixed quantity addition 2. To help the child add two numbers resulting in the number 10', '<p>Step 1: Ask the child to arrange one set of prisms on the top left corner of the mat.</p>\n\n<p>Step 2: Show the child how to arrange the other set of prisms on the top right comer of the mat.</p>\n\n<p>Step 3: Take the first prism,the prism of number 10, from the first set and placeit on the</p>\n\n<p>first row of the board. Address the child say, &quot;This is the number 1O.&quot; Say to the child,</p>\n\n<p>&quot;Shall <em>we </em>see what numbers add up to 1O?&quot;</p>\n\n<p>Step 4: Take the next prism, the number 9,&nbsp;from the first set and place it below the prism of number 10&nbsp;on the board.</p>\n\n<p>Step 5:Take the corresponding prism from the second set, the number 1. and place it next to the prism from the first set. Say to the child. &quot;9 and 1adds up to 10.&quot; Follow the same procedure for the remaining prisms in both the sets. Place them on the board and indicate that they add up to the number 10.Once you complete the presentation, place the prisms back and ask the child to continue the activity</p>\n', NULL, 1, NULL, '2018-08-04 12:14:23', NULL, '2018-07-26 06:34:16', NULL),
(150, 3, 17, 21, 'Month_21', 'Number Cards 1-1000 2 - Place Value', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/150/place value.png', NULL, 'Match number with the quantity', '<p>Ask tne child to place both tne materials on the mat. Tell tne child to arrange all the number cards on the mat and tnen call you. You select any giVen quantity from tne place value box (eg: 3 units, 1ten. 6 hundred &amp; 2 thousand) and ask the child to identify the number cards for tne same and place it on the mat.</p>\n', NULL, 1, NULL, '2018-08-04 12:14:24', NULL, '2018-07-26 06:37:54', NULL),
(151, 3, 16, 21, 'Month_21', 'Phonogram ch', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/151/ch.jpg', NULL, '1.To learn the sound of phonogram ch 2. To spell accurately 3. To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - chips,chin, checK Introduce the phonogram ch to the child. Sound out words wrtn the phonograms and help them recognize it. Introduce the phonogram word box to the child and help them form words. Refer Phonogram pn (Month 22) for all pnonogram sounds use tne sentence box tiles/ green lists <em>I </em>booKs <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-04 12:14:24', NULL, '2018-07-27 04:41:05', NULL),
(152, 3, 16, 21, 'Month_21', 'Place Value System 3 - Num Cards', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/152/decimal.jpg', NULL, 'Match any number between 1 and 1000 with its corresponding quantity', '<p>Ask the child to bring the number cards 1 to 1000 as well as the place value system to the mat. Ask the child to arrange allthe number cards in the prescribed format - Units on the right, then 1O s, then 1OO&#39;s and last the thousand card on thelefi,so that 7, 70 and 700 are in the same horizontal line You select any given number from the number cards and ask the child to identify the quantity for the same and place it on the mat. Eg 600, 40, 8</p>\n', NULL, 1, NULL, '2018-08-04 12:14:25', NULL, '2018-07-27 04:42:58', NULL),
(153, 3, 16, 21, 'Month_21', 'Things around the house', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/153/new logo-1 (1)-1.png', NULL, 'Things around the house', '<p>Things around the house</p>\n', NULL, 1, NULL, '2018-08-04 12:14:26', NULL, '2018-07-27 04:47:54', NULL),
(154, 3, 18, 21, 'Month_21', 'Bar magnets', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/154/bar magnet.png', NULL, '1.To demonstrate magnetism. 2.Sorting magnetic and non magnetic materials', '<p>Filings Game Take a tray,fill it with assorted metallic and non-metallic materials. Move the magnet slowly over the objects. Every object that is attracted by the magnet, <em>r</em><em>emove </em>and place in another basl&lt;et or tray. In this way we have separated the magnetic from the non&shy; magnetic materials.</p>\n', NULL, 1, NULL, '2018-08-04 12:14:26', NULL, '2018-07-27 04:57:48', NULL),
(155, 3, 21, 21, 'Month_21', 'Me and My Family ', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/155/new logo-1 (1)-1.png', NULL, 'Me and My Family ', '<p>Me and My Family</p>\n', NULL, 1, NULL, '2018-08-04 12:14:27', NULL, '2018-07-27 04:58:43', NULL),
(156, 3, 16, 21, 'Month_21', 'Pink Reading Set 1 - Object Boxes', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/156/pink set.jpg', NULL, '1.To introduce the Consonant - Vowel - Consonant (CVC)words to the child 2. To help the child identify and read Consonant - Vower - Consonant (CVC) words', '<p>Step 1: Bring one object box to the mat. Object box 1 is used here first. Step 2: Remove the word cards and stack them on the mat. Step 3:Remove the objects one by one and place them on the mat. Step 4:Arrange the objects in a row, one below the other. Step 5: Point to each of the objects andintroduce them individually. Step 6: Pick one &#39;word card&#39; from the stack and read the word on it. Read the individual sounds in the word and then the entire word. Step 7:Find the object that the&middot;word card&#39; represents and placeit next to that object. Touch the object and the card and say the word aloud.Follow the same procedure for allthe other word cards and objectsin the object box. Place the cards and objects back and ask the child to continue the activity. Follow the same procedure for all the other object boxes.You can present the other object boxes the same day if the child is interested. If the childis not interested to continue. present them on another day</p>\n', NULL, 1, NULL, '2018-08-04 12:14:28', NULL, '2018-07-27 05:01:05', NULL),
(157, 3, 18, 21, 'Month_21', 'Life-cycle of a Butterfly 1: Introduction', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/157/butterfly.jpg', NULL, '1.To help the child place the correct insets in the board 2. To indirectly help the child understand that life-cycle of a butterfly has different stages', '<p>&nbsp;Step 1:AsK the child to bring the materialto the place of worK and place rt on the mat.</p>\n\n<p>Step 2:Remove theinsets and place them randomly on the mat.</p>\n\n<p>Step 3:Address the chid and say, Lers place the insets in the board&quot;.</p>\n\n<p>Step 4: Find the inset that will fit correctly on the board&#39;s base and place it. Follow the same procedure to fit in allthe insets.</p>\n\n<p>Step 5: Once all the insets are placed bacK, asl&lt; the child to continue the activity. Levels:Beginner: Unable to place the insetsin the board Learner: Places the insets in the board after severalattempts Practitioner: Places the insets in the board correctly Scholar: Places the insets in the board correctly. He/she also places the insets in the correct order on the mat (Based on the siZe of the inset)</p>\n', NULL, 1, NULL, '2018-08-04 12:14:28', NULL, '2018-07-27 05:03:57', NULL),
(158, 3, 18, 22, 'Month_22', 'Community Helpers 1', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/158/new logo-1 (1)-1.png', NULL, 'Community Helpers 1', '<p>Community Helpers 1</p>\n', NULL, 1, NULL, '2018-08-04 12:14:30', NULL, '2018-07-27 05:13:04', NULL),
(159, 3, 20, 22, 'Month_22', 'Flower Stacker 5 - Points', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/159/flower stacker.jpg', NULL, 'Flower Stacker 5 - Points', '<h1>Flower Stacker 5 - Points</h1>\n', NULL, 1, NULL, '2018-08-04 12:14:35', NULL, '2018-07-27 05:14:23', NULL),
(160, 3, 16, 22, 'Month_22', 'Pink Reading Set 2 - Pictures and Sheets', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/160/pink1.png', NULL, 'To help the child read eve words', '<p>TaKe any one box of pictures and words and repeat the process same as you had done with the pinK object boxes.After a couple of weeKs, alsointroduce sheet reading</p>\n', NULL, 1, NULL, '2018-08-04 12:14:35', NULL, '2018-07-27 05:19:20', NULL),
(161, 3, 19, 22, 'Month_22', 'Globe 1 - Ocean, Continents', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/161/globe.jpeg', NULL, '1.Understand the representation of the earth as globe 2.Differentiate continents and\noceans on a globe\n', '<p>Take the child to the shelf and introduce the material saying &quot;this is a globe&quot; Show the child how to carefully carry the globe to his mat <em>I </em>chowki. The globe is a delicate material, and must not be misused. We explain to the child that This is what the earth looks like from&nbsp;&nbsp; <em>very </em>far away.&quot; Move your hand over the blue areas and say this is water.Move your hand over the coloured areas and say these are the land areas.After you have repeated this a couple of times. tell him allthe bigland areas are called continents and all the big water areas are called oceans. Then ask the child to point out &quot;ocean&quot; and point out &quot;continent&#39; After he has shown you a couple of times.you can <em>move </em>away and leave him to work with the globe</p>\n', NULL, 1, NULL, '2018-08-04 12:14:36', NULL, '2018-07-27 05:22:13', NULL),
(162, 3, 16, 22, 'Month_22', '3 PC Tools 1 - Pictures', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/162/tools.png', NULL, '1.To introduce names and pictures of tools 2. To enhance the child\'s pairing ability', '<p>Take only the set 1(pictures With names)and set 2 (pictures without names) It is good to start this activity with 4 to 5 pairs of cards Place the control card with the name and picture on the left side. Then take the picture cards and show the child how to find the same&nbsp; picture and place it next to the card.After a few days of work with the cards, give the names of each part of the card.Do not use the word cards initially.</p>\n', NULL, 1, NULL, '2018-08-04 12:14:36', NULL, '2018-07-27 05:53:15', NULL),
(163, 3, 17, 22, 'Month_22', 'Addition Table of Ten 2 - Arrangement Random', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/163/addition table.png', NULL, '1.Reinforce fixed quantity addition 2. Addition Tables of 10 3.To enable to child to\nguesstimate dimensions\n', '<p>Place the material on the mat TaKe out all the strips and lay them out randomly on the mat. Separate the strips into 2 sets {there are 2 sets of 1 to 9) Now place one set of strips randomly on the boardin any order starting from the left Find strips from the other set to fit&nbsp;&nbsp;the gap in each case. Eg Keep No 6 on the top row, and place No 4 next to it to complete table of 10</p>\n', NULL, 1, NULL, '2018-08-04 12:14:37', NULL, '2018-07-27 05:57:15', NULL),
(164, 3, 21, 22, 'Month_22', 'The Farm ', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/164/new logo-1 (1)-1.png', NULL, 'The Farm ', '<p>The Farm</p>\n', NULL, 1, NULL, '2018-08-04 12:14:37', NULL, '2018-07-27 05:59:01', NULL),
(165, 3, 19, 22, 'Month_22', 'Directions Game 1 - Public Places', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/165/direction game.jpg', NULL, 'To introduce the concept of a town layout, and the essential places in a town', '<p>Introduce the material to the child as direction game Ask the child to place the material in the middle of the mat. The child may need help carrying this materialif it is too heavy for&nbsp;&nbsp;him. Alternative ly you could leave the direction board in the comer of the culture room. and children can go to the board to work Show the child how to take out all the pieces and place randomly around the board Tal&lt;e each piece, loo!&lt; at it withintent, name it. Give 3 names a day, start with common ones like park,railway station Then place one piece in a slot and ask the child to fill in the rest wherever he likes it.</p>\n', NULL, 1, NULL, '2018-08-04 12:14:38', NULL, '2018-07-27 06:02:43', NULL),
(166, 3, 19, 22, 'Month_22', 'Phonogram ph', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/166/ph.jpg', NULL, '1.To learn the sounds of phonogram ph 2. To spell accurately 3. To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - telephone,photograph Introduce the phonogram to the child. Sound out words with the phonograms and helpthem recognize it. Introduce the phonogram word box to the child and help them form words.&nbsp;Use the sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to introduce word lists sequentially</p>\n', NULL, 1, NULL, '2018-08-04 12:14:39', NULL, '2018-07-28 05:46:18', NULL),
(167, 3, 16, 22, 'Month_22', 'Phonogram wh', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/167/wh.jpg', NULL, '.To learn the sounds of pnonogram wh 2. To spell accurately 3. To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - whale,whistle Introduce tne phonogram to the child.Sound out words with tne pnonograms and help them recognize it. Introduce the pnonogram word box to tne child and help them form words.Use the sentence box tiles/ green lists <em>I </em>booKs <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-04 12:14:39', NULL, '2018-07-27 06:24:55', NULL),
(168, 3, 16, 22, 'Month_22', 'Phonogram sh', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/168/sh.jpg', NULL, '1.To learn the sounds of phonogram sh 2. To spell accurately 3. To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - snop, snut,masn Introduce the phonogram to tne child. Sound out words with the pnonograms and ne1pthem recognize it. Introduce tne pnonogram word box to the child and help them form words.&nbsp;</p>\n', NULL, 1, NULL, '2018-08-04 12:14:40', NULL, '2018-07-27 06:35:41', NULL),
(169, 3, 16, 22, 'Month_22', 'Phonogram th', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/169/th.jpg', NULL, '1.To learn the sounds of phonogram th 2. To spell accurately 3.To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - moth, thinK Introduce the pnonogram tothe child. Sound out words witn the phonograms and help them recognize it. Introduce the phonogram word box to the child and help them form words. Use the sentence box tiles/ green lists <em>I </em>booKs <em>I </em>words written on papers to introduce word lists sequentially</p>\n', NULL, 1, NULL, '2018-08-04 12:14:41', NULL, '2018-07-27 06:38:23', NULL),
(170, 3, 16, 22, 'Month_22', 'Phonogram qu', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/170/qu.jpg', NULL, '1.To learn the sounds of phonogram qu 2. To spell accurately 3.To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - question. queen,quick Introduce the phonogram to tne child. Sound out words with the pnonograms and ne1pthem recognize it. Introduce tne phonogram word box to the child and help tnem form words.Al thougn this is a consonant-vowel combination,it is classified under consonant phonograms, since qu together is qwa sound Use the sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-04 12:14:41', NULL, '2018-07-27 07:02:58', NULL),
(171, 3, 20, 23, 'Month_23', 'Colour Wheel 4 - Memory', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/171/colour gradation.jpg', NULL, '1.To maKe the child conscious of primary and secondary colours and discriminate\nbetween the shades. 2.To grade shades of colours from darK to light 3. To retain memory of shades of colours\n', '<p>Ask the child to bring the box of loose colour slabs and a tray to the colour Wheel. Arrange all the slabs on the tray randomly, and ask him to place the tray away from the place of worK (place of worK is near the colour wheel) Now taKe any indicator (like a shell) and place it on any one of the slabs on the colour wheel.Ask the child to bring the corresponding pair from the tray. This is a fairly rigorous exercise and may also be done with 2-3 children at a time if <em>y</em><em>o</em><em>u </em>have 3 different small trays each wtth only one colour (all reds in one, yellows in one etc). Then you can have 3 different indicators for 3 children and asK them to each get corresponding pairs from trays Kept at differentlocations.</p>\n', NULL, 1, NULL, '2018-08-04 12:14:44', NULL, '2018-07-27 07:07:32', NULL),
(172, 3, 19, 23, 'Month_23', 'Directions Game 2 - Directions', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/172/direction game.jpg', NULL, '1.Introduce the concept of a town layout. and the essential placesin a town 2.Introduce\nthe directions North, South,East and West 3.Indirectly shoWing the child that different places are in different directions\n', '<p>When the child is famiiar with public places.introduce the direct ons to the child. Start from the North, and say the North arrow has to point upwards.Then South downwards Then show East and West. You could use the analogy that North is liKe &quot;up&quot; and South is liKe &quot;down&quot; Do not confuse the chid with right,left etc whenintroducing N, S, E and W .Just point out that all the places are in different directions.</p>\n', NULL, 1, NULL, '2018-08-04 12:14:46', NULL, '2018-07-27 07:13:55', NULL),
(173, 3, 17, 23, 'Month_23', 'Place Value Board', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/173/place value board.png', NULL, 'To help the child understand how to split a 4 digit number Units. Tens, Hundreds and thousands', '<p>Give the child several 4 digit numbers on the right side Take the first number and show him how to split the first number. Point with the finger to the units, say units and write the numeral in the units place Then, tens, hundreds and finally thousand Then read out the number in words from thousands to units Eg 4278 - Four thousands,two hundreds, seven tens and eight units Split one more number if needed AsK the child to do the rest</p>\n', NULL, 1, NULL, '2018-08-04 12:14:47', NULL, '2018-07-27 07:15:29', NULL),
(174, 3, 16, 23, 'Month_23', '3 PC Festivals 1 - Pictures', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/174/festivals.jpg', NULL, '1.To introduce names and pictures of festivals 2. To enhance the child\'s pairing ability', '<p>Take only the set 1(pictures With names)and set 2 (pictures without names) Itis good to start tnis activity with 4 to 5 pairs of cards Place the controlcard with tne name and picture on tne left side. Tnen take the picture cards and show tne child now to find the same&nbsp; picture and place it next to tne card.After a few days of work with the cards, give the names of eacn part of tne card.Do not use tne word cards initially.</p>\n', NULL, 1, NULL, '2018-08-04 12:14:47', NULL, '2018-07-27 07:17:33', NULL),
(175, 3, 16, 23, 'Month_23', ' BIRDS', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/175/new logo-1 (1)-1.png', NULL, 'BIRDS', '<p>&nbsp;: BIRDS</p>\n', NULL, 1, NULL, '2018-08-04 12:14:48', NULL, '2018-07-27 07:21:20', NULL),
(176, 3, 16, 23, 'Month_23', 'Decimal System 1 - Qty', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/176/decimal value.png', NULL, 'Converting quantity to decimal system of numbers with place value', '<p>Give the child a random quantity (less than 9 ) so that there is nocarry over Give him a quantity Eg 1546 Show the child how to count starting from the units and going upto thousand After the child has finished all the sorting and counting,we show him how to pick the number from the number card box. We usually do all the counting before getting the number cards because it is distracting for the child to stopin the middle of counting each time to get the number card.After the numbers have been taken out we show the child how to read the number by placing the cards one on top of the other by covering the zeroes</p>\n', NULL, 1, NULL, '2018-08-04 12:14:49', NULL, '2018-07-27 08:34:08', NULL),
(177, 3, 17, 23, 'Month_23', 'Number Line 1 - Quantity', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/177/line number.png', NULL, '1.To reinforce quantity Number association 2.To introduce graphical representation of quantity', '<p>Introduce the materialto the child as &quot;Number line&quot; AsK the child to tal&lt;e the tray and the line to his <em>I </em>her mat Keep a set of number cards 1to 10.Arrange one set of arrows (red preferably) from one to ten. Show the child theincreasing sizes of the arrows.Arrange the arrows in order of size,one inside the other bacK in the tray. (Keep aside the blacK arrows) Then taKe any one number card, say 6. Count to the 6th arrow from the smallest and place it on the number line,so that the beginning touches O and the end touches 6.</p>\n', NULL, 1, NULL, '2018-08-04 12:14:49', NULL, '2018-07-27 08:32:19', NULL),
(178, 3, 16, 23, 'Month_23', 'Phonogram ee', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/178/ee.png', NULL, '1.To learn the sound of phonogram ee 2. To spell accurately 3.To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - jeep, cheeK,sheep Introduce the phonogram to tne child. Sound out words with the pnonograms and ne1pthem recognize it. Introduce tne pnonogram word box to the child and help tnem form words.&nbsp;Use the sentence box tiles/ green lists <em>I </em>booKs <em>I </em>words written on papers to introduce word lists sequentially</p>\n', NULL, 1, NULL, '2018-08-04 12:14:50', NULL, '2018-07-27 07:31:18', NULL),
(179, 3, 19, 23, 'Month_23', 'Place and Direction Box 1 - With Control Card', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/179/place direction.jpg', NULL, '1.To introduce location I position 2. To introduce prepositions', '<p>This can be a small group <em>I</em>individual presentation We introduce the material to the children and tell them, this is a preposttion box We are going to see the various ways in which objects are placed With respect to each other We place the objects and asl&lt; the children one by one to name the relation We introduce the Picture Cards as a guide along with the objects, so that they relate to the pictorial locations as well Eg. We place the bat&nbsp; on the table and asl&lt; the child to identify the two objects Bat . Table Then <em>we </em>say, The bat is ON the table Similarly, The bat is OVER the table The bat is BESIDE the table The bat is UNDER the table Simultaneously show the pictures.Asl&lt; the children to form sentences with the said preposition. Eg &quot;On&quot;. the child may say &quot;a pencil is ON the table&quot;</p>\n', NULL, 1, NULL, '2018-08-04 12:14:51', NULL, '2018-07-27 07:38:21', NULL),
(180, 3, 18, 23, 'Month_23', 'TC: Parts of horse 1 - Pictures', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/180/horse.png', NULL, '1.To introduce the names of the parts of a 2. To enhance the child\'s visual pairing ability 3.	\nTo indirectly indicate to the child that the parts make up the whole, and each can be named in isolation 4.Introduce on to mammals (Animal Kingdom Classification)\n', '<p>Take only the set 1(pictures With names)and set 2 (pictures without names) It is good to start this activity with 4 to 5 pairs of cards Place the controlcard with the name and picture on the left side. Then take the picture cards and show the child how to find the highlighted part that is common to both pictures and place rt next to the controlcard.After a few days of worl&lt; with the cards, give the names of each part .Do not use the word cards initially.</p>\n', NULL, 1, NULL, '2018-08-04 12:14:51', NULL, '2018-07-27 07:36:53', NULL),
(181, 3, 19, 23, 'Month_23', 'World Map 1 - Oceans, Continents', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/181/world map.jpg', NULL, 'To differentiate between ocean and continent on a map', '<p>After the child has beenintroduced to the globe, itis time tointroduce him to various&nbsp;&nbsp;&nbsp;&nbsp; aspects of the world. One way to do thisis to get him to observe how much land and how much water is on earth. Have a Plastic table near a water source (wash basin) Display the world map on the plastic table permanently Give the child a bucl&lt;et of water. Asl&lt; the child&nbsp; to fill ajug of water and bring it to the table. Show the child how to carefully and slowly&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pour waterinto one comer. Watch it spread and fill the cavities (oceans)with water. Point out that the water bodies are all connected,and they are all oceans. Pour just as much water so that the levelof landis wellabove water, and none of the continents are submerged. Point out how various land masses stand in the water.Name them as continents.After the activityis complete,show the child how to pour the water bacl&lt; in the bucl&lt;et and wipe dry the map.</p>\n', NULL, 1, NULL, '2018-08-04 12:14:52', NULL, '2018-07-27 08:40:17', NULL),
(182, 3, 16, 23, 'Month_23', 'Alphabet Box 5 - Simple Large Words', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/182/new logo-1 (1)-1.png', NULL, 'Alphabet Box 5 - Simple Large Words', '<p>Alphabet Box 5 - Simple Large Words</p>\n', NULL, 1, NULL, '2018-08-04 12:14:52', NULL, '2018-07-27 08:43:06', NULL),
(183, 3, 21, 23, 'Month_23', 'The Jungle', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/183/new logo-1 (1)-1.png', NULL, 'The Jungle', '<p>The Jungle</p>\n', NULL, 1, NULL, '2018-08-04 12:14:53', NULL, '2018-07-27 08:45:18', NULL),
(184, 3, 16, 23, 'Month_23', 'Phonogram  oo', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/184/oo.png', NULL, '1.To learn the sound of phonogram oo 2. To spell accurately 3.To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - food, moon Introduce tne phonogram tothe child. Sound out words witn the phonograms and nelp tnem recognize it. Introduce the phonogram word box to the child and helpthem form words.&nbsp; Use tne sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-04 12:14:53', NULL, '2018-07-27 08:50:15', NULL),
(185, 3, 17, 24, 'Month_24', 'Quantity Box 4 - Addition', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/185/fixed quantity.jpg', NULL, '1.To introduce quantity arithmetic - addition 2. Intermediary stage for abstraction', '<p>TaKe a prepared problem sheet,or the worKbool&lt; rtself. Tal&lt;e the quantity as written in the problem Eg . 3+2 - tal&lt;e 3 rods from compartment 3 and the rods from compartment 2. Add them together and count - 1,2, 3 , 4, 5.</p>\n', NULL, 1, NULL, '2018-08-04 12:14:55', NULL, '2018-07-27 17:08:16', NULL),
(186, 3, 16, 24, 'Month_24', 'Human Evolution 3 - Story of Man', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/186/new logo-1 (1)-1.png', NULL, 'Human Evolution 3 - Story of Man', '<h1>Human Evolution 3 - Story of Man</h1>\n', NULL, 1, NULL, '2018-08-04 12:14:58', NULL, '2018-07-27 17:09:26', NULL),
(187, 3, 16, 24, 'Month_24', '3 PC Dances 1 - Pictures', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/187/dance.jpg', NULL, '1.To introduce the pictures of dance forms 2. To ehnance the child\'s visual pairing ability', '<p>Take only the set 1(pictures With names)and set 2 (pictures without names) Itis good to start tnis activity with 4 to 5 pairs of cards Place the controlcard with tne name and picture on tne left side. Tnen take the picture cards and show tne child now to find the same picture and place it next to tne card.After a few days of work with the cards, give the names of each part of the card.Do not use tne word cards initially.</p>\n', NULL, 1, NULL, '2018-08-04 12:14:58', NULL, '2018-07-27 17:11:42', NULL),
(188, 3, 16, 24, 'Month_24', '3 PC musical Instrument 1 - Pictures', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/188/music.jpg', NULL, '1.To introduce the pictures of musical instruments 2.To enhance the child\'s visual pairing\nability\n', '<p>Take only the set 1(pictures With names)and set 2 (pictures without names) Itis good to start this activity with 4 to 5 pairs of cards Place the controlcard with the name and picture on the left side. Then take the picture cards and show the child how to find the same&nbsp; picture and place it next to the card.After a few days of work with the cards, give the names of each part of the card.Do not use the word cards initially.</p>\n', NULL, 1, NULL, '2018-08-04 12:14:59', NULL, '2018-07-27 17:13:26', NULL),
(189, 3, 17, 24, 'Month_24', 'Inscribed & Concentric 1 - 2 shapes', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/189/concentric.jpg', NULL, 'Introduction to superimposed figures (Geometry)', '<p>Introduce the materialto the child.Asl&lt; him to carry rt to his mat. Tal&lt;e only circles of 2 siZes,and one triangle. Tell the child,today we are going to worl&lt; on the arrangement of shapes when one lies inside the other First place the smaller circle on the bigger circle. Concentric = Same centre, same shape, fully inside, sides not touching. Point to the child the centres are at the same place and show that the sides do not touch each other, one circle is fully inside the other. This is called concentric.Then place the circle inside the triangle.Point out to the sides, they touch each other. The circle is fully inside the triangle. This is called inscribed.Do not go into too much depth of explanation, at this stage we are just enabling the child to visually experience inscribed and concentric Asl&lt; him to show you what is inscribed and whatis concentric a couple of times. (3 period name lesson) KEY WORDS in presentation:Arrangement of shapes Concentric = Same centre Same shape Fully inside Sides not touching lnsribed = Same centre Different shapes Fully inside Sides</p>\n', NULL, 1, NULL, '2018-08-04 12:14:59', NULL, '2018-07-27 17:16:41', NULL),
(190, 3, 17, 24, 'Month_24', 'Magnetic Calendar 3 - Date', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/190/new logo-1 (1)-1.png', NULL, 'Magnetic Calendar 3 - Date', '<h1>Magnetic Calendar 3 - Date</h1>\n', NULL, 1, NULL, '2018-08-04 12:15:00', NULL, '2018-07-27 17:19:48', NULL),
(191, 3, 17, 24, 'Month_24', 'Rhyming Words	1 - Matching', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/191/rhyming words.png', NULL, 'Rhyming Words	1 - Matching', '<p>Rhyming Words 1 - Matching</p>\n', NULL, 1, NULL, '2018-08-04 12:15:00', NULL, '2018-07-27 17:22:08', NULL),
(192, 3, 18, 24, 'Month_24', 'TC: Parts of a bird 1 - Pictures', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/192/birds.jpg', NULL, '1.To introduce the names of the parts of a bird 2. To ennance tne child\'s visual pairing\nability 3. To indirectlyindicate to the chid that the parts make up the whole,and each can be namedinisolation 4. 4. Introduction to birds (Animalclassification)\n', '<p>Take only the set 1(pictures With names)and set 2 (pictures without names) It is good to start tnis activity with 4 to 5 pairs of cards Place the controlcard with tne name and picture on tne left side. Then take the picture cards and show tne child now to find the highlighted part that is common to both pictures and place rt next to the controlcard.After a few days of worl&lt; with the cards, give the names of eacn part .Do not use tne word cards initially</p>\n', NULL, 1, NULL, '2018-08-04 12:15:01', NULL, '2018-07-27 17:24:45', NULL),
(193, 3, 18, 24, 'Month_24', 'Life-cycle of a Butterfly 2: Name Lesson', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/193/butterfly.jpg', NULL, '1.To introduce the names of the stages of the life-cycle of a butterfly to the child 2. To indirectly introduce the concept of a life-cycle of an organism to the child', '<p>Ask the child to bring the picture insets and board to the place of work.Ask the child to arrange the picture insets in a row on the work mat. First Period:Point to the caterpillar inset and say, &quot;This is caterpillar. Caterpillar.&quot; Point to the pupa inset and say, &quot;This is&nbsp;&nbsp;&nbsp; pupa. Pupa.&#39;Point to the egginset and say, &quot;This is egg. Egg.&quot; Point to the butterfly inset and say, &#39;This is butterfly. Butterfly.&#39;Second Period:Point to a place on the mat and ask the child to Keep a specific inset there. Point to a place on the mat and say to the child,&nbsp; &quot;Can <em>you </em>Keep caterpillar here?&quot; Point to a place on the mat and say to the child, &quot;Can you keep pupa here?&quot; Point to a place on the mat and say to the child, can you keep egg here?&quot; Point to a place on the mat and say to the child, &quot;Can you Keep butterfly here?&quot; Move to the next inset if the child doesn&#39;t follow the instructions. Third Period: Take one inset at a time and ask the child to identify it. Watt for the child to answer. Move the egg inset to the centre of the mat and ask, &quot;What is this?&#39;Place the caterpillar inset next to the egg and ask, &quot;What is this?&#39;Place the pupa inset next to the caterpillar and ask,&quot;Whatis this?&quot; Place the butterflyinset next to the pupa and ask, what is this?&middot;Move to the next inset if the child fails to answer. Ask the child to place the insets back in the board.</p>\n', NULL, 1, NULL, '2018-08-04 12:15:02', NULL, '2018-07-27 17:26:36', NULL),
(194, 3, 21, 24, 'Month_24', ' Food and Nutrition ', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/194/new logo-1 (1)-1.png', NULL, ' Food and Nutrition ', '<p>&nbsp;Food and Nutrition</p>\n', NULL, 1, NULL, '2018-08-04 12:15:02', NULL, '2018-07-27 17:27:46', NULL),
(195, 3, 19, 24, 'Month_24', 'Landforms 1 - lake and island', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/195/landforms.jpg', NULL, 'Introducing lake and island', '<p>Tal&lt;e the child to the shelf and introduce the material saying &quot;these are landforms&quot;Asl&lt; the child to carry the landforms to his <em>I </em>her oilcloth chowl&lt;i. Or a semi outdoor area on the&nbsp;&nbsp; ftoor. Asl&lt; the child bring a jug of water. Show where to pour in each of thelandforms. Now point to theisland and say &bull;this is land surrounded by water&quot; or &quot;thisisland in the centre,&nbsp; and water all around&#39;Similarly for lal&lt;e. &quot;this is water surrounded by land&quot; or &quot;this is water in the middle Withland all around&#39;After a 3 stage name lesson of lal&lt;e and island,leave the child to continue. If the child want to wind up instruct him <em>I </em>show him how to pour the water bacl&lt; to the jug and Wipe the landforms dry before putting bacl&lt; on the shelf. The attached videois not a regular presentation. It was given at a time when two of the older children were not in a mood to sit through circle time,but were more than willing to worl&lt; with material. The opportunity was used to introduce lal&lt;e andisland.</p>\n', NULL, 1, NULL, '2018-08-04 12:15:03', NULL, '2018-07-27 17:31:38', NULL),
(196, 3, 16, 24, 'Month_24', 'Phonogram ea', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/196/ea.jpg', NULL, '1.To learn the sound of phonogram ea 2. To spell accurately 3.To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - leaf,treat, each,cream Introduce tne phonogram to tne child. Sound out words with the pnonograms and ne1pthem recognize it. Introduce tne pnonogram word box to the child and help tnem form words.Use the sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to introduce word lists sequentially</p>\n', NULL, 1, NULL, '2018-08-04 12:15:03', NULL, '2018-07-27 17:34:11', NULL),
(197, 3, 16, 24, 'Month_24', 'Phonogram Double terminals', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/197/new logo-1 (1)-1.png', NULL, '1.To learn the sound of words ending with a double consonant 2. To spell accurately 3. To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - dress, fell, cuff Introduce tne phonogram to the child.Sound out words with tne pnonograms and help them recognize it. Introduce the pnonogram word box to tne child and help them form words.&nbsp; Use the sentence box tiles/ green lists <em>I </em>booKs <em>I </em>words written on papers to introduce word lists sequentially</p>\n', NULL, 1, NULL, '2018-08-04 12:15:04', NULL, '2018-07-27 17:36:02', NULL),
(198, 3, 16, 24, 'Month_24', 'Phonogram ar', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/198/new logo-1 (1)-1.png', NULL, '1.To learn the sound of phonogram ar 2. To spell accurately 3. To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - star,argue Introduce tne phonogram to the child. Sound out words witn the phonograms and nelp tnem recognize it. Introduce the phonogram word box to the child and helpthem form words.&nbsp; Use tne sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to introduce word lists sequentially</p>\n', NULL, 1, NULL, '2018-08-04 12:15:05', NULL, '2018-07-27 17:37:43', NULL),
(199, 3, 17, 24, 'Month_25', 'Counting Jigsaw 6 - Addition', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/199/jigsaw.png', NULL, 'Adding 2 single digit numbers', '<p>Ask tne child to take all the cards out of tne box and pair them as ajigsaw. Give the child counters (shells <em>I </em>skittles)in a basket. Give awritten paper with sums .Ask the child to see the paper and take the 2 cards.Place the pair of cards next to eacn other Eg .5 and 7. Ask tne child to place counters on tne dots. Tnen show tne child now to put all the counters togetner starting from one card and then moving to tne otner.So,7 and 5 &quot;together&#39;&#39; make 12. This can be a 2 children presentation,where one nas 5, and tne otner nas 7.</p>\n', NULL, 1, NULL, '2018-08-04 12:15:05', NULL, '2018-07-27 17:43:48', NULL),
(200, 3, 17, 25, 'Month_25', 'Equivalent Figures 1 - Geometry', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/200/equvilent fig.jpg', NULL, '1.To maKe the child aware of the relationships between various geometrical shapes and\nintroducing phenomenonlil<e equivalence, similarity etc 2. To prepare the child for fractions\n3.To lay the foundation for measurements of area\n', '<p>Asl&lt; the child to carry the equivalent material to the mat. Introduce the material as &quot;Equivalent Figures AsK the child to separate the groups based on the colour Show him&nbsp; how each of the bigger shapes can be made with the smaller shapes as shown in the presentation. Thisis an exploratory activity and the children must be encouraged to put together any of the pieces to come up with their own findings Thisis a culmination of many&nbsp; of the sensorial activities carried out in level 0.It involves:&bull; Sorting based on colour &bull; Abstract analysis of geometry &bull; Dimensionalanalysis &bull; Exploration A child who has worKed with sorting,pairing, memory exercises earlier.will taKe it further to understand the space occupied or area measurements</p>\n', NULL, 1, NULL, '2018-08-04 12:15:09', NULL, '2018-07-27 17:45:46', NULL),
(201, 3, 16, 25, 'Month_25', 'Blue Reading Set: Object Boxes', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/201/blue set.jpg', NULL, '1.To enable the child to identify and read simple long words 2.To enable the child to identify and read simple long words which also have simple blends in them', '<p>Step 1: Bring one object box to the mat. Object box 1 is used here first. Step 2: Remove the word cards and stack them on the mat. Step 3:Remove the objects one by one and place them on the mat. Step 4:Arrange the objects in a row, one below the other. Step 5: Point to each of the objects andintroduce them individually. Step 6: Pick one word card from the stack and read the word on it. Read the individual sounds in the word and then the entire word. Step 7:Find the object that the word card represents and place it next to that object. Touch the object and the card and say the word aloud.Follow the same procedure for allthe other word cards and objectsin the object box. Place the cards and objects back and ask the child to continue the activity. Follow the same procedure for all the other object boxes.You can present the other object boxes the same day if the child is interested. If the childis not interested to continue. present them on another day.Levers: Beginner: unable to read the words on the cards and unable to match them to the objects Learner: Can read the words on the cards after some attempts and can match them to the objects With few errors Practitioner: Can read the words on the cards accurately and match them to the objects Scholar: Can read the word cards and match them to the objects. He/she looks at an object and finds the corresponding cards</p>\n', NULL, 1, NULL, '2018-08-04 12:15:12', NULL, '2018-07-27 17:47:31', NULL),
(202, 3, 18, 25, 'Month_25', 'TC: Parts of fish 1 - Pictures', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/202/fish.jpg', NULL, '1.To introduce the names of the parts of a fish 2. To enhance the child\'s visualpairing\nability 3. To indirectlyindicate to the child that the parts make up the whole,and each can  be named inisolation 4. Introduction to fish (Animal Kingdom Classification)\n', '<p>Take only the set 1(pictures With names)and set 2 (pictures without names) It is good tostart tnis activity with 4 to 5 pairs of cards Place the controlcard with tne name and picture on tne left side. Tnen take the picture cards and show tne child now to find the highlighted part that is common to both pictures and place rt next to the controlcard.After a few days of worl&lt; with the cards, give the names of eacn part .Do not use tne word cards initially.</p>\n\n<p>&nbsp;</p>\n', NULL, 1, NULL, '2018-08-04 12:15:12', NULL, '2018-07-27 17:49:26', NULL),
(203, 3, 16, 25, 'Month_25', 'Compound Words 1 - Matching', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/203/compound words.png', NULL, 'Compound Words 1 - Matching', '<p>Compound Words 1 - Matching</p>\n', NULL, 1, NULL, '2018-08-04 12:15:13', NULL, '2018-07-27 17:51:36', NULL),
(204, 3, 18, 25, 'Month_25', 'Horseshoe Magnet', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/204/horse magnet.jpg', NULL, 'Horseshoe Magnet', '<p>Horseshoe Magnet</p>\n', NULL, 1, NULL, '2018-08-04 12:15:13', NULL, '2018-07-27 17:53:07', NULL),
(205, 3, 19, 25, 'Month_25', '3 PC Continent Cards 1 - Pictures', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/205/contitents.jpg', NULL, '1.To introduce names and pictures of continents 2.To familiarize tne child With the snape\nof eacn continent in isolation 3. To ennance the child\'s pairing ability\n', '<p>It is good to start this activity with 3 to 4 sets of cards Place the control card with the name and picture on theleft side. Then take tne picture cards and show the child now to find the same picture and place it next to tne card. Tnen show him how to locate the name card and place it on the picture card. After a few days of work with tne cards,give tne names of&nbsp; each part of the card. Do not use the word cards initially. Later wnen children nave started &quot;sight reading&quot;, some children may be able to compare names <em>even </em>before tney start reading using cues like the firstletter or shape ofletters. Sight reading is easier after they !&lt;now the names</p>\n', NULL, 1, NULL, '2018-08-04 12:15:14', NULL, '2018-07-27 17:55:26', NULL),
(206, 3, 21, 25, 'Month_25', 'Culture ', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/206/new logo-1 (1)-1.png', NULL, 'Culture ', '<p>Culture</p>\n', NULL, 1, NULL, '2018-08-04 12:15:15', NULL, '2018-07-27 17:56:22', NULL);
INSERT INTO `t_activities` (`activity_id`, `standard_id`, `subject_id`, `display_order`, `month`, `name`, `image`, `video`, `objective`, `Description`, `tags`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`, `Branch_id`) VALUES
(207, 3, 16, 25, 'Month_25', 'Pink Reading Set 3 - Silent Reading', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/207/pink set.jpg', NULL, 'To help the child read eve words without breaking into syllables', '<p>Take any one box of words <em>I </em>sheet and show the child that you are reading myour mind an&lt;l saying the word outloud</p>\n', NULL, 1, NULL, '2018-08-04 12:15:15', NULL, '2018-07-27 17:58:40', NULL),
(208, 3, 17, 25, 'Month_25', 'Geometric Solids 1 - Introduction', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/208/geometric soilds.jpg', NULL, '1) Introduction to 3D dimensional figures through the sterognostic and visual sense 2) Partial\npairing activities 3) Leading the child to analyze the relationships between 20 and 30 geometry\n', '<p>Introduce the materialto the child as geometrical solids. Place all the solids in a line and the three curvilinear solids rest on three wooden rings, since they would topple over otherwise.The aim at theinrtial stageis not to introduce the names,but to give the child a feelof the solids and helpthem analyze the geometry using their eyes and hands.Isolate any solids and asl&lt; the child, &quot;can <em>you </em>find another solid that can rest on this one or &quot;is similar to this one &nbsp;or &quot;has an identical side to this&#39;. Once the child has understood and is starts connecting different sides of pieces and comparing, leave the child alone to explore</p>\n', NULL, 1, NULL, '2018-08-04 12:15:16', NULL, '2018-07-27 18:01:09', NULL),
(209, 3, 17, 26, 'Month_26', 'Decimal System 2 - Exchange', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/209/decimal value.png', NULL, '1.Reinforce place value and the relationships between units, tens and so on 2. Introduction of carry over - Exchange', '<p>Ask the child to randomly select some quantities from the &quot;Bani&lt;&quot; and carry it in a tray to his mat. A lso ask him to bring the Number Cards 1to 9000 and place it on his mat. Separate the units, tens,hundreds and thousand on the mat and place in separate columns. Then count each of the quantrties starting from the units Eg. Taken - 2 Thousands, 19 hundreds,23 tens and 14 units There are 14 units, we place them next to each otherin a row. When <em>we </em>reach ten,<em>we </em>tell the child we will now put back 1O units in the bank and take a 1O in exchange.We verbally also emphasize, that ten units make a ten. We ask the child to put the 10 units back in the bank and bring one ten in exchange. Then we are left With 4 units. Put the ten in the heap of 1O&#39;s. We then count the tens. There are 23 + 1.When we reach 10 tens,<em>we </em>again exchange for a hundred. So we are left with 4 tens. 2 hundreds are added to the heap of hundreds. This goes on until finally we have: 4 thousands 1 hundred 4 tens 4 units Show the child how to get the corresponding number cards, and readit out - Four thousand one hundred and forty four</p>\n', NULL, 1, NULL, '2018-08-04 12:15:19', NULL, '2018-07-27 18:03:13', NULL),
(210, 3, 17, 26, 'Month_26', 'Equations Box 1- Add', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/210/equation box.png', NULL, 'Equations Box 1- Add', '<p>Equations Box 1- Add</p>\n', NULL, 1, NULL, '2018-08-04 12:15:21', NULL, '2018-07-27 18:05:39', NULL),
(211, 3, 18, 26, 'Month_26', 'Float or sink', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/211/new logo-1 (1)-1.png', NULL, 'Float or sink', '<p>Float or sink</p>\n', NULL, 1, NULL, '2018-08-04 12:15:21', NULL, '2018-07-27 18:11:03', NULL),
(212, 3, 20, 26, 'Month_26', 'Flower Stacker 6 - Points', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/212/flower stacker.jpg', NULL, 'To indicate the correlation between the vertices and sides in a geometric shape', '<p>snow the child to count the points on the snape and the number of rods.Thisis an indirect way of snowing the child how the number of rods coincide wrtn the number of sides formed.</p>\n', NULL, 1, NULL, '2018-08-04 12:15:22', NULL, '2018-07-27 18:12:58', NULL),
(213, 3, 17, 26, 'Month_26', 'Number Dominoes', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/213/new logo-1 (1)-1.png', NULL, 'Number Dominoes', '<p>&nbsp;Number Dominoes</p>\n', NULL, 1, NULL, '2018-08-04 12:15:22', NULL, '2018-07-27 18:14:56', NULL),
(214, 3, 16, 26, 'Month_26', 'Sentence Box 1 - Phrases', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/214/new logo-1 (1)-1.png', NULL, 'Sentence Box 1 - Phrases', '<p>Sentence Box 1 - Phrases</p>\n', NULL, 1, NULL, '2018-08-04 12:15:23', NULL, '2018-07-27 18:16:06', NULL),
(215, 3, 16, 26, 'Month_26', 'TC: Parts of Tortoise 1 - Pictures', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/215/tortoise.jpg', NULL, '1.To introduce the names of the parts of a tortoise 2.To enhance the child\'s visual pairing\nability 3. To indirectlyindicate to the chid that the parts make up the whole,and each can be namedinisolation 4.Introduction to reptiles\n', '<p>Take only the set 1(pictures With names)and set 2 (pictures without names) Itis good to start tnis activity with 4 to 5 pairs of cards Place the controlcard with tne name and picture on tne left side. Tnen take the picture cards and show tne child now to find the highlighted part that is common to both pictures and place rt next to the controlcard.After a few days of worl&lt; with the cards, give the names of eacn part .Do not use tne word cards initially.</p>\n\n<p>&nbsp;</p>\n', NULL, 1, NULL, '2018-08-04 12:15:23', NULL, '2018-07-27 18:18:27', NULL),
(216, 3, 18, 26, 'Month_26', 'Things run on electricity', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/216/new logo-1 (1)-1.png', NULL, 'Things run on electricity', '<p>Things run on electricity</p>\n', NULL, 1, NULL, '2018-08-04 12:15:24', NULL, '2018-07-27 18:19:51', NULL),
(217, 3, 18, 26, 'Month_26', '3 PC Food Chain 1 - Pictures', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/217/new logo-1 (1)-1.png', NULL, '3 PC Food Chain 1 - Pictures', '<p>3 PC Food Chain 1 - Pictures</p>\n', NULL, 1, NULL, '2018-08-04 12:15:24', NULL, '2018-07-27 18:21:03', NULL),
(218, 3, 17, 26, 'Month_26', 'Addition Problem Cards', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/218/addition table1.png', NULL, 'Addition Problem Cards', '<p>Addition Problem Cards</p>\n', NULL, 1, NULL, '2018-08-04 12:15:25', NULL, '2018-07-27 18:23:20', NULL),
(219, 3, 21, 26, 'Month_26', 'Animal Kingdom ', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/219/new logo-1 (1)-1.png', NULL, 'Animal Kingdom ', '<p>Animal Kingdom</p>\n', NULL, 1, NULL, '2018-08-04 12:15:26', NULL, '2018-07-27 18:24:32', NULL),
(220, 3, 16, 26, 'Month_26', 'Phonogram ow', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/220/ow.jpg', NULL, '1.To learn the sounds of phonogram ow 2. To spell accurately 3. To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - crowd, fowl, brown, drowsy, cow Introduce tne pnonogram to the child. Sound out words with the phonograms and help them recognize it. Introduce the phonogram word box to the child and help them form words.&nbsp; Use tne sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to introduce wordlists sequentially</p>\n', NULL, 1, NULL, '2018-08-04 12:15:26', NULL, '2018-07-27 18:26:53', NULL),
(221, 3, 16, 26, 'Month_26', 'Phonogram oi', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/221/oi.png', NULL, '1.To learn the sound of phonogram oi 2. To spell accurately 3. To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - coin,point.spoil Introduce the phonogram to tne child. Sound out words with the pnonograms and help them recognize it. Introduce tne pnonogram word box to the child and help tnem form words.&nbsp; Use the sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-04 12:15:27', NULL, '2018-07-27 18:29:44', NULL),
(222, 3, 16, 26, 'Month_26', 'Phonogram aw', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/222/new logo-1 (1)-1.png', NULL, '1.	To learn the sound of phonogram aw 2. To spell accurately 3. To read fluently ', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - saw, dawn, prawn, tnaw Introduce the phonogram to tne child. Sound out words with the pnonograms and help them recognize it. Introduce tne pnonogram word box to the child and help them form words. Use the sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-04 12:15:27', NULL, '2018-07-27 18:31:56', NULL),
(223, 3, 16, 26, 'Month_26', 'Phonogram au', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/223/new logo-1 (1)-1.png', NULL, '1.	To learn the sound of phonogram au 2. To spell accurately 3.To read fluently ', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - Auto, haunt,maulIntroduce tne</p>\n\n<p>phonogram to tne child. Sound out words with the pnonograms and help them recognize it. Introduce tne pnonogram word box to the child and help tnem form words.&nbsp; Use the sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-04 12:15:28', NULL, '2018-07-27 18:33:27', NULL),
(224, 3, 16, 26, 'Month_26', 'Phonogram ou', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/224/new logo-1 (1)-1.png', NULL, '1.To learn the sound of phonogram ou 2. To spell accurately 3.To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - found, spout, mouth Introduce the phonogram to tne child. Sound out words with the pnonograms and ne1pthem recognize it. Introduce tne pnonogram word box to the child and help tnem form words.&nbsp; Use the sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-04 12:15:29', NULL, '2018-07-27 18:35:39', NULL),
(225, 3, 16, 26, 'Month_26', 'Phonogram oy', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/225/new logo-1 (1)-1.png', NULL, '1.To learn the sound of phonogram oy 2. To spell accurately 3. To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - toy,enjoy Introduce tne pnonogram to the child. Sound out words witn the phonograms and nelp tnem recognize it. Introduce the phonogram word box to the child and helpthem form words.&nbsp;Use tne sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-04 12:15:29', NULL, '2018-07-27 18:37:12', NULL),
(226, 3, 16, 27, 'Month_27', '3 PC National leaders 1 - Pictures', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/226/new logo-1 (1)-1.png', NULL, '3 PC National leaders 1 - Pictures', '<p>3 PC National leaders 1 - Pictures</p>\n', NULL, 1, NULL, '2018-08-04 12:15:31', NULL, '2018-07-28 04:52:17', NULL),
(227, 3, 16, 27, 'Month_27', 'Capital Print equivalence', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/227/new logo-1 (1)-1.png', NULL, 'Capital Print equivalence', '<p>Capital <strong>Print </strong>equivalence</p>\n', NULL, 1, NULL, '2018-08-04 12:15:34', NULL, '2018-07-28 04:53:05', NULL),
(228, 3, 16, 27, 'Month_27', 'Costumes of the World: Pairing', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/228/coustume.jpg', NULL, '1.To help the child to pair the picture tiles with the correct images in the control card (Help the child visually pair the costumes) 2. To explain to the child that people in different  countries wear different types of clothes/costumes', '<p>Step 1: AsK the child to bring the picture tiles in its box to the place of worK and arrange themin a random order on the mat. Step 2:AsK the child to get the controlcard to the&nbsp;&nbsp; place of worK. Step 3:See the topleft image on the controlcard with 2 costumes.Find the picture tile from the groupwhich matches to the first costume and place it close to the costume image and pair them. Step 4: Find the picture tile from the group which matches to the second costume and place it close to the costume image and pair them. Follow the same procedure to pair all the picture tiles with their correct images in the control card. Once the pairing is complete, place the picture tiles backin the tray, one at a time.Ask the child to continue pairing. Levers: Beginner. Unable to match the picture tiles with the costume images in the control card Learner: Matches only a few picture tiles with the costume images in the control card Practitioner:Matches all the picture tiles With the costume images in the control card after some effort Scholar: Matches all the picture tiles with the costume images in the controlcard accurately and tries to identify them</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n', NULL, 1, NULL, '2018-08-04 12:15:34', NULL, '2018-07-28 04:55:20', NULL),
(229, 3, 17, 27, 'Month_27', 'Inscribed, Concentric 2 - Multiple Pieces', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/229/cocentric1.jpg', NULL, 'Geometery Patterns - Superimposed figures', '<p>Introduce the material to the child.Asl&lt; him to carry rt to his mat. Tal&lt;e only circles of 2 siZes,and one triangle. Confirm with the child with 2 circles and one triangle if he remembers, what they are. Else reintroduce. Now tal&lt;e muttiple pieces, and show any one design <em>I </em>patterns Further worl&lt; wrth inscribed and concentric shapes is ENTIRELY EXPLORATORY. The childis free to worl&lt; with a variety of shapes and mal&lt;e different designs.</p>\n', NULL, 1, NULL, '2018-08-04 12:15:35', NULL, '2018-07-28 04:58:59', NULL),
(230, 3, 17, 27, 'Month_27', 'Multiplication Tables - 1', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/230/multi_sheets.png', NULL, '1. Introduce multiplication 2. To help the children to learn the tables by counting', '<p>TaKe the child to the shelf and introduce the material saying this is called the muttiplcation tables AsK the child to carry the board of 2 to his mat. Now take any one board and fill it with sKittle one by one.So <em>we </em>say 2 taken 1 time is 1, 2 2 taken 2 times is 1,2,3.4 and so on upto 2 taken 1o times</p>\n', NULL, 1, NULL, '2018-08-04 12:15:36', NULL, '2018-07-28 05:02:31', NULL),
(231, 3, 18, 27, 'Month_27', 'Terminology Cards Parts of the Frog 1: Picture Pairing', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/231/frog.png', NULL, '1.To introduce the names of the parts of a frog to the child 2. To help the child to pair the pictures with the correct control cards (Help the child visually pair the body parts of a frog) 3.To indirectly introduce to the child that parts make up the whole and each part can be named in isolation 4. To introduce the child to amphibians (Animal kingdom classification)', '<p>Step 1: Pick the control cards from the tray and place themin the bottom right corner of the work mat. Step 2:Arrange the control cards in rows on the mat. Step 3: Pick the picture cards from the tray and place them in the bottom right corner of the mat. Step 4: Take one picture card and say to the child, &nbsp;Let us pair it With the correct controlcard here&quot;.Step 5: Pair the controlcard with the correct picture card. Step 6: Point out the highlighted body parts on both the cards. Pair all the cards in the same manner. Place the picture cards&nbsp; back in the tray.Place the control cards back in the tray.Ask the child to continue pairing of the cards.</p>\n', NULL, 1, NULL, '2018-08-04 12:15:36', NULL, '2018-07-28 05:06:03', NULL),
(232, 3, 16, 27, 'Month_27', 'WW Seq Patterns 3 - Complex', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/232/new logo-1 (1)-1.png', NULL, 'WW Seq Patterns 3 - Complex', '<p>WW Seq Patterns 3 - Complex</p>\n', NULL, 1, NULL, '2018-08-04 12:15:37', NULL, '2018-07-28 05:09:17', NULL),
(233, 3, 16, 27, 'Month_27', 'Living & Non living things', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/233/new logo-1 (1)-1.png', NULL, 'Living & Non living things', '<p>Living &amp; Non living things</p>\n', NULL, 1, NULL, '2018-08-04 12:15:37', NULL, '2018-07-28 05:10:15', NULL),
(234, 3, 18, 27, 'Month_27', 'Food Chain - Lesson', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/234/new logo-1 (1)-1.png', NULL, 'Food Chain - Lesson', '<p>Food Chain - Lesson</p>\n', NULL, 1, NULL, '2018-08-04 12:15:38', NULL, '2018-07-28 05:11:31', NULL),
(235, 3, 21, 27, 'Month_27', 'Plant Kingdom ', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/235/new logo-1 (1)-1.png', NULL, 'Plant Kingdom ', '<p>Plant Kingdom</p>\n', NULL, 1, NULL, '2018-08-04 12:15:39', NULL, '2018-07-28 05:12:13', NULL),
(236, 3, 16, 27, 'Month_27', 'Long \"a\" ', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/236/new logo-1 (1)-1.png', NULL, 'Long \"a\"', '', NULL, 1, NULL, '2018-08-04 12:15:39', NULL, '2018-07-28 05:18:21', NULL),
(237, 3, 16, 27, 'Month_27', 'Long \"e\"', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/237/new logo-1 (1)-1.png', NULL, 'Long \"e\"', '<h1>Them Theme Her Here sever severe interfere cede sphere gene</h1>\n', NULL, 1, NULL, '2018-08-04 12:15:40', NULL, '2018-07-28 05:20:03', NULL),
(238, 3, 16, 27, 'Month_27', 'Long \"o\"', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/238/new logo-1 (1)-1.png', NULL, 'Long \"o\"', '<p>rod rode hop hope mop mope smoKe antelope</p>\n', NULL, 1, NULL, '2018-08-04 12:15:41', NULL, '2018-07-28 05:21:58', NULL),
(239, 3, 16, 27, 'Month_27', 'Long \"u\"', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/239/new logo-1 (1)-1.png', NULL, 'Long \"u\"', '<p>run rune hug, huge fortune immune compute</p>\n', NULL, 1, NULL, '2018-08-04 12:15:42', NULL, '2018-07-28 05:23:06', NULL),
(240, 3, 16, 27, 'Month_27', 'Blue Reading Set: Picture Cards Boxes', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/240/blue set.jpg', NULL, '1.To introduce the simple long words to the child 2. To enable the child to identify and read simple long words', '<p>Step 1: Bring one picture cards box to the mat. Picture cards box 1 is used here first.</p>\n\n<p>Step 2:Remove the cards and stack them on the mat.</p>\n\n<p>Step 3: Separate the word cards from the picture cards. Place them in two stacks.</p>\n\n<p>Step 4:Arrange the picture cards in a row, one below the other.</p>\n\n<p>Step 5: Pick one word card from the stack and read the word on it. Read the individual sounds in the word and then the entire word.</p>\n\n<p>Step 6: Find the picture card that the word card represents and place it next to that card.Touch the cards and say the word aloud. Follow the same procedure for all the other word cards and picture cards in&nbsp; the box. Place the cards back and ask the child to continue the activity. Follow the same procedure for allthe other picture cards boxes. You can present the other picture cards boxes the same dayif the childis interested. If the childis not interested to continue, present them on another day. Levers: Beginner: unable to read thewords on the cards and unable to match them to the pictures Leamer: Can read the words on the cards after some attempts and can match them to the pictures with few errors Practitioner:Can read the words on the cards accurately and match them to the pictures Scholar: Can read the word cards and match them to the pictures. Helshe looks at a picture and finds the&nbsp;&nbsp; corresponding word cards Tags: Month (To be added) Short form of the revels for adding in the assessment software:</p>\n', NULL, 1, NULL, '2018-08-04 12:15:42', NULL, '2018-07-28 05:25:48', NULL),
(241, 3, 16, 28, 'Month_28', 'Counting Rings 5 - Greater Than Less Than', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/241/counting rings.png', NULL, '1.To compare quantities 2. Usage of greater than and less than > < symbols', '<p>Give the child a prepared problem sheet with two numbers and a gap in between as shown below: 7 8 3 2 Take seven rings from the counting rings (blue) and place in a vertical line Then take 8 rings (yellow).Also place in a vertical line.AsK the child which is more, the&nbsp; child says 8. So we say, 7 is lesser than 8 The child has to fill &gt; &lt; Take the symbol from the equations box Show the child that when a number is greater than the other we write 3 &gt; 2 And if lesser than. we write 7 &lt; 8 (in the written problem statement)</p>\n', NULL, 1, NULL, '2018-08-04 12:15:45', NULL, '2018-07-28 05:47:49', NULL),
(242, 3, 19, 28, 'Month_28', 'World Map 2 - Names', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/242/world map.jpg', NULL, 'To introduce ocean and continent names', '<p>After the child has worked with the globe sufficiently, he is fairly clear aboutland and water. It is good to introduce him to the names of the continents at this stage. Use the 3 stage Name lesson:Introduction - Just identify and name the continents by moving fingers over the outline toimpress the shape. On another day repeat the same by pointing to the oceans, and naming them. Recognition - AsK the child &quot;Which is Asia&quot; or &quot;Point out Africa&quot; Confirmation - Asl&lt; the child - &quot;Which is this?&quot;</p>\n', NULL, 1, NULL, '2018-08-04 12:15:47', NULL, '2018-07-28 05:46:01', NULL),
(243, 3, 16, 28, 'Month_28', '3 PC Monuments	1 - Pictures', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/243/monuments.jpg', NULL, '1.To introduce the pictures of monuments 2. To ehnance the child\'s visual pairing ability', '<p>Take only the set 1(pictures With names)and set 2 (pictures without names) Itis good to start tnis activity with 4 to 5 pairs of cards Place the controlcard with tne name and picture on tne left side. Tnen take the picture cards and show tne child now to find the same picture and place it next to tne card.After a few days of work with the cards, give the&nbsp; names of each part of tne card.Do not use tne word cards initially.</p>\n', NULL, 1, NULL, '2018-08-04 12:15:48', NULL, '2018-07-28 05:44:27', NULL),
(244, 3, 17, 28, 'Month_28', 'Bar Graph 1', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/244/new logo-1 (1)-1.png', NULL, 'Bar Graph 1', '<p>Bar Graph 1</p>\n', NULL, 1, NULL, '2018-08-04 12:15:48', NULL, '2018-07-28 05:43:35', NULL),
(245, 3, 17, 28, 'Month_28', 'Clock 1 - Simple', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/245/clock.png', NULL, 'To introduce time Introduction to clock reading', '<p>Introduce the materialas clocK to the child. Show the child now to carry the materialto her/his mat TaKe the red numbers and place 1and 2,on the clock and ask the child to&nbsp; place them in sequence till 12 Introduce the name &quot;shorter handis called &quot;the hour needle&#39; Place the minute hand at 12, and tell the child we are now going to move the hour needle Moveit to a number, say 3, and snow the child where the arrowis pointing. Tell the child&nbsp;&quot;the time is now 3 o&#39;clock&quot; Move rt to a couple of more numbers. and tell the time. AsK the child to say the time in a couple or more instances</p>\n', NULL, 1, NULL, '2018-08-04 12:15:49', NULL, '2018-07-28 05:43:11', NULL),
(246, 3, 17, 28, 'Month_28', 'Number Line 2 - Addition', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/246/number line.png', NULL, 'Addition of 2 single digit numbers', '<p>Ask the child to take the tray and the number line to his <em>I </em>her mat Give the child a prepared problem sheet of addition Eg 7 + 5 = Keep the set of red arrows one inside the other on the left side on top of the number line, and the other set of black arrows on the right side. Look for the arrow no 7 from the red set and place it on the number line, and tell the child we are now at number 7. Then select the arrow no 5 from the black set. Keep at O and verify that it is the 5th arrow. This is very important. Then move arrow no 5, to start at 7 (where the red arrow ends) Tell the child, &quot;We have now moved 5 steps forward&quot;, and we are now at 12 Record the answer on paper</p>\n', NULL, 1, NULL, '2018-08-04 12:15:50', NULL, '2018-07-28 05:49:58', NULL),
(247, 3, 17, 28, 'Month_28', 'Dot Game 1 - With Dots and dots carryover', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/247/decimal value.png', NULL, 'Addition of large numbers (3 digit numbers) with carry over with dots', '<p>Give the child problem statements to add more than two (start with 3 or 4 and then increase) 3-digit numbers AsK the child to write the numbersin the columns on the right&nbsp; Then show her <em>I </em>him how to draw corresponding number of dots starting from units. Eg.If the numbers are 376 . 578 and 927 In the units column. first draw 6 dots,then draw 7 dots in the tens column and then three dotsin the hundred. Then put a small ticK next to 376 on the right toindicateit has been marKed Next,draw 8 dotsin units, 7 dots in tens and 5 in hundreds, continuing from where you have left off previous time. Next. draw 7 dots in units, 2 dotsin tens and 9 in hundreds, continuing from where you have left off previous time. So now you have in the Units -21 dots.Tens - 16 dots Hundreds - 17 dots First go to the units column. StriKe out 1O dots and add one dot at the bottom in the square preferably in a different colour, say red (indicates carry over).Similany strike out another row of 1O . we&nbsp;&nbsp; have the second carry over dot. We are left with 1dot in the third row. Write &quot;1&quot; in the bottom row of the units column. We then taKe the 2 carryover dots and add them as red dots in the tens column.We already had 16 dot, so now <em>we </em>have 18. StriKe out one 10&#39;s row,and write below a red a dot. We are left with 8 dots.Write &quot;8&quot; in the bottom row of the tens column. Similarlyin the hundreds, <em>we </em>have 18 dots, so we write 8 below, and add 1 to the thousands column So the answer <em>we </em>have below is 1881Write the result 1881 in the result box on the bottom on the right side</p>\n', NULL, 1, NULL, '2018-08-04 12:15:50', NULL, '2018-07-28 05:52:06', NULL),
(248, 3, 18, 28, 'Month_28', 'Lifecycle of a hen', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/248/new logo-1 (1)-1.png', NULL, 'Lifecycle of a hen', '<p>Lifecycle of a hen</p>\n', NULL, 1, NULL, '2018-08-04 12:15:51', NULL, '2018-07-28 05:53:14', NULL),
(249, 3, 18, 28, 'Month_28', 'Solar System', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/249/solar system.jpg', NULL, '1.To introduce the solar system 2. Introduce the terms orbits,sun, planets. revolve 3.\nIntroduce as many prepositions and adjectives lil<e after, before, third, far,next to\n', '<p>This activity could be introduced as a small group presentation.First introduce the sun to the children. Do you !&lt;now that there are many planets that revolve around the sun, the sun is at the centre of the solar system &quot;Our earth is a planet that revolves around the sun&#39;, and show them earth Introduce the terms -sun, planets, revolve Encourage children to use adjectives to describe the solar system lil&lt;e bigger, small,blue. red, last, first Asl&lt; questions that Will provol&lt;e answers lil&lt;e that. Use prepositions lil&lt;e after, before. in the middle, and so on. We could asl&lt; which is the third planet, fifth from outside and so on We do not asl&lt; the names of the planets at this stage</p>\n', NULL, 1, NULL, '2018-08-04 12:15:51', NULL, '2018-07-28 05:55:24', NULL),
(250, 3, 17, 28, 'Month_28', 'Squares of numbers 1 - Strips', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/250/square num.jpg', NULL, '1.To introduce squares of number 2. To help the child discover that the squares are\nindeed multiples of the number\n', '<p>Ask the child to carry the material to the mat. Ask her/ him to segregate all the pieces based on colour Take the square of a number and place it in on the mat Take the corresponding strips. Place one by one on the square Count the number of strips While placing For example:While placing the first 6, say 1,the second 6 say 2 At the end we say, so 6 times 6 is 36. This activity enables the child to arrive over a period of time to discovering that squares are also multiples of the number. in fact the same muttiple as the number itself as,16is 4 taken 4 times</p>\n', NULL, 1, NULL, '2018-08-04 12:15:52', NULL, '2018-07-28 05:57:14', NULL),
(251, 3, 18, 28, 'Month_28', 'TC: Parts of a Flower 1 - Pictures', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/251/flower.jpg', NULL, '1.To introduce the names of the parts of a flower 2. To ehnance the child\'s visual pairing\nability 3. To indirectly indicate to the child that the parts make up the whole,and each can  be named in isolation 4.Introduction to flowers (Plant Kingdom)\n', '<p>Take only the set 1(pictures With names)and set 2 (pictures without names) It is good to start tnis activity with 4 to 5 pairs of cards Place the controlcard with tne name and picture on tne left side. Tnen take the picture cards and show tne child now to find the highlighted part that is common to both pictures and place rt next to the controlcard.After a few days of worl&lt; with the cards, give the names of eacn part .Do not use tne word cards initially.</p>\n\n<p>&nbsp;</p>\n', NULL, 1, NULL, '2018-08-04 12:15:52', NULL, '2018-07-28 06:00:16', NULL),
(252, 3, 17, 28, 'Month_28', 'Decimal System 3 - Addition', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/252/decimal value.png', NULL, 'Addition of multiple large numbers', '<p>This activityis done by 2 children. Write 2 numbers on 2 slips of paper and asK each of the children to select one.Ask them to go to the banK(decimal system complete) and bring the quantity assigned to them. Also ask them each to bring a small number tray.Ask them to taKe out their number from the number box.AsK each of them to place their number cards one below the other in columns. AsK them to bunch all their quantities on the mat and you could ask one child to sort out into columns and do the actual adding up and carry over. ( in the same way as DecimalSystem 2 - Exchange) The same child must also bring the Number Card 1 to 9000 and take out the number cards denoting the answer. We also ask him to select the sign from the equation box that denotes this process (+) We ask both the children to record the sum on maths paper (with squares).So <em>we </em>emphasize to them how each of them had a quantity and togetherit all added up to .... say for example 1226. Repeat with each of the children doing an addition. The exercise can be carried out by 3 children also since there are 3 small number trays.Refer video in Decimal System Exchange for detailed procedure</p>\n', NULL, 1, NULL, '2018-08-04 12:15:53', NULL, '2018-07-28 06:01:53', NULL),
(253, 3, 17, 28, 'Month_28', 'Geometric Solids 2 - Cards', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/253/geometric soilds.jpg', NULL, '1) Partial pairing activities 2) Leading the child to analyze the relationships between 2D\nand 3D geometry\n', '<p>In a box there are five cards: 1. Equilateral triangle 2. Isosceles Triangle 3. Rectangle 4. Circle 5. Square These cards nave dimensions that correspond with the different faces the solids posses. Place the solids randomly around and place tne cards in a row leaving&nbsp;&nbsp; some space in between. Indicate a card and asK tne child can you find a solid that can be placed exactly on this card?&#39;The activity continues until tne solids are found for all the cards. Exercises 1. Isolate one card and asK the child can you find out all the solids that can be placed on this card&quot;. 2. Isolate a solid and asK the child &quot;can you find all the cards that can be placed on top, below and the sides of tne solids&quot;.</p>\n', NULL, 1, NULL, '2018-08-04 12:15:53', NULL, '2018-07-28 06:04:11', NULL),
(254, 3, 16, 28, 'Month_28', 'Phonogram ew', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/254/ew.png', NULL, '1.To learn the sounds of phonogram ew 2. To spell accurately 3. To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - new, blew Introduce tne phonogram to the child. Sound out words witn the phonograms and nelp tnem recognize it. Introduce the phonogram word box to the child and helpthem form words. Use tne sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-04 12:15:54', NULL, '2018-07-28 06:11:22', NULL),
(255, 3, 16, 28, 'Month_28', 'Phonogram oa', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/255/oa.png', NULL, '1.To learn the sounds of phonogram oa 2. To spell accurately 3.To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - toad, ftoat,croaK Introduce the phonogram to tne child. Sound out words with the pnonograms and ne1pthem recognize it. Introduce tne pnonogram word box to the child and help tnem form words. Use the sentence box tiles/ green lists <em>I </em>booKs <em>I </em>words written on papers to introduce word lists sequentially</p>\n', NULL, 1, NULL, '2018-08-04 12:15:54', NULL, '2018-07-28 06:13:54', NULL),
(256, 3, 16, 28, 'Month_28', 'Phonogram oe', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/256/new logo-1 (1)-1.png', NULL, '1.To learn the sounds of phonogram oe 2. To spell accurately 3.To read fluently ', '<p>1.SAMPLE WORDS (for teacher&#39;s understanding) - toe, canoe Introduce the phonogram to the child. Sound out words witn the phonograms and nelp tnem recognize it. Introduce the phonogram word box to the child and helpthem form words.s Use tne sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-04 12:15:55', NULL, '2018-07-28 06:16:32', NULL),
(257, 3, 16, 28, 'Month_28', 'Phonogram ue', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/257/ue.png', NULL, '1.To learn the sounds of phonogram ue 2. To spell accurately 3.To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - cruel, affluent, duet Introduce tne</p>\n\n<p>phonogram to tne child. Sound out words with the pnonograms and help them recognize it. Introduce tne pnonogram word box to the child and help tnem form words.&nbsp; Use the sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-04 12:15:55', NULL, '2018-07-28 06:19:51', NULL),
(258, 3, 16, 28, 'Month_28', 'Phonogram ui', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/258/new logo-1 (1)-1.png', NULL, '1.To learn the sounds of phonogram ui 2. To spell accurately 3. To read fluently ', '<p>1.SAMPLE WORDS (for teacher&#39;s understanding) - Fruit, cruise, suit Introduce the phonogram to tne child. Sound out words with the pnonograms and ne1pthem recognize it. Introduce tne pnonogram word box to the child and help tnem form words.&nbsp; Use the sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-04 12:15:56', NULL, '2018-07-28 06:24:14', NULL),
(259, 3, 16, 29, 'Month_29', 'Phonogram ie', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/259/ie.png', NULL, '1. To learn the sound of phonogram ie 2. To spell accurately 3. To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) chief, priest, field Introduce thephonograms ie to tne child. Sound out words with the phonograms and help tnem recognize it. Introduce the phonogram word box to the child and help them form words. Use the sentence box tiles/ greenlists <em>I </em>books <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-04 12:16:00', NULL, '2018-07-31 05:56:57', NULL),
(260, 3, 17, 29, 'Month_29', 'Counting Jigsaw 7 - Greater Than Less Than', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/260/jigsaw.png', NULL, '1.Introduce Greater than and less than for numbers and quantities less than 10\n2. Enhances fine motor skills', '<p>Ask the child to do the jigsaw as usual. Then give the child a bowlof counters like shells or skittles or small tokens. Take any 2 pairs of cards, and place side by side with a gap in between Ask the child to place the skittles on the dots on the card on theleft side. When the dots are filled with skittles. tell the child,nowlet us see which side has &nbsp;more&quot; Start transferring the skittles to the right side card Eg If you have 7 and 3, only 3 skittles Will be transferred,4 will beleft over, so we tell the child &quot;7 has more skittles&#39;&#39;, and place the greater than symbol,<em>we </em>tell the child &quot;7 is greater than 3&bull; If you have 5 and 8, then we transfer all 5 skittles and say &#39;we have less dots on 5&quot;, use the lesser than symbol, andsay &bull;5islesser than 8</p>\n', NULL, 1, NULL, '2018-08-04 12:16:02', NULL, '2018-07-31 05:59:28', NULL),
(261, 3, 16, 29, 'Month_29', '3 PC National Symbols 2 - Words', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/261/symbol.jpg', NULL, '1.To enhance the child\'s reading sl<ill and give meaning to the \"read word\'2. To be able to\nread and identify the National Symbols 3. To enhance the child\'s pairing ability (like match the following)\n', '<p>This activity cannot be started until the child has worked with the controlcard long enough to recognize allthe pictures Itis good to start this activity with only 3 to 4 sets of cards for children who may not be ready for a lot of reading. Tal&lt;e about 3 -4 picture cards, and place them on top /left side in a line. Then we look at the name cards. Read it and find the corresponding picture. Place it beside the picture card. The chidren may choose to do the same with the controlcard also, with sight reading. They would see the first letter or thelength of the word , and pair the word with the controlcard. It is absolutely fine as this will set the pattern for reading.</p>\n', NULL, 1, NULL, '2018-08-04 12:16:03', NULL, '2018-07-31 06:09:47', NULL),
(262, 3, 16, 29, 'Month_29', 'Flags Pairing 3 - Names', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/262/new logo-1 (1)-1.png', NULL, 'Flags Pairing 3 - Names', '<p>Flags Pairing 3 - Names</p>\n', NULL, 1, NULL, '2018-08-04 12:16:03', NULL, '2018-07-31 06:11:18', NULL),
(263, 3, 17, 29, 'Month_29', 'Measurements (Linear)', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/263/new logo-1 (1)-1.png', NULL, 'Measurements (Linear)', '<p>Measurements (Linear)</p>\n', NULL, 1, NULL, '2018-08-04 12:16:04', NULL, '2018-07-31 06:12:30', NULL),
(264, 3, 17, 29, 'Month_29', 'Sight Words Level 2', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/264/sight.jpg', NULL, '1.Introducing words that occur commonly, but cannot be read phonetically 2. To help the\nchild read books faster and more smoothly,through \"Word Recognition 3.To aid in all future reading Where \"pattern reading\" is needed like reading music\n', '', NULL, 1, NULL, '2018-08-04 12:16:05', NULL, '2018-07-31 06:15:46', NULL),
(265, 3, 20, 29, 'Month_29', 'Threading Quadrilaterals 4 - Number of sides', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/265/new logo-1 (1)-1.png', NULL, 'Threading Quadrilaterals 4 - Number of sides', '<p>Threading Quadrilaterals 4 - Number of sides</p>\n', NULL, 1, NULL, '2018-08-04 12:16:05', NULL, '2018-07-31 06:21:35', NULL),
(266, 3, 16, 29, 'Month_29', 'Rhyming Words 2 - Other Words', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/266/rhy1.png', NULL, 'Rhyming Words 2 - Other Words', '<p>Rhyming Words 2 - Other Words</p>\n', NULL, 1, NULL, '2018-08-04 12:16:06', NULL, '2018-07-31 06:31:38', NULL),
(267, 3, 19, 29, 'Month_29', 'Globe 2 - World Map 3', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/267/globe.jpeg', NULL, 'To connect the globe and world map', '<p>After tne child has worked sufficiently with the globe, we introduce tne world map to him. Ask tne child to carry the globe and world map to his mat. We can say &quot;&quot;if tne earth were ftat, tnisis wnat it wouldlook like&quot;&quot; Show tne child now the continents on both are in tne same colour. We tell the child this is a map</p>\n', NULL, 1, NULL, '2018-08-04 12:16:06', NULL, '2018-07-31 06:33:49', NULL),
(268, 3, 16, 29, 'Month_29', '3 PC Tools 2 - Words', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/268/tools.png', NULL, '1.To enhance the child\'s reading sl<ill and give meaning to the \"read word\'2. To be able to\nread andidentify the Tools 3. To enhance the child\'s pairing ability (lil<e match the following)\n', '<p>This activity cannot be started until the child has worKed with the controlcard long enough</p>\n\n<p>to recognize allthe pictures Itis good to start this activity with only 3 to 4 sets of cards for children who may not be ready for a lot of reading. Tal&lt;e about 3 -4 picture cards,and place them on top /left side in a line. Then we 1001&lt; at the name cards. Read it and find the corresponding picture. Place it beside the picture card.Watch the video of 3 PC&nbsp; Continents to view how any 3 Part Card must be presented (Month 30) The chidren may choose to do the same with the controlcard also, with sight reading. They would see the first letter or thelength of the word , and pair the word with the controlcard. It is absolutely fine as this will set the pattern for reading</p>\n', NULL, 1, NULL, '2018-08-04 12:16:07', NULL, '2018-07-31 06:36:06', NULL),
(269, 3, 21, 29, 'Month_29', 'Community Helpers ', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/269/new logo-1 (1)-1.png', NULL, 'Community Helpers ', '<p>Community Helpers</p>\n', NULL, 1, NULL, '2018-08-04 12:16:07', NULL, '2018-07-31 06:38:22', NULL),
(270, 3, 19, 29, 'Month_29', 'India Map', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/270/india map.png', NULL, '1.Exploring various states of India 2. To develop logical reasoning 3.To improve spatial\nanalysis\n', '<p>Introduce tne material to the child as India puzzle map. Also introduce the child to the control map. snow the child how to carry both maps to his/her mat. Now place both maps side by side.Take out a few of tne pieces ( say tne bottom 4 states) out of the puzzle map and place randomly around. Keep the control map, and show tne child now to take any one of the pieces and place on the control map and cneck where it belongs and placeit back on the India map.Over a period of time, childrenlearn by themselves to take out more number of pieces and solve the puzzle</p>\n', NULL, 1, NULL, '2018-08-04 12:16:08', NULL, '2018-07-31 06:42:48', NULL),
(271, 3, 16, 29, 'Month_29', 'Phonogram ei', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/271/new logo-1 (1)-1.png', NULL, '1.To learn the sound of phonogram ei 2. To spell accurately 3. To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) vein, their, skein Introduce the phonograms ie to tne child. Sound out words with the phonograms and help tnem recognize it. Introduce the phonogram word box to the child and help them form words. Use the sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to introduce word lists sequentially</p>\n', NULL, 1, NULL, '2018-08-04 12:16:09', NULL, '2018-07-31 06:44:53', NULL),
(272, 3, 16, 29, 'Month_29', 'Phonogram ai', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/272/ai.jpg', NULL, '1.To learn the sound of phonogram ai 2. To spell accurately 3. To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - train, despair, detail Introduce the phonograms ey to the child. Sound out words witn the phonograms and nelp tnem recognize it. Introduce the phonogram word box to the child and help them form words. Use the sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-04 12:16:09', NULL, '2018-07-31 06:46:42', NULL),
(273, 3, 16, 29, 'Month_29', 'Phonogram ay', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/273/new logo-1 (1)-1.png', NULL, '1.To learn the sound of phonogram ay 2. To spell accurately 3. To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - spray, essay,display. always Introduce the phonograms ey to tne child. Sound out words With the pnonograms and nelpthem recognize it. Introduce the phonogram word box to the child and help them form words. Use the sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to introduce word lists sequentially</p>\n', NULL, 1, NULL, '2018-08-04 12:16:10', NULL, '2018-07-31 06:48:58', NULL),
(274, 3, 16, 29, 'Month_29', 'Life-cycle of a Butterfly 3: Story', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/274/butterfly.jpg', NULL, '1.To explain the stagesin the life-cycle of a butterfty to the child 2.To reinforce the names\nof the stagesin the life-cycle of a butterfly to the child 3.To introduce the concept of a life­ cycre of an organism to the chid\n', '<p>Step 1: AsK the child to bring the materialto the place of worK and place rt on the mat.</p>\n\n<p>Step2:Remove theinsets and place them randomly on the mat.</p>\n\n<p>Step 3:Address the child and say, Lers place the insets in the board&quot;.</p>\n\n<p>Step 4: Find the inset that will fit correctly on the board&#39;s base and place it. Follow the same procedure to fit in allthe insets.</p>\n\n<p>Step 5: Once all the insets are placed bacK, asK the child to continue the activity.</p>\n\n<p>Beginner: Unable to place the insets in the board Learner: Places the insets in the board after several attempts Practitioner:Places the insets in the board correctly Scholar: Places the insets in the board correctly.He/she also places the insets in the correct order on the mat (Based on the size of the inset)</p>\n', NULL, 1, NULL, '2018-08-04 12:16:10', NULL, '2018-07-31 06:51:54', NULL),
(275, 3, 16, 29, 'Month_29', 'Phonogram ey', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/275/ey.jpg', NULL, '1.To learn the sound of phonogram ey 2. To spell accurately 3. To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - monkey, valley,Kidney Introduce the phonograms ey to the child. Sound out words witn the phonograms and help them recognize it. Introduce the phonogram word box to the child and help them form words.&nbsp; Use the sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to introduce word lists sequentially</p>\n', NULL, 1, NULL, '2018-08-04 12:16:11', NULL, '2018-07-31 06:56:32', NULL),
(276, 3, 16, 30, 'Month_30', '3 PC Festivals 2 - Words', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/276/festivals.jpg', NULL, '1.To enhance the child\'s reading skill and give meaning to the \"read word\'2. To be able to\nread and identify the Festivals 3. To enhance the child\'s pairing ability (liKe match the following)\n', '<p>This activity cannot&nbsp; be started untill the child has worked with the control card long enough to recognize all the pictures. Its good to start this activity with only 3 to 4 sets of cards for childern who may not be ready for a lot of reading. Take about 3-4 picture cards and place them on top/left side in a line.Then we look at the name cards. Read it and find the corresponding picture. Place it beside the picture card.The childern may choose to do the same with the control card also,with sight reading.They would see the first letter of the length of the word and pair the word with the control card. It is absolutely fine as this will set the pattern for reading&nbsp; &nbsp; &nbsp; &nbsp;</p>\n', NULL, 1, NULL, '2018-08-04 12:16:14', NULL, '2018-07-31 08:19:57', NULL),
(277, 3, 17, 30, 'Month_30', 'Geometric Solids 3 - Names', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/277/geometric soilds.jpg', NULL, 'To introduce the names of the solids', '<p>Ask the child to carry the material to his mat. Isolate any two,and give a 3 stage name</p>\n\n<p>lesson. Give 2 at a time <em>o</em><em>ver </em>a period of 8- 10 days.We nave ten geometricalsolds 1. Cube 2. Cuboid 3. Triangular prism 4. Square pyramid 5. Hemisphere 6. Cylinder 7. Cone 8.Sphere 9. Ellipsoid 10.Ovoid</p>\n', NULL, 1, NULL, '2018-08-04 12:16:16', NULL, '2018-07-31 08:24:24', NULL),
(278, 3, 16, 30, 'Month_30', 'Reading Big Words', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/278/new logo-1 (1)-1.png', NULL, 'Reading Big Words', '<p>Reading Big Words</p>\n', NULL, 1, NULL, '2018-08-04 12:16:17', NULL, '2018-07-31 08:25:32', NULL);
INSERT INTO `t_activities` (`activity_id`, `standard_id`, `subject_id`, `display_order`, `month`, `name`, `image`, `video`, `objective`, `Description`, `tags`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`, `Branch_id`) VALUES
(279, 3, 19, 30, 'Month_30', 'Directions Game 3 - Control Sheet', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/279/direction game.jpg', NULL, '1.Reinforce all 8 directions 2. Indirectly showing the child that different places are in different directions\n', '<p>Ask the child to place the material in the middle of the mat. The child may need help carrying this materialif it is too heavy for him. Show him how to take out allthe pieces and place randomly around the board Then place one piece in a slot and ask the child to fill in the rest wherever he likes it. Then ask him to place the arrows appropriately After he has placed all the pieces, show him how to use the control sheet Point to the first sentence and say The bank is in the ---------- &nbsp;and find the right direction Complete the controlsheet The child may rearrange the pieces and repeat the exercise</p>\n', NULL, 1, NULL, '2018-08-04 12:16:17', NULL, '2018-07-31 08:27:16', NULL),
(280, 3, 18, 30, 'Month_30', 'Convex Lens', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/280/new logo-1 (1)-1.png', NULL, 'Convex Lens', '<p>Convex Lens</p>\n', NULL, 1, NULL, '2018-08-04 12:16:18', NULL, '2018-07-31 08:28:34', NULL),
(281, 3, 18, 30, 'Month_30', 'Concave Lens', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/281/new logo-1 (1)-1.png', NULL, 'Concave Lens', '<p>Concave Lens</p>\n', NULL, 1, NULL, '2018-08-04 12:16:19', NULL, '2018-07-31 08:29:59', NULL),
(282, 3, 19, 30, 'Month_30', '3 PC Continent Cards 2 - No control Card', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/282/control card.png', NULL, '1.To enhance the child\'s reading sl<ill and give meaning to the \"read word\'2. To famiiarize the child with the shape of each continent in isolation 3. To enhance the child\'s pairing ability\n', '<p>This activity cannot be started until the child has worKed with the controlcard long enough to recognize an the pictures Itis good to start this activity with only 3 to 4 sets of cards for children who may not be ready for a lot of reading. Tal&lt;e about 3 -4 picture cards,and place them on top /left side in a line. Then we looK at the name cards. Read it and find the corresponding picture Place it beside the picture card</p>\n', NULL, 1, NULL, '2018-08-04 12:16:19', NULL, '2018-07-31 08:39:23', NULL),
(283, 3, 17, 30, 'Month_30', 'Subtraction Game 1 - Counters', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/283/new logo-1 (1)-1.png', NULL, '1.To introduce subtraction using counters 2.To introduce the terms - Have, Give away,\nLeft with\n', '<p>This is an individualpresentation done with two boards Introduce the material to the child as &nbsp;subtraction Game&quot; and asK teh child to carry the materialto his chowl&lt;i. Tal&lt;e one board randomly and place it on the tray Then tal&lt;e a second board which has lower quantity and place it next to the first board Both boards need to be aligned ( top and&nbsp; bottom ) and thisis the purpose of using the tray. The holes need to be aligned perfectly Now fill the holes in tray 1 {bigger number)with sKittles. We say we want to &quot;give away to&bull; Move the counters from tray 1to tray 2 starting from the bottom. Count the number of counters left. We then say, we had 5,we gave away 2, we areleft with 3 KEY WORDS - Have, Give away,Left with</p>\n', NULL, 1, NULL, '2018-08-04 12:16:20', NULL, '2018-07-31 08:43:21', NULL),
(284, 3, 21, 30, 'Month_30', 'Earth and Nature ', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/284/new logo-1 (1)-1.png', NULL, 'Earth and Nature ', '<p>Earth and Nature</p>\n', NULL, 1, NULL, '2018-08-04 12:16:21', NULL, '2018-07-31 08:44:15', NULL),
(285, 3, 16, 30, 'Month_30', 'Homophones oi/oy', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/285/new logo-1 (1)-1.png', NULL, '1.To learn that oi/oy sound the same 2. To spell accurately 3.To read fluently', '<p>SAMPLE WORDS Boy Boil Toy Toil Employ embroilAs they read the words, children start learning words that have oiand words that have oy.It may take a while, and they may write incorrect spellings. It will get automatically corrected as the read more</p>\n', NULL, 1, NULL, '2018-08-04 12:16:21', NULL, '2018-07-31 08:45:56', NULL),
(286, 2, 13, 11, 'Month_11', 'Counting Rings 2-Arrangement', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/286/countinf rings.jpg', NULL, '1.Colour reinforcement\n2.Visual reinforcement of increasing quantity\n3.Foundation for loose counting \n4.Indirect correlation between height and length\n5.Fine Motor skill development', '<p>After the child has worked sufficiently with the quantity box and is familiar with number names. we introduce loose counting With the rings. Place the material on the mat with 1 on the left side and 1O on the right. Show the child how to remove the ring from the rod by removing it and holding it firmly between 2 fingers. One by one, remove all rings starting from 1.Place the rings in a vertical line below the base. This arrangement is important for the child to understand the quantity. When arranged in this manner, there is a clear understanding of quantity. Ask the child to put the rings back on the rods starting from 1 going to 10. It is simpler for the child to count in this format. Ask the child to put the rings back on the rods, and count while doing so. This counting exercise has control built into it, since the child will know if there are less or excess rings. It also helps the child correlate the quantity With the length of the rod.</p>\n', NULL, 1, NULL, '2018-08-04 15:35:37', NULL, '2018-08-04 15:35:37', NULL),
(287, 2, 22, 11, 'Month_11', 'Pouring Liquids', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/287/pouring liquids.jpg', NULL, '1.Excellent for improving fine motor skills 2. Teaches the child to pour from one container\nto another 3.Very important daily life skill -pouring liquids\n', '<p>Take the child to the shelf and introduce the material. This is the &quot;Pouring liquids set&quot; . Ask the child to carry it to his oil cloth chowki. After he has placed the set down, ask&nbsp;him to bring a napkin. Then be seated and take out all components from the tray and place on the chowki. Keep the tray on the side or below chowki. Now arrange the 3 small glasses on one side. Ask the child to take the jug and bring some water in it. Place it on the other side. Place the three small glasses on next to another in a row. Place the jug filled With water on the right side. Show the child how to hold the jug and pour slowly and carefully into the&nbsp; glass upto the mark&nbsp;without spilling. In case the child spills water on the table while pouring, show him how to clean up.</p>\n', NULL, 1, NULL, '2018-08-04 15:24:35', NULL, '2018-08-04 15:24:35', NULL),
(288, 2, 13, 11, 'Month_11', 'Knobless Cylinders 2 - Height Pair', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/288/cylinders.jpg', NULL, '1.To help the child become conscious of dimension.\n2. To compare and understand heights', '<p>Ask tne child to carry the material to nis mat. One by one take all the cylinders out and place randomly around tne board. Show tne child now to separate the cylinders into 2 groups based on tne colour.Tnen take any one cylinder in one colour. say yellow, and find the cylinder tnat has the same height in green. Pair one next to the other so that the child can see the heights are same. Use your fingers to show the height is same.</p>\n', NULL, 1, NULL, '2018-08-04 14:15:51', NULL, '2018-08-04 14:15:52', NULL),
(289, 2, 13, 11, 'Month_11', 'Quantity Box 2 - Arrangement', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/289/quantity rods.jpg', NULL, 'Laying the foundation for the relation between quantity and lengths', '<p>Laying the foundation for the relation between quantity andlengths Place the quantity box in front of the child to the left. Ensureyou leave sufficient place between the box and the child to arrange tne rods. Use your index finger and your thumb to remove each rod. Start with thelast set (grey) and arrange them in a straight line starting from the top left corner. Arrange all the rodsin parallel rows neatly so that tney form perfect rows and columns.The rows must be arranged so that they decrease in length.All the rods are left aligned.</p>\n', NULL, 1, NULL, '2018-08-04 14:27:54', NULL, '2018-08-04 14:27:55', NULL),
(290, 2, 22, 11, 'Month_11', 'Magnetic Calendar 1 - Observe Date Change', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/290/magnectic calender.jpg', NULL, 'Understanding change on a daily basis', '<p>Ask the children to observe the dates while you paste them on board using magnetic tabs and repeat the date and day and season witht the children. Gradually increase the level of involevemnt of every child every day to change the dates according to the calender.</p>\n', NULL, 1, NULL, '2018-08-04 14:31:23', NULL, '2018-08-04 14:31:23', NULL),
(291, 2, 12, 11, 'Month_11', 'Community Helpers', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/291/community helpers.jpg', NULL, 'Understanding various community helpers and their roles and increase exposure of children to various professions.', '<p>Introduce various community helpers through pictures. Brief children about their roles and how they help the society.&nbsp; Teachers can introdcing parining activity to reinforce understanding of these community helpers. Match pictures of the below given exmaple with their tools they use in their day to day work.</p>\n\n<p>Examples; Doctor, Policeman, Lawyer, Teacher, Cobbler, Postman, Sweeper, Farmer, Fire Fighter, Soldier, Plumber, Electrician&nbsp;etc.</p>\n', NULL, 1, NULL, '2018-08-04 14:38:56', NULL, '2018-08-04 14:38:56', NULL),
(292, 2, 13, 11, 'Month_11', 'Circle Sorter 3 - Gradation', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/292/circle sorter.jpg', NULL, '1.To enhance visual dimensional analysis \n2. To help the child work without a control\nmechanism \n3. To move towards an abstract understanding of 20 sizes\n', '<p>Ask tne child to take tne circle sorter to nis work area. After you are seated with tne child, ask him to remove all tne circles from the board and place them around randomly. Then take away the board. .Take the largest one and place it to one side. Then take each of the min order of size and place them all in a straight line.&nbsp;This shows him how to arrange the circles from big to small. Point out to tne decreasing sizes. Ask the child to repeat the activity after mixing up tne circles.</p>\n', NULL, 1, NULL, '2018-08-04 14:46:00', NULL, '2018-08-04 14:46:00', NULL),
(293, 2, 22, 11, 'Month_11', 'Straining 2 - Forceps', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/293/balls forceps.jpg', NULL, '1.Excellent for improving fine motor skills \n2. This daily life activity teaches the child to use the forceps', '<p>Ask the child to keep the straining set ready on tne chowki and call you.show the child now to use the forceps to transfer the balls from one container to another. Use a napkin to wipe any wet drops that may spill.&nbsp;<br />\n&nbsp;</p>\n', NULL, 1, NULL, '2018-08-04 14:49:58', NULL, '2018-08-04 14:49:58', NULL),
(294, 2, 22, 11, 'Month_11', 'Vowel cards 2 - Starting sound', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/294/vowel cards.jpg', NULL, '1.To make the child aware of the first sound in 3 letter words \n2. Introduction to writing \n3.Phonetic awareness\n', '<p>Oral Phonetic Analysis - Identify sounds in succession in a word RULES - Same as OPA 1 (Refer Month 3) Eg. Camel, what is the first sound you hear in Camel - emphasize the &quot; c &quot; One child may say &quot;c&quot;, ask the group what can you hear next, and emphasize the &quot;a&quot; and so on. It is like trying to get the group to spell phonetically,and make them aware of the soundsin succession.</p>\n', NULL, 1, NULL, '2018-08-04 15:25:07', NULL, '2018-08-04 15:25:08', NULL),
(295, 2, 13, 11, 'Month_11', 'Ship Shape 2 - 30 Pairing', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/295/shipshape.jpg', NULL, '1.Visually pair materials \n2. Enhancing understanding of 30 shapes', '<p>Ask the child to carry the Ship Snape to his place of work. Place the container with the shapes on tne mat to theleft of the child. Open the lid of the ship. Take all the pieces out one by one and place them randomly on the mat. Keep the container aside. show the child now to visually examine the pieces and pair them. You can arrange these in a line to aid understanding<br />\n&nbsp;</p>\n', NULL, 1, NULL, '2018-08-04 15:00:56', NULL, '2018-08-04 15:00:57', NULL),
(296, 2, 25, 11, 'Month_11', 'Theme1 Me and My Family - 3 to 4', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/296/me-and-my-family.png', NULL, 'Theme Me and My Family to increase and improve understanding of child\'s surroundings at home and relationships.', '<p>Theme me and my family.</p>\n', NULL, 1, NULL, '2018-08-04 15:08:31', NULL, '2018-08-04 15:08:31', NULL),
(298, 2, 12, 11, 'Month_11', 'Sounds in succession', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/298/new-logo-1-1-1.png', NULL, 'Spelling words phonetically', '<p>Oral Phonetic Analysis - Identify sounds in succession in a word RULES - Same as OPA 1 (Refer Month 3) Eg. Camel, what is the first sound you hear in Camel - emphasize the &quot; c &quot; One child may say &quot;c&quot;, ask the group what can you hear next, and emphasize the &quot;a&quot; and so on. It is like trying to get the group to spell phonetically,and make them aware of the soundsin succession.</p>\n', NULL, 1, NULL, '2018-08-04 15:18:05', NULL, '2018-08-04 15:18:06', NULL),
(299, 2, 13, 11, 'Month_11', 'Triangle Shape Cards-1', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/299/triangle sorter.png', NULL, '1.Match the triangle inset With the shape card \n2. To move from concrete shapes to abstract shapes\n', '<p>Take the child to the place of display andintroduce the material to the child as, &quot;this are triangle shape cards&quot;.</p>\n\n<p>Ask&nbsp;him to take the cards to his mat. Ask him to also carry the triangle sorter.Show the child how to take out all the cards one by one. Show the child how to sort based on full figures, thick outlines and thin outlines. TaKe all the full figures and place in one line. Take the triangles from the sorter one by one and place on the full figures. Now take the set of half shapes, and show the child how to compare and place below the correct shape. Show the child how to take the triangle shape and place on the thick&nbsp;outline to verify is the pairingis correct Now take the thin outlines and place below and repeat the process. Let the child take over from you. A few days after this presentation, ask&nbsp;the child to worK without the insert board.<br />\n&nbsp;</p>\n', NULL, 1, NULL, '2018-08-04 15:34:31', NULL, '2018-08-04 15:34:32', NULL),
(300, 2, 13, 12, 'Month_12', 'Fixed Qty Prism 4 - Qty/Numeral', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/300/fixed quantity1.png', NULL, 'To associate the quantity, name and the symbol', '<p>So far we have only associated the oral name with the quantity. Now rt is time to associate the written symbol with the quantity.Ask&nbsp;the child to arrange the fixed quantity prisms on the mat. Reconfirm one time the names 1-10. Now have a small set of number symbols ready (preferably havelaminated cards corresponding to size of fixed quantity). Arrange the number cards at the end of each rod starting from 1 to 10. Say the number loud While arranging. Then read out the number out once again from 1to 10 pointing to each rod. Point to the display chart and show the child how the colours are the same</p>\n', NULL, 1, NULL, '2018-08-04 16:52:48', NULL, '2018-08-04 16:52:49', NULL),
(301, 2, 13, 12, 'Month_12', 'Rectangle Sorter 3 - Gradation', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/301/rectangular sorter.png', NULL, '1.To enhance visual dimensional analysis \n2. To help the child work without a control\nmechanism \n3. To move towards an abstract understanding of 20 sizes\n', '<p>Ask the child to take the rectangle sorter to his work area. After you are seated With the child,ask him to <em>remove </em>all the rectangles from tne board and place them around randomly. Then take away the board. TaKe the largest one and place it to one side . Then taKe each of them in order of size and place them all in a straight line. This shows him how to arrange the rectangles from big to small. Point out to the decreasing sizes.Ask&nbsp;tne child to repeat the activity after mixing up the rectangles.</p>\n', NULL, 1, NULL, '2018-08-04 16:55:06', NULL, '2018-08-04 16:55:06', NULL),
(302, 2, 22, 12, 'Month_12', 'Tying Laces', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/302/shoe.jpg', NULL, 'Show the child how to tie laces very slowly', '<p>Show the child how to tie laces very slowly</p>\n', NULL, 1, NULL, '2018-08-04 16:59:45', NULL, '2018-08-04 16:59:46', NULL),
(303, 2, 13, 12, 'Month_12', 'Noise Boxes 2 - Pairing', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/303/noise box.jpg', NULL, '1.To make the child aware of varieties of sounds \n2. Introduce the sounds loud and soft relative to each other \n3. Pairing of sounds\n', '<p>Ask the child to carry the material to his mat softly without making a noise. Take out two pairs from the tray and place randomly on the mat. Take the pairs from the extremes initially to make the child understand better. We separate them into groups by colour. Now take any one cylinder in your hand. (with say green lid). Show the child how to hold the cylinder using your fingertips and thumb. Bring the cylinder up to your ear and shake it steadily 3 times. Now keeping one hand on that cylinder, pick up a cylinder of the other colour. Show how you are comparing the sounds.If it is not a match, place the cylinder back, and take the other one. Repeat untilyou have found a match. If it is a match, allow the child to listen to both and place them side-by-side.</p>\n', NULL, 1, NULL, '2018-08-04 17:02:04', NULL, '2018-08-04 17:02:05', NULL),
(304, 2, 12, 12, 'Month_12', 'Public Places', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/304/new logo-1 (1)-1.png', NULL, 'Match the pieces to form the whole and exposure to GK.', '<p>Introduce public places with pairing activity.</p>\n', NULL, 1, NULL, '2018-08-04 17:05:52', NULL, '2018-08-04 17:05:53', NULL),
(305, 2, 12, 12, 'Month_12', 'WW: Visual Discrmntion', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/305/WW.jpg', NULL, 'Improve logical reasoning skills', '<p>Visually discriminate between 3 images and pick&nbsp;the correct 2 images or similar images in each row.</p>\n', NULL, 1, NULL, '2018-08-04 17:11:07', NULL, '2018-08-04 17:11:07', NULL),
(306, 2, 24, 12, 'Month_12', 'Zero Game', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/306/1459747749-power-of-zero.jpg', NULL, 'Introduction to Zero and its value.', '<p>Introduce Zero&nbsp; through various games and activities. Games can be designed by the mentor and introduce on weekdays and weekends during teacher directed games.</p>\n', NULL, 1, NULL, '2018-08-04 17:14:57', NULL, '2018-08-04 17:14:58', NULL),
(308, 2, 26, 12, 'Month_12', 'Alphabet Stencil', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/308/stencil.jpg', NULL, 'Introduction to writing', '<p>Move the pencil in the groove slowly</p>\n', NULL, 1, NULL, '2018-08-04 17:20:32', NULL, '2018-08-04 17:20:33', NULL),
(309, 2, 12, 12, 'Month_12', 'WW Num Sequencing 1 - Simple', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/309/new logo-1 (1)-1.png', NULL, '\nHelp the teacher assess the child\'s understanding of  Number Sequencing (After and before numbers) • Greater and Lesser •Number Patterns\n', '<p>Wooden worksheets are always pre-arranged on the mat in a specialplace in the room assigned solely for assessment. These worksheets are designed to assess if the child has interacted sufficiently with specific materialand has subsequently acquired the associated skill.Arrange the pieces in 4 rows of the worksheet in a pattern of increasing numbers Eg. 2,3, 4 - 5, 6,7 - Leave thelast one blank. Give the chid an option between 2 pieces to find the last piece. Eg give the child piece of 5 and 8 after 2. 3, 4 Keep all these arranged on the mat before you invite the child to work. Tell the child to 1001&lt; for &#39;what comes next&#39;.<br />\n&nbsp;</p>\n', NULL, 1, NULL, '2018-08-04 17:24:10', NULL, '2018-08-04 17:24:11', NULL),
(310, 2, 12, 12, 'Month_12', 'WW Seq Patterns 1 - Basic', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/310/wwq.jpg', NULL, 'Help the teacher make an assessment on the child\'s understanding of sequences of patterns\n', '<p>Wooden worl&lt;sheets are always pre-arranged on the mat in a specialplace in the room assigned solely for assessment. These work sheets are designed to assess if the child has interacted sufficiently with specific materialand has subsequently acquired the associated skill.Arrange the pieces in 4 rows of the work sheet in patterns of objects. Leave the last&nbsp;&nbsp; one blank.Arrange 2 pieces next to each empty slot to offer a choice to the chid. One card will be the correct one. The other needs to be a piece from some other row Eg. The sequence in first row is Watch . Watch, Spectacles, Spectacles,Watch , Watch ---&shy; Choice to child:Watch,Ice-cream Keep all these arranged on the mat before you invite the child to work.Tell the child to look&nbsp;for &#39;what comes next&#39;.</p>\n', NULL, 1, NULL, '2018-08-04 17:28:08', NULL, '2018-08-04 17:28:08', NULL),
(312, 2, 13, 12, 'Month_12', 'Trapezoid Tower 2 - Horizontal', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/312/trapezodial.png', NULL, '1.Eye- Hand Co-ordination \n2. To help the child develop his capacity to judge the dimensions \n3. To introduce area variations', '<p>Ask the child to have a work mat ready at his place of work. Take him to the display and ask him to carry the trapezoid tower one by one to his mat. We ask the child to place the pieces randomly spread on the mat We show the child how to find the largest piece and place it at the right corner Then <em>we </em>find the next largest piece and place it on next to that.Help the child understand this with your movements and gestures. In this there is no built in control of error unlike verticalstacking,which is why we do horizontal stacking after vertical stacking. The child must now take the pieces one by one back to the display starting from the largest.</p>\n', NULL, 1, NULL, '2018-08-04 17:35:26', NULL, '2018-08-04 17:35:26', NULL),
(313, 2, 13, 12, 'Month_12', 'Grip and Match 3 - Blindfold', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/313/grip n match.jpg', NULL, 'To pair objects based on sterognostic understanding', '<p>Ask the child to carry the material to his place of work. Use a blindfold with this act vity. Whenever a blindfold is used,always use it first one yourself so that the childis not worried.Take out any one piece from the centre,and run your palms around it to feel the shape and keep it in the left hand. Then feel each of the others to find tne corresponding pair. After he has found the pair, open tne blindfold,and let him see if both are the same. If it is too difficult initially, let the child see tne piece that he has first picked before using the blindfold to find its pair. Similarly ask the chid to pair all with the help of his sterognostic</p>\n\n<p>sense</p>\n', NULL, 1, NULL, '2018-08-04 17:37:31', NULL, '2018-08-04 17:37:32', NULL),
(314, 2, 25, 12, 'Month_12', 'Theme 2 The Farm - 3 to 4', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/314/farm.png', NULL, 'Introduction to Farm and Farming Activities ', '<p>Theme based activity to introduce farm and farming related activities to children. Make it creative and interesting to involve children and make it more interactive through colouring activity, art &amp; craft, rhymes and some group work.</p>\n', NULL, 1, NULL, '2018-08-04 17:40:08', NULL, '2018-08-04 17:40:09', NULL),
(315, 4, 31, 31, 'Month_31', 'Dot Game 2 - Carryover of numerals', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/315/dot game.png', NULL, 'Addition of large numbers (3 digit) with carryover with numbers and dots', '<p>show the child now to draw the corresponding number of dots in each of tne squares same as earlierAsl&lt; tne child to write tne numbers in the columns on tne right Eg.If tne numbers are 376 ,578 and 927 Draw 6 dots in the units, 7 dots in tne tens and 5 in nundreds and so on We now have: Units -21dots. Tens - 16 dots Hundreds - 17 dots Stril&lt;e out one row of units and count 1,stril&lt;e out second row of units and say 2, Write +2 in the square below and write + 1(for left <em>over) </em>in the bottom box Now we nave 16 dotsin the tens,add +2 dots,we have 18. Show tne child to write +1 and 8in the answer box below Add tnem up and write the numeral below, and tne answer in tne box at the bottom right ,you will get 1881</p>\n', NULL, 1, NULL, '2018-08-05 08:42:35', NULL, '2018-08-05 08:42:36', NULL),
(316, 4, 31, 31, 'Month_31', 'Multiplication Tables 2- Tables', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/316/multiplication table.png', NULL, '1.Introduce multiplication as repeat addition ( x tal<en y times) 2. Get the children to write the tables by repeat counting and adding', '<p>This presentation demonstrates to the child that multiplicat on is repeat addition in the written format Asl&lt; the child to carry the multiplicat on game to her/ his mat We give the&nbsp;&nbsp;&nbsp; child a square checked sheet where he/she has to record answers Tal&lt;e any one board as a sample Eg Tables of 4 Each time we count 4. we say 4 tal&lt;en 1time is 4 Then we count 4 again - 1, 2,3, 4 We say we already have 4,so now have - 5,6,7,8 Each time, we record the answerin the sheet. In this way, we complete the table and go upto 4 tal&lt;en 1O times So the child has recorded the tables of 4</p>\n', NULL, 1, NULL, '2018-08-05 08:45:41', NULL, '2018-08-05 08:45:42', NULL),
(317, 4, 33, 31, 'Month_31', ' India Gate', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/317/india gate.jpg', NULL, ' India Gate', '<p>Follow the instruction manual</p>\n', NULL, 1, NULL, '2018-08-05 08:47:38', NULL, '2018-08-05 08:47:39', NULL),
(318, 2, 13, 13, 'Month_13', 'Counting Jigsaw 2 - Num-Qty', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/318/jigsaw.png', NULL, '1.Matching the number symbol with the quantity. \n2.Visual estimation skills', '<p>This presentation can be given after the child has worked with sandpaper numbers and has learnt tne symbols. and also knows the sequence of 1 to 10. Usually it is given after&nbsp;&nbsp; the symbol-qty presentation of fixed quantity prisms.Ask the child to separate the quantity and symbol cards.Ask&nbsp;him to arrange all the symbolcards from 1to 10, and then find the corresponding pairs.</p>\n', NULL, 1, NULL, '2018-08-05 09:49:05', NULL, '2018-08-05 09:49:06', NULL),
(319, 2, 12, 13, 'Month_13', 'WW Seq Color-shape 1 - Basic', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/319/Stickers2.png', NULL, 'Help the teacher make an assessment on the child\'s understanding of colours and shapes, and his logical reasoning ability.', '<p>Wooden work sheets are always pre-arranged on the mat in a specialplace in the room assigned solely for assessment. These work sheets are designed to assess if the child has interacted sufficiently with specific materialand has subsequently acquired the associated skill.Arrange the pieces in 4 rows of the worl&lt;sheet in patterns of colour-shapes. Leave the last one blank.Arrange 2 pieces next to each empty slot to offer a choice to the child.One card will be the correct one. The other needs to be a piece from some other row Eg. The sequence in first row is Red. Yellow,Red, Yellow Choice to child:Red, Blue If necessary, do the first row to show the child what he has to do. Keep all these arranged on the mat before you invrte the child to work.Tell the child tolook&nbsp;for &#39;what comes next&#39;.<br />\n&nbsp;</p>\n', NULL, 1, NULL, '2018-08-05 09:54:08', NULL, '2018-08-05 09:54:09', NULL),
(320, 2, 13, 13, 'Month_13', 'Rectangle Sorter 4 - Memory exercises', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/320/rectangular sorter.png', NULL, '1.To help the child analyse the size by comparing the inset with the slot \n2. Develops a sense of visual memory which indirectly aids in reading \n3. Enhances abstract understanding of shape\n', '<p>Ask the child to take the rectangle sorter to his work area. Tell him to <em>r</em><em>emove </em>all the rectangles and place them on a tray. Place the tray away from the place of work. Then point to one of the slots on the board (preferably use an indicator/ pointer) and ask the child to bring the corresponding rectangle.When the childis confident,placeinsets in different spots, and ask him to repeat.</p>\n', NULL, 1, NULL, '2018-08-06 14:16:36', NULL, '2018-08-06 14:16:36', NULL),
(321, 2, 13, 13, 'Month_13', 'Counting Rings 3 - Counting', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/321/counting rings.png', NULL, '1.Introduction to more and less visually in concrete numbers \n2. Building loose counting skills \n3. Reinforcement of sequencing \n4. Indirect correlation between height and length \n5. Fine motor skills development', '<p>After the child has worked sufficiently with the quantity box and is familiar with number names.we introduceloose counting With the rings.Place the materialon the mat with 1on the left side and 1O on the right. how the child how to remove the ring from the rod by removing it and holding it firmly between 2 fingers. One by one, remove all rings starting from 1. Place the ringsin a vertical line below the base. This arrangement is important for the child to understand the quantity.When arranged in this manner, there is a clear understanding of quantity.Ask the child to put the rings back on the rods starting from 1 going to 10. It is simpler for the child to count in this format. Ask the child to put the rings back on the rods, and count while doing so. This counting exercise has control built into it, since the child will know if there are less or excess rings. It also helps the child correlate&nbsp; the quantity With the length of the rod.</p>\n', NULL, 1, NULL, '2018-08-05 09:58:19', NULL, '2018-08-05 09:58:20', NULL),
(322, 2, 13, 13, 'Month_13', 'Quantity Box 3 - Symbols', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/322/fixed quantity.jpg', NULL, '1.To reinforce quantities \n2. Loose counting \n3. Associating number names and quantities\nwith corresponding symbols\n', '<p>After the child haslearnt associated number symbols With f1Xed quantity prisms, ask him to do the same with the quantity box and numbers cards. A presentation may not be needed since he would already l&lt;now how to do it. Just show for number 1and leave the child to continue.Then when the activity is over show the child how to wind up the cards first,and then put the quantity away starting from 1to 10.While putting back in the box, introduce counting.1; 1.2;1,2,3... and so on.Later on,After the child has learnt quantities, <em>w</em><em>e </em>check if he is associating the right name with the right quantity.We may give him a card from the number cards <em>I </em>sandpaper numbers and asK him to take out the corresponding number of rods.Alternatively we could giVe him say 5 rods, and asK him to picK out the number card which is associated with that quantity.</p>\n', NULL, 1, NULL, '2018-08-05 09:59:58', NULL, '2018-08-05 09:59:58', NULL),
(323, 2, 13, 13, 'Month_13', 'Counting Jigsaw 3 - Counters', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/323/jigsaw.png', NULL, '1.Loose counting \n2. Increasing order of quantities \n3. More and less \n4. Enhances fine motor skills', '<p>Ask the child to do the jigsaw as usual. Then give the child a bowlof counters like shells or skittles or small tokens.Show the child how to place the skittles on the dots and count simultaneously, starting from 1to 10.After he has worked a few times with this, help him identify wnat is more and what is less.Introduce the terms more and less.</p>\n', NULL, 1, NULL, '2018-08-05 10:01:51', NULL, '2018-08-05 10:01:52', NULL),
(325, 2, 12, 13, 'Month_13', 'Alphabet Box 2 - Starting sound', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/325/alphabets.jpg', NULL, '1.Making the child conscious of the first sound in every word \n2. Foundation for writing', '<p>Before this material is presented,tne child should know majority of the sounds through sandpaper tracing. ( atleast 15). Introduce the material to tne child and show him how to carry the box to his table. Then we give some pictures like pot and ask&nbsp;the child to identify the starting sound. Once he says &nbsp;p&quot; <em>we </em>ask&nbsp;him if he can find the sound in the box and place it outside. We give him severalwords and ask&nbsp;him to find only the first sound. The same can then be repeated with pictures.</p>\n', NULL, 1, NULL, '2018-08-05 10:07:40', NULL, '2018-08-05 10:07:41', NULL),
(326, 2, 13, 13, 'Month_13', 'Colour Wheel 2 - Gradation', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/326/colour gradation.jpg', NULL, '1.To make the child conscious of primary and secondary colours and discriminate\nbetween the shades. \n2.To grade shades of colours from dark to light\n', '<p>Ask the child to work Where the colour wheelis placed. Show the child how to slide out any one set of colour slabs from the Wheel,one at a time. Place each of the slabs randomly on the mat. Now take any two slabs, and compare. Place the darker one on the left side and the lighter one on the right. Take the next one and compare, if itis darker, placeit on extreme left, else place it n between. Then taKe the next and the next and arrange in order of decreasing <em>I </em>increasing intensities. Now show the child how to put back IN ORDER With the lightest one goingin first from the extreme right. Repeat the activity with all colours.If&nbsp;&nbsp; the childis ready for more complex worK, you can ask him to bring the box of loose tablets and repeat with that also.</p>\n', NULL, 1, NULL, '2018-08-06 14:14:59', NULL, '2018-08-06 14:14:59', NULL),
(327, 2, 13, 13, 'Month_13', 'Knobless Cylinders 3 - Grade and stack', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/327/dia.jpg', NULL, '1.To help the child become conscious of dimension.\n2. To improve fine motor skills and dexterity\n', '<p>Ask tne child to bring the material to his mat. Take out any one set of cylinders and place randomly on the mat. Make a space at the centre Show tne child now you are looking for the largest one and placeit on tne centre.Tnen one by one find the smaller pieces and stack. (By height and Diameter).After stacking, remove carefully one by one from tne top and place randomly on tne mat. Chidren may cnoose to explore as shown in the pictures attached.thisis not a presentation, but explorat on by tne children.</p>\n', NULL, 1, NULL, '2018-08-05 10:14:14', NULL, '2018-08-05 10:14:15', NULL),
(328, 2, 13, 13, 'Month_13', 'Width Stairs 4 - Small Group', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/328/width stair.png', NULL, 'To improve eye-hand co-ordination \n2.To lay a foundation for width, dimensions by feeling with hands\n', '<p>Invite 3 to 4 children. Ask&nbsp;tne children to nave tne width stairs on a mat and come and call you. Ask&nbsp;eacn child to take two or tnree prisms each and Keepit behind them. Ask&nbsp;the child having the widest prism to place it on tne mat. Tne children should be able to feel with their hands and find the next one.Tne child naving tne next prism will have to bring the prism forward and tne activity goes on until the whole pyramidis built.</p>\n', NULL, 1, NULL, '2018-08-05 10:17:52', NULL, '2018-08-05 10:17:53', NULL),
(329, 2, 26, 13, 'Month_13', 'Number Stencils', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/329/nu,mber stencils.jpg', NULL, 'Build the muscle memory for writing numbers\n', '<p>Hold the base firmly with the left hand and grip the pencil in the right. Move the pencil in the grooves</p>\n', NULL, 1, NULL, '2018-08-05 10:26:26', NULL, '2018-08-05 10:26:27', NULL),
(330, 4, 28, 31, 'Month_31', '3 PC Action Words 2 - Words', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/330/action picture.png', NULL, '1.To enhance the child\'s reading skill and give meaning to the \"read word\'\n2. To be able to read and identify the Verbs \n3. To enhance the child\'s pairing ability (like match the following)', '<p>This is a simple activity ,where children will know the names of all the actions Take about &nbsp;3 -4 picture cards. and place them on top /lefi side in a line. Then we look at the name cards. Read it and find the corresponding picture. Place it beside the picture card. The children may choose to do the same with the control card also, with sight reading.<br />\nThey would see the first letter or the length of the word , and pair the word with the control card. It is absolutely fine as this will set the pattern for reading<br />\n&nbsp;</p>\n', NULL, 1, NULL, '2018-08-05 10:28:19', NULL, '2018-08-05 10:28:19', NULL),
(331, 2, 13, 13, 'Month_13', 'Geometric Tiles 4 - Creative', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/331/geometeric tiles.png', NULL, '1. Indirectly leads to association with areas\n2. Enhances creativity and understanding of patterns', '<p>Show the child how to select pieces and create a pattern. Allow him to be as creative as he wishes.</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n', NULL, 1, NULL, '2018-08-05 10:30:10', NULL, '2018-08-05 10:30:11', NULL),
(332, 2, 12, 13, 'Month_13', 'Vowel Cards 3 - First and Last sound', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/332/oral LS.png', NULL, '1.To make the child aware of the first and last sound in 3 letter words \n2. Introduction to writing \n3. Phonetic awareness\n', '<p>Ask tne child to taKe tne vowel Cards&quot; to his table. and arrange any one set of pictures(one vowel) and can you Ask tne child to identify the pictures once. Then you point to the first picture and say tne name. Eg Tap Emphasize the t wnen you are saying tap, and ask the child to bring tne first sound from tne alphabet box. And place above the&nbsp;&nbsp;&nbsp; picture Now repeat tne process with tne last sound for eacn picture. Tnen <em>we </em>ask the child to repeat tne names with emphasis on first andlast sound.Video attached Child working with picture cards,same type of work for vowelcards also.Ensure given pictures nave a clear consonant ending and starting sound</p>\n', NULL, 1, NULL, '2018-08-06 14:18:40', NULL, '2018-08-06 14:18:41', NULL),
(333, 2, 25, 13, 'Month_13', 'Theme 3 The Jungle - 3 to 4', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/333/Stickers2.png', NULL, 'Introduction to Jungle and animals', '<p>Theme activity through art and craft, colouring, rhymes, group work, games etc.</p>\n', NULL, 1, NULL, '2018-08-05 10:34:13', NULL, '2018-08-05 10:34:14', NULL),
(336, 2, 13, 13, 'Month_13', 'Diameter Variation Cylinders 5 - Ordinal Exercises', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/336/diameter variation cylinder.png', NULL, '1.To bring a particular piece of the set (eg. Second from the smallest) 2. To make the child\naware of ordinal numbers I position\n', '<p>AsK the child to go to the shelf and bring the second from the smallest,third from the largest etc one by one.This enhances his understanding of numbers as well as gradation.</p>\n', NULL, 1, NULL, '2018-08-05 10:40:26', NULL, '2018-08-05 10:40:26', NULL),
(337, 2, 13, 13, 'Month_13', 'Height Variation Cylinders 5 - Ordinal Exercises', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/337/height variation cylinder.png', NULL, '1.To bring a particular piece of the set (eg. Second from the smallest) 2. To make the child\naware of ordinal numbers I position\n', '<p>AsK the child to go to the shelf and bring the second from the smallest,third from the largest etc one by one.This enhances his /her understanding of numbers with respect to gradation/ position</p>\n', NULL, 1, NULL, '2018-08-05 10:41:25', NULL, '2018-08-05 10:41:26', NULL),
(338, 2, 13, 13, 'Month_13', 'Ship Shape 3 - Name Lesson', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/338/ship shape.png', NULL, 'To Identify solids by their names', '<p>Ask the child to take the Ship Shape to his mat and pair the solids as already shown before and then call you. Then sit with the child andisolate any 3 pairs.Take one each of the pair and give a namelesson. On another day give for tne other 3. Cuboid Trapezoid Triangular Prism Cylinder Hexagonalprism Cube</p>\n', NULL, 1, NULL, '2018-08-05 10:42:28', NULL, '2018-08-05 10:42:28', NULL),
(339, 2, 13, 13, 'Month_13', 'Fixed Qty Prism 5 - Memory', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/339/fixed quantity1.png', NULL, '1.	To lay a foundation for arithmetic activity especially with regard to number system 1-10\n2.	To reinforce the sequence of increasing/ decreasinglengths with quantity 3. To build memory for numbers (essential when child starts arithmetic operations lil<e add/ mulletc\n', '<p>Ask the child to bring the fixed quantity materialand a set of number cards to the mat. Ask her/ him to arrange the number cards from 1 to 1O on the mat. Ask&nbsp;the child to place all the rods in a tray randomly and place away from the mat. Now use an indicator on any number card and ask&nbsp;the child to bring the corresponding quantity. Vice versa memory game can also be done. where rods are arranged on the mat and the child has to bring the number card. We can also l&lt;eep rodsin different places and ask&nbsp;the child to bring which mal&lt;es the exercise more complex and challenging</p>\n', NULL, 1, NULL, '2018-08-05 10:44:16', NULL, '2018-08-05 10:44:17', NULL),
(340, 4, 33, 31, 'Month_31', 'TC: Parts of horse 2 - Words', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/340/horse.png', NULL, '1.To enhance the child\'s reading skill and give meaning to the \"read word\'2. To be able to read and identify the parts of a horse 3.To enhance the child\'s pairing ability (lil<e match the following)\n', '<p>ready for a lot of reading.Tal&lt;e about 3 -4 picture cards. and place them on top /lefi side in a line. Then we 1001&lt; at the name cards. Read it and find the corresponding picture. Place it beside the picture card. This activity usually cannot be performed until the child has worl&lt;ed with the control card long enough to recognize all the pictures. However,the children may choose to do this activity with all 3 parts of the card, the controlcard, picture card and the word card. They would see the first letter or the length of the word , and pair the word with the control card.It is absolutely fine as this will set the pattern for reading</p>\n\n<p>&nbsp;</p>\n', NULL, 1, NULL, '2018-08-05 10:50:37', NULL, '2018-08-05 10:50:37', NULL),
(341, 4, 33, 31, 'Month_31', 'Weaving Frame', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/341/new logo-1 (1)-1.png', NULL, 'Weaving Frame', '<p>Weaving Frame</p>\n', NULL, 1, NULL, '2018-08-05 10:51:52', NULL, '2018-08-05 10:51:53', NULL),
(342, 4, 32, 31, 'Month_31', 'India Map 2 - State Names', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/342/india map.png', NULL, '1.Exploring various states of India in depth 2. Learning the names of the states. their geographical location, their neighbours and more', '<p>As earlier show the child how to take out the pieces and put back ( by this time children will be removing many if not all pieces). Theylove working in very small groups of 2 to 3 with&nbsp; the map (as shown in earlier video) Now place both maps side by side. Take out 3 (max 4) of the pieces,large ones which are easily identifiable and name them. Use the 3 stage&nbsp; Name lesson - Identification,recognition and confirmation Let the states be from different parls. Idealstates to starl with are - Jammu and Kashmir, Rajasthan and Tamil Nadu Keep the control map, and show the child how to take any one of the pieces and place on the control map and check where it belongs and place it back on the India map.Over a period of a month. introduce more names, even if they are not <em>very </em>familiar With earlier ones. They will keep learning <em>over </em>a period of time. They will also have reinforcement of learning when you do theme activities or group activities related to geography. Encourage conversation around these states. Eg someone would say Iam from Tamil Nadu,another will say &quot;Kashmir is so up&quot;,or &quot;I have visited Kashmir&quot;</p>\n', NULL, 1, NULL, '2018-08-05 10:54:02', NULL, '2018-08-05 10:54:03', NULL),
(343, 4, 32, 31, 'Month_31', 'Landforms Full Set', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/343/new logo-1 (1)-1.png', NULL, 'To identify and understand various landforms', '<p>To identify and understand various landforms</p>\n', NULL, 1, NULL, '2018-08-05 10:55:16', NULL, '2018-08-05 10:55:16', NULL),
(344, 4, 31, 31, 'Month_31', 'Subtraction Game 2 - Difference', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/344/subtraction.png', NULL, 'Subtraction Game 2 - Difference', '<p>Subtraction Game 2 - Difference</p>\n', NULL, 1, NULL, '2018-08-05 10:57:14', NULL, '2018-08-05 10:57:15', NULL),
(345, 4, 34, 31, 'Month_31', 'Me and My Family ', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/345/new logo-1 (1)-1.png', NULL, 'Me and My Family ', '<p>Me and My Family</p>\n', NULL, 1, NULL, '2018-08-05 11:00:20', NULL, '2018-08-05 11:00:20', NULL),
(346, 4, 33, 31, 'Month_31', 'Solar System 2 - Planets', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/346/solar system.jpg', NULL, '1.To introduce the names of the planets and their position in the solar system 2.To give the child an opportunity to discuss the solar system', '<p>Clearly and slowly introduce an the planets one by one in order Move each planet while saying its name</p>\n', NULL, 1, NULL, '2018-08-05 11:01:52', NULL, '2018-08-05 11:01:53', NULL),
(347, 4, 28, 31, 'Month_31', 'Homogram oo(2)', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/347/new logo-1 (1)-1.png', NULL, '1.To learn the various sounds of words containing oo 2. To spell accurately 3. To read fluently\n', '<p>The more common &quot;oo&quot; sound has already been introduced in Month 23 (roof, moon)</p>\n\n<p>SAMPLE WORDS (for teacher&#39;s understanding) - Good, Foot Introduce the homogram to the child. Read out words and help them recognizeit.&nbsp; Use the sentence box tiles/ green lists <em>I </em>booKs <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-05 11:03:57', NULL, '2018-08-05 11:03:57', NULL),
(348, 4, 28, 31, 'Month_31', 'Homogram ui (2)', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/348/new logo-1 (1)-1.png', NULL, '1.To learn the various sounds of words containing ui2.To spell accurately 3. To read fluently\n', '<p>The more common &quot;ui&quot; sound has already been introduced in Month 28 (Fruit, cruise, suit) SAMPLE WORDS (for teacher&#39;s understanding) - Guitar, build Introduce the homogram to the child. Read out words and help them recognizeit. Use the sentence box tiles/ green lists <em>I </em>booKs <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-05 11:06:00', NULL, '2018-08-05 11:06:01', NULL),
(349, 4, 28, 31, 'Month_31', 'Homogram ea(2)', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/349/new logo-1 (1)-1.png', NULL, '1.To learn the various sounds of words containing ea 2. To spell accurately 3. To read fluently\n', '<p>The more common our sound has already been introduced in Month 24 (leaf, team) SAMPLE WORDS (for teacher&#39;s understanding) - bread, tear Introduce the homogram to the child. Read out words and help them recognizeit.&nbsp; Use the sentence box tiles/ green lists <em>I </em>booKs <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-05 11:07:44', NULL, '2018-08-05 11:07:45', NULL),
(350, 4, 28, 31, 'Month_31', 'Phonogram sion', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/350/new logo-1 (1)-1.png', NULL, '1.To learn the sound of phonogram sion 2. To spell accurately 3.To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - revision, tension Introduce the phonogram to the child. Sound out words and help them recognize it. Introduce the phonogram word box to the child and helpthem form words.Use the sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-05 11:09:20', NULL, '2018-08-05 11:09:21', NULL);
INSERT INTO `t_activities` (`activity_id`, `standard_id`, `subject_id`, `display_order`, `month`, `name`, `image`, `video`, `objective`, `Description`, `tags`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`, `Branch_id`) VALUES
(351, 4, 28, 31, 'Month_31', 'Phonogram tion', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/351/new logo-1 (1)-1.png', NULL, '1.To learn the sound of phonogram lion 2. To spell accurately 3. To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - nation, elation Introduce the phonogram</p>\n\n<p>to the child.Sound out words and help them recognize it. Introduce the phonogram word box to the child and helpthem form words.&nbsp; Use the sentence box tiles/ green lists <em>I </em>booKs <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-05 11:11:02', NULL, '2018-08-05 11:11:02', NULL),
(352, 4, 28, 31, 'Month_31', 'Phonogram ture', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/352/new logo-1 (1)-1.png', NULL, '1.To learn the sound of phonogram ture 2.To spell accurately 3. To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - nature, juncture Introduce the phonogram to the child. Sound out words and help them recognize it. Introduce the phonogram word box to the child and helpthem form words. Use the sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to&nbsp; introduce word lists sequentially</p>\n', NULL, 1, NULL, '2018-08-05 11:13:29', NULL, '2018-08-05 11:13:29', NULL),
(353, 2, 22, 14, 'Month_14', 'Weighing Balance', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/353/new logo-1 (1)-1.png', NULL, 'Introduction to weights and weigh balance', '<p>Show child how to weigh various objects on two sides of weigh balance.</p>\n', NULL, 1, NULL, '2018-08-05 11:15:55', NULL, '2018-08-05 11:15:56', NULL),
(354, 4, 28, 31, 'Month_31', 'Homogram ie(3)', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/354/new logo-1 (1)-1.png', NULL, '1.To learn the various sounds of words containing ie 2.To spell accurately 3. To read fluently\n', '<p>The more common &quot;ie&quot; sound 1has already been introduced in Month 29 {chief, priest,</p>\n\n<p>field) SAMPLE WORDS (for teacher&#39;s understanding) - SOUND 2 fierce, alien, dantier, dantiest SOUND 3lie, die Introduce the homogram to the child. Read out words and help them recognize it. Use the sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-05 11:18:10', NULL, '2018-08-05 11:18:10', NULL),
(355, 4, 28, 31, 'Month_31', 'Phonogram terminal all', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/355/new logo-1 (1)-1.png', NULL, '1.To learn the sound of words ending with all 2.To spell accurately 3. To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - ball, stall,wall, small Introduce tne phonogram to tne child. Sound out words and help them recognize it. Introduce tne phonogram word box to the child and helpthem form words. Use tne sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-05 11:20:09', NULL, '2018-08-05 11:20:10', NULL),
(357, 2, 12, 14, 'Month_14', 'WW Quantity Seq 1 - Simple', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/357/new logo-1 (1)-1.png', NULL, 'Help the teacher make an assessment on the child\'s understanding of various parameters of quantity \n1. Sequencing 2. Greater and Lesser 3.Quantity Patterns', '<p>Wooden worl&lt;sheets are always pre-arranged on the mat in a specialplace in the room assigned solely for assessment. These worl&lt;sheets are designed to assess if the child has interacted sufficiently with specific materialand has subsequently acquired the associated skill.Arrange the pieces in 4 rows of the worl&lt;sheet in a pattern of increasing quantity Eg.</p>\n\n<p>2,3, 4 - 5, 6,7 - Leave thelast one blanl&lt;. Give the chid an option between 2 pieces to find the last piece. Eg giVe the child piece of 5 and 6 after 2. 3, 4 Keep all these arranged on&nbsp; the mat before you invite the child to worl&lt;. Tell the child to 1001&lt; for &#39;what comes next&#39;.</p>\n', NULL, 1, NULL, '2018-08-05 11:25:36', NULL, '2018-08-05 11:25:36', NULL),
(358, 2, 12, 14, 'Month_14', 'Opposites', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/358/1234.jpg', NULL, '1.Helps child make associations 2.Introduces the concept of opposites 3. Increases\nVocabulary\n', '<p>Introduce tne materialas Opposites to tne child. Ask&nbsp;the child to take the materialto his table/mat Remove all tne cards and pass randomly on tne table. Take any one . and snow the child you are finding the opposite.Afier doing all tne pairing,point to tne card on each side and say tne name of each image aloud.</p>\n', NULL, 1, NULL, '2018-08-05 11:27:18', NULL, '2018-08-05 11:27:19', NULL),
(361, 2, 13, 14, 'Month_14', 'Triang le Sorter 3 - Memory Exercises', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/361/triangle sorter.png', NULL, '1.To help the child analyse the size by comparing the inset with the slot 2. Develops a\nsense of visual memory which indirectly aids in reading 3. Enhances abstract understanding of shape\n', '<p>Ask the child to take the triangle sorter to his work area. Tell him to remove all the triangles and place them on a tray. Place the tray away from the place of work. Then point to one of the slots on the board (preferably use an indicator/ pointer) and ask the child to bring the corresponding triangle. When the chid is confident with this.you can make the task more complex. Place insets in different spots,and ask him to repeat.</p>\n', NULL, 1, NULL, '2018-08-05 11:33:16', NULL, '2018-08-05 11:33:16', NULL),
(362, 2, 12, 14, 'Month_14', 'Farm 2 - Animals and Babies', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/362/farm.png', NULL, 'Introduction to farm animals and their babies.', '<p>Show the chid the animals and pair wrth babies</p>\n\n<p>&nbsp;</p>\n', NULL, 1, NULL, '2018-08-05 11:34:47', NULL, '2018-08-05 11:34:48', NULL),
(363, 2, 24, 14, 'Month_14', 'Chit Game', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/363/new logo-1 (1)-1.png', NULL, 'Loose Counting in a group', '<p>This is a medium group activity (6 to 8 children) Keep chits ready with number written on them (1,2.3..one for each child) Have the exact number of shells or some counters in a bowl placed in the centre. Asl&lt; every child to tal&lt;e one chit to his seat and open the chit and read to himself. One by one call out to a child to come and tal&lt;e the exact number of shells from the bowl as the chit indicates.After all the children have tal&lt;en their counters, and are bacl&lt; seated in their places, you can start the process of putting bacl&lt; in the bowl. This can be done in 2 ways :</p>\n\n<p>1. Call out the number and asl&lt; the child with that number to come and ut his counters bacl&lt; in the bowl</p>\n\n<p>2. Call out a child&#39;s name and asl&lt; the child to say out his number loud and then put bacl&lt; the shellsin the bowlIn either case,the child has to put the shells one by one and everyone has to count to checl&lt;if the correct number have gone in.Asl&lt; the children to sit in a circle</p>\n', NULL, 1, NULL, '2018-08-05 11:36:41', NULL, '2018-08-05 11:36:41', NULL),
(365, 4, 33, 32, 'Month_32', '3 PC Solar System 1 - Pictures', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/365/solar system.jpg', NULL, '1.To introduce the pictures of the planets and their position in the solar system 2.To enhance the child\'s visual pairing ability', '<p>TaKe only the set 1(pictures With names)and set 2 (pictures without names) Place tne control card with the name and picture on theleft side. Then taKe tne picture cards and snow the child how to find tne same picture and place it next to the card. After a few days of worl&lt; with the cards, give the names of eacn part of tne card. Do not use tne word cards initially.</p>\n', NULL, 1, NULL, '2018-08-05 11:39:09', NULL, '2018-08-05 11:39:09', NULL),
(366, 2, 24, 14, 'Month_14', 'Balancing beam 3 - Square', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/366/Balancing beam parallel.png', NULL, '1.To improve gross motor sKills 2.Learning tum without losing balance on the beam', '<p>Just place the beams connected to each other in a square. AsK each of the children to walK on the beam making at least one complete round on the square.</p>\n', NULL, 1, NULL, '2018-08-05 11:39:23', NULL, '2018-08-05 11:39:24', NULL),
(367, 4, 33, 32, 'Month_32', 'TC: Parts of bird 2 - No control Card', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/367/birds.jpg', NULL, '1.To enhance the child\'s reading sl<ill and give meaning to the \"read word\'2. To be able to\nread andidentify the parts of a bird 3. To enhance the child\'s pairing ability (lil<e match the following)\n', '<p>It is good to start this activity with only 3 to 4 sets of cards for children who may not be ready for a lot of reading.Tal&lt;e about 3 -4 picture cards. and place them on top /lefi side in a line. Then <em>we </em>1001&lt; at the name cards. Read it and find the corresponding picture. Place it beside the picture card. This activity usually cannot be performed until the child has worl&lt;ed with the controlcard long enough to recognize all the pictures. However,the children may choose to do this activity with all 3 parts of the card, the controlcard, picture card and the word card. They would see the first letter or the length of the word , and pair the word with the controlcard.It is absolutely fine as this will set the pattern for reading</p>\n\n<p>&nbsp;</p>\n', NULL, 1, NULL, '2018-08-05 11:40:46', NULL, '2018-08-05 11:40:47', NULL),
(368, 2, 12, 14, 'Month_14', 'WW Num Sequencing 2 - Multiple Choice', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/368/new logo-1 (1)-1.png', NULL, 'Help the teacher assess the child\'s understanding of •Number Sequencing (After and before numbers) • Greater and Lesser •Number Patterns ', '<p>Arrange the pieces on the worKsheet in ascending order Eg. 1, 2, 3 ... 4, .... 6 ,7 Leave the last one blank. AsK the child to find what comes next. Keep all the remaining tiles randomly around and the child has to choose the answer from them . You could also leave in&nbsp;&nbsp; between numbers blanK instead of the last one.</p>\n', NULL, 1, NULL, '2018-08-05 11:40:58', NULL, '2018-08-05 11:40:59', NULL),
(369, 2, 13, 14, 'Month_14', 'Flower Stacker 3 - Name Lesson', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/369/flower stacker.jpg', NULL, 'To introduce names of shapes on the flower stacker', '<p>TaKe out the first 3 pieces from tne base and introduce the shape names in the 3 stage lesson to the child.After a few days when he is sure about these 3 names,introduce the remaining. A. Semi-circle B.Circle C. Trefoil(Club) D. Quatrefoil (Rosette) E.Cinquefoil (Flower).AsK tne child to count the number of curves on each shape</p>\n', NULL, 1, NULL, '2018-08-05 11:42:38', NULL, '2018-08-05 11:42:39', NULL),
(370, 4, 33, 32, 'Month_32', 'TC: Parts of Tortoise 2 - Words', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/370/tortoise.jpg', NULL, '1.	To enhance the child\'s reading sl<ill and give meaning to the \"read word\'2. To be able to read and identify the parts of a tortoise 3. To enhance the child\'s pairing ability (like match    the following)', '<p>Introduction: The control cards are presented via the name lessons.Introduce only three parts of the tortoise in one name lesson. Here we introduce the mouth, eyes andlegs&nbsp;&nbsp; control cards first. First stage:This is the introduction phase. The names of the body parts of the tortoise are introduced here. Step 1: Place all the controlcards in a row on the work mat. Isolate three controlcards for one name lesson.Here, isolate &#39;mouth&#39;,&middot;eyes&#39; and &#39;legs&#39; cards from the group. Now. introduce them individually.Step 2: Point to the mouth and say, &quot;This is the mouth&quot;.Step 3:Point to the eyes and say, &#39;These are the eyes&quot;. Step 4:Point to the legs and say, &quot;These are the legs&quot;. Second stage: Provide simple commands to the child in this stage. This is the recognition round. Point to a place on the mat and ask the child to Keep a specific card there. Step 1:Point to a place on the mat and say to the child,Step 2: Point another place on the mat and say to the child. &quot;Please place the eyes here&quot;. Step 3:Point to another place on the mat and say to the child, &quot;Please place the legs here&quot;. Third stage: Ask specific questions about each of the three cards and ensure the child answers them.Thisis the confirmation round. Take one card at a time, place it on the mat close to the child and ask the child what it is.Wait for the child to answer. At the end of the third stage the three cards must be in one row. Step 1:Place the &#39;legs&#39; card close to the child,point to it and ask, &quot;What is this?&#39;Wait for the child to answer. Step 2:Place the &middot;eyes&#39; card next to the &#39;legs&#39; card, point to it and ask, &quot;What is this?&quot; Wait for the child to answer. Step 3:Finally,place the &#39;mouth&#39; card next to the &#39;eyes&#39; card,point to it and ask, &quot;What is this?&#39;Wait for the child to answer.The third stage ends here. Start another name lesson with three more control cards on another day.</p>\n', NULL, 1, NULL, '2018-08-05 11:43:39', NULL, '2018-08-05 11:43:39', NULL),
(371, 4, 31, 32, 'Month_32', 'Small Number Cards 1 - Comparison', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/371/new logo-1 (1)-1.png', NULL, 'Small Number Cards 1 - Comparison', '<p>Small Number Cards 1 - Comparison</p>\n', NULL, 1, NULL, '2018-08-05 11:44:51', NULL, '2018-08-05 11:44:52', NULL),
(372, 2, 13, 14, 'Month_14', 'Jungle Train 2 - Sequence', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/372/train.jpg', NULL, '1.Number Sequencing 2.Reinforcement of loose counting', '<p>Ask tne child to carry this materialto the mat <em>t </em>maths table. Start with 1, and place the elephant in tne left corner. Then arrange all of tnem in sequence looking at the number symbols. Show the child now to count tne number of animals on each cards and verify if rt matcnes the sequence</p>\n', NULL, 1, NULL, '2018-08-05 11:44:57', NULL, '2018-08-05 11:44:57', NULL),
(373, 2, 25, 14, 'Month_14', 'Food and Nutrition - 3 to 4', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/373/new logo-1 (1)-1.png', NULL, 'Introduction to Food & Nutrition', '<p>Theme based activity on food and nutrition to help children understand the effect of eating ggod and bad foods through activities, art and craft, colouring, rhymes and group work.</p>\n', NULL, 1, NULL, '2018-08-05 11:47:37', NULL, '2018-08-05 11:47:37', NULL),
(374, 4, 31, 32, 'Month_32', 'Squares of numbers 2 - Linear', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/374/square number.png', NULL, '\na.Skip counting b.Foundation for tables c. Helping the child discover that squares are linear multiples of the number\n', '<p>Ask the child to carry the material to the mat Ask the child to also carry the number lme to his /her place of wor1&lt;. Take the square of a number and place 11m on the mat. ask the child to place the corresponding strips on the square one by one Aner placing onthe square show the child how to move the pieces one by one starting from top of the square to the linear scale Then we say, we took six&nbsp;&nbsp;6 times and we are at 36 Child renlove this activity and are onen found experimenting with this, so the realization that the square of the numberis a linear multiple automatically registers over a penoo of timev</p>\n', NULL, 1, NULL, '2018-08-05 11:50:28', NULL, '2018-08-05 11:50:28', NULL),
(375, 4, 32, 32, 'Month_32', 'Timeline of Eras 1 - Animals', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/375/new logo-1 (1)-1.png', NULL, '1.To enhance the child\'s reading sl<ill 2. To be able to identify extinct animals and their names 3.To enhance the child\'s pairing ability (lil<e match the following) 4.To mal<e the child aware of evolution I timelines of eras\n', '<p>Show the child to match the animalwith the controlcard, and give the names of a few. Then read the names written on the control card wtth the chid.Slowly the child gets into a habit of reading on his/ her own and identifying the animals</p>\n', NULL, 1, NULL, '2018-08-05 11:52:21', NULL, '2018-08-05 11:52:22', NULL),
(376, 4, 28, 32, 'Month_32', 'Sentence Box 2 - Sentences', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/376/new logo-1 (1)-1.png', NULL, 'Sentence Box 2 - Sentences', '<p>Sentence Box 2 - Sentences</p>\n', NULL, 1, NULL, '2018-08-05 11:53:12', NULL, '2018-08-05 11:53:13', NULL),
(377, 4, 31, 32, 'Month_32', 'Equations Box 2 - Multiply', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/377/equation box.png', NULL, 'Equations Box 2 - Multiply', '<p>Use the equat ons box along with multiplication tables</p>\n', NULL, 1, NULL, '2018-08-05 11:55:27', NULL, '2018-08-05 11:55:28', NULL),
(378, 4, 31, 32, 'Month_32', ' Subtraction Tray 2 - No counters', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/378/subtraction.png', NULL, ' Subtraction Tray 2 - No counters', '<p>&nbsp;Subtraction Tray 2 - No counters</p>\n', NULL, 1, NULL, '2018-08-05 11:56:43', NULL, '2018-08-05 11:56:43', NULL),
(379, 4, 31, 32, 'Month_32', ' Multiplication Problem Cards', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/379/multiplication table.png', NULL, ' Multiplication Problem Cards', '<p>&nbsp;Multiplication Problem Cards</p>\n', NULL, 1, NULL, '2018-08-05 11:57:52', NULL, '2018-08-05 11:57:53', NULL),
(380, 4, 28, 32, 'Month_32', 'Phonogram ous', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/380/new logo-1 (1)-1.png', NULL, '1.To learn the sound of phonogram ous 2. To spell accurately 3.To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - pious,jealous,viscous Introduce the phonogram to the child. Sound out words and help them recognize it. Introduce the phonogram word box to the child and helpthem form words. Use the sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to introduce word lists sequentially</p>\n', NULL, 1, NULL, '2018-08-05 12:00:12', NULL, '2018-08-05 12:00:12', NULL),
(381, 4, 28, 32, 'Month_32', 'Phonogram our', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/381/new logo-1 (1)-1.png', NULL, '1.To learn the sound of phonogram our 2.To spell accurately 3. To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - odour, honour,scourge, journey, armour,</p>\n\n<p>vapour Introduce the phonogram to the child.Sound out words and help them recognize it. Introduce the phonogram word box to the child and help them form words.&nbsp; Use the sentence box tiles/ green lists <em>I </em>booKs <em>I</em><em> </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-05 12:01:25', NULL, '2018-08-05 12:01:25', NULL),
(382, 4, 28, 32, 'Month_32', 'Homogram ei(2)', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/382/new logo-1 (1)-1.png', NULL, '1.To learn the various sounds of words containing ei2.To spell accurately 3. To read fluently\n', '<p>The more common our sound has already been introduced in Month 29 (vein, their,skein)</p>\n\n<p>SAMPLE WORDS (for teacher&#39;s understanding) - seiZe,receive,atheist,ceiling, deceit Introduce the homogram to the child. Read out words and help them recognize rt. Use the sentence box tiles/ green lists <em>I </em>books <em>I</em><em> </em>words wrrtten on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-05 12:03:16', NULL, '2018-08-05 12:03:17', NULL),
(383, 4, 28, 32, 'Month_32', 'Homogram ew(2)', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/383/new logo-1 (1)-1.png', NULL, '1.To learn the various sounds of words containing ew 2.To spell accurately 3. To read fluently\n', '<p>The more common &quot;ew&quot; sound has already been introduced in Month 28 (screw, chew, stew, flew) SAMPLE WORDS (for teacher&#39;s understanding) - Few, Knew Introduce the homogram to the child. Read out words and help them recognize it.&nbsp; Use the sentence box tiles/ green lists <em>I </em>booKs <em>I </em>words written on papers to introduce word lists sequentially</p>\n', NULL, 1, NULL, '2018-08-05 12:04:38', NULL, '2018-08-05 12:04:38', NULL),
(384, 4, 28, 32, 'Month_32', 'Homogram ey(2)', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/384/new logo-1 (1)-1.png', NULL, '1.To learn the various sounds of words containing ey 2. To spell accurately 3. To read fluently\n', '<p>The more common our sound has already been introduced in Month 29 (monkey,abbey, valley,kidney) SAMPLE WORDS (for teachers understanding) - Prey, they Introduce the homogram to the child. Read out words and help them recognize it.&nbsp; Use the sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-05 12:06:06', NULL, '2018-08-05 12:06:06', NULL),
(385, 4, 28, 32, 'Month_32', 'Homogram ue(4)', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/385/new logo-1 (1)-1.png', NULL, '1.To learn the various sounds of words ending with ue 2. To spell accurately 3. To read fluently\n', '<p>The more common &quot;ue&quot; sound 1 has already been introducedin Month 28 (cruel, affluent,</p>\n\n<p>duet) SAMPLE WORDS (for teachers understanding) - Sound 2 - issue, rescue. argue, value, residue. avenue Sound 3 - blue,tissue. true.virtue Sound 4 - tongue, <em>vague, </em>pique, meringue Introduce the homogram to the child. Read out words and help them recognize it. Use the sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-05 12:07:32', NULL, '2018-08-05 12:07:32', NULL),
(386, 4, 28, 32, 'Month_32', 'Homogram ow(3)', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/386/new logo-1 (1)-1.png', NULL, '1.To learn the various sounds of words containing ow 2.To spell accurately 3. To read fluently', '<p>The more common &quot;ow&quot; Sound 1 nas already been introduced in Month 26 (crowd,fowl, brown. drowsy, cow) SAMPLE WORDS (for teacner&#39;s understanding) - SOUND 2 flow, stow, elbow, snow, burrow, tow SOUND 3 flower, cower, bower,shower,towel Introduce the nomogram to the child.Read out words and help tnem recogniZe it. Use the sentence box tiles/ green lists <em>I </em>booKs <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-05 12:09:02', NULL, '2018-08-05 12:09:02', NULL),
(387, 4, 30, 32, 'Month_32', 'Hindi Alphabet Box 1 - Swar, Vyanjan', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/387/hindi.jpg', NULL, 'To introduce the shapes of the alphabet in Hindi', '<p>Introduce tne letters sequentially starting from a,aa and so on Do not give more than 4-6 sounds in a day. Do it as a name lesson. Continue to give all the sounds <em>over </em>a period of 20 days (with gaps in between) Give the presentations in HindiSwar and Vyanjan</p>\n', NULL, 1, NULL, '2018-08-05 12:11:16', NULL, '2018-08-05 12:11:17', NULL),
(388, 4, 28, 32, 'Month_32', 'Nouns 2 - Proper Nouns', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/388/new logo-1 (1)-1.png', NULL, '1.To introduce children to more nouns 2.To draw the child\'s attention to proper nouns 3. To lay the foundation for grammar and sentence formation', '<p>This activityis to be donein a small group ( 3 to 8 children)Asl&lt; the children to name some nouns that they already !&lt;now. They would give names of some objects Now tell them,we are going to learn more about nouns Not only are the object names called nouns. nouns are also names of people and places Give them examples Asl&lt; each of them to name a friend and say all these are also nouns.Eg. Mohan, Sheela Then name places - Delhi,&nbsp; India, London,JPnagar etc Tell them names of mountains, deserts, etc lil&lt;e Himalayas, Everest, Thar desert are also nouns Tell them all the monuments names lil&lt;e Taj Mahal, Eiffel tower are also nouns Asl&lt; them to give examples Then have a set of words written&nbsp; that are nouns miXed with prepositions, adverbs etc, and asl&lt; the children to select the nouns from them</p>\n', NULL, 1, NULL, '2018-08-05 12:12:38', NULL, '2018-08-05 12:12:39', NULL),
(389, 4, 28, 32, 'Month_32', 'Verbs 1 - Action words', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/389/new logo-1 (1)-1.png', NULL, '1.To introduce children to the class of words that are verbs 2. To lay the foundation for grammar and sentence formation', '<p>This activityis to be donein a small group (3 to 8 children) Keep some action pictures in&nbsp; front of you. Asl&lt; the children to name these actions one by one Then, tell them these are all action words are called verbs In this instance nave the simple form of the verb - run. wall&lt;,jump Asl&lt; tne children to do tne actionifis it possible Then nave a set of words&nbsp;&nbsp; written tnat are verbs mixed with prepositions, nouns etc, and asl&lt; tne children to select the verbs from them</p>\n', NULL, 1, NULL, '2018-08-05 12:13:57', NULL, '2018-08-05 12:13:57', NULL),
(390, 4, 28, 33, 'Month_33', 'Grammar Cards 1 - Nouns and Verbs', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/390/verbs.jpg', NULL, '\"1.To introduce children to nouns and verbs as a part of speech 2. Help children form sentences with a noun and a verb 3. Help children \"parse\" a sentence\"\n', '<p>This presentation is to be made individually to a child Introduce the grammar box to the child,and tell her <em>I </em>him that this box contains different types of words each represented by a colour. Each colour represents a part of speech/ grammar Today we are going to look at nouns and verbs which you already l&lt;now about. The nouns are blue in colour and tne verbs are in red Let us take any one card from each, read it and form a sentence with both words Eg. Mohan run -Mohan runs very fast Table walking- -1 am walking towards the table Ask the child to form a sentence.</p>\n', NULL, 1, NULL, '2018-08-05 12:16:30', NULL, '2018-08-05 12:16:31', NULL),
(391, 4, 32, 33, 'Month_33', 'Directions Game 4 - Compass', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/391/direction game.jpg', NULL, '1.Introduce the usage of compass 2. Introduction to true North (and South, East, West)', '<p>Ask the child to place the material in the middle of the mat. Ask the child to lay out the town as he chooses on the board Then we ask him to place only the North arrow on the board pointing away from him on the opposite side of the board. Then place the compass on the centre of the board so that the North of the compass aligns with the North arrow. Show the child how to al gn the red marl&lt; of the compass to the north. Gently rotate the board untilthe red mark is on the compass North.So now, the North arrow,the North on the compass and the red mark are all aligned.After that is done ask the child to place the remaining arrows preferably in the folloWing order - S, E, W and then the others If you feel the child needs a guide for the remaining,you could point out that the compass has all the directions marked on it and the child can use that.</p>\n', NULL, 1, NULL, '2018-08-05 12:18:41', NULL, '2018-08-05 12:18:42', NULL),
(392, 4, 28, 33, 'Month_33', '3 PC Musical instruments 2 - No control Card', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/392/music.jpg', NULL, '1.To enhance the child\'s reading sl<ill and give meaning to the \"read word\'2. To famiiarize the child with each musical instrument 3. To enhance the child\'s pairing ability (liKe match the following). This activity cannot be started until the child has worKed with the control cardlong enough to recognize all the pictures\n', '<p>It is good to start this activity with only 3 to 4 sets of cards for children who may not be ready for a lot of reading.Take about 3 -4 picture cards. and place them on top /lefi side in a line. Then we looK at the name cards. Read it and find the corresponding picture Place rt beside the picture card. Watch the video of 3 PC Continents to view how any 3 Part Card without controlcard must be presented (Month 30) The children may choose to do the same with the controlcard also.with sight reading.They would see the first letter or the length of the word, and pair the word with the controlcard. It is absolutely fine as this will set the pattern for reading</p>\n', NULL, 1, NULL, '2018-08-05 12:20:17', NULL, '2018-08-05 12:20:18', NULL),
(393, 4, 31, 33, 'Month_33', 'Decimal System 5 - Subtraction', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/393/decimal value.png', NULL, 'Subtracting large numbers (4 digit) with and without borrowing', '<p>You could start with,do you remember how you worKed with the subtraction game when you &quot;tooK away&quot; from the originalquantity.We are going to do the same with large numbers We give 2 slips of numbers to 2 children and ask them to lay out the number cards in columns with thelarger number on top and the smaller at the bottom.At first we ensure there is no &quot;borroWing&quot; so that all numbers below are smaller than the numbers on top. We asK the child with the larger number to go the banK and bring the quantity assigned to her/ him. and place it in the usual format of units, tens,hundreds and thousands on the mat. We then asK the second child to take from the mat the quantity assigned to her <em>I </em>him. Then we ask the first child to count what is left <em>over </em>and bring the number card from the large box as the answer. Itisimportant to use the words &quot;take away&bull; and &quot;left over&quot; to make them understand the concept. We asK both the children to record the sum on maths paper (with squares) Repeat with each of the children doing a subtraction The same can then be presented again with borrowing&quot; after about a month when they have done enough subtraction with 4 digit numbers. For this the children can&nbsp;&nbsp;&nbsp; picK their own numbers from thelaminated number card boxes. For borrowing, they have&nbsp;&nbsp; to exchange 1ten for 10 units from the bank and so on</p>\n', NULL, 1, NULL, '2018-08-05 12:21:41', NULL, '2018-08-05 12:21:42', NULL),
(394, 4, 28, 33, 'Month_33', 'Print Cursive equivalence', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/394/new logo-1 (1)-1.png', NULL, 'Print Cursive equivalence', '<p>Print Cursive equivalence</p>\n', NULL, 1, NULL, '2018-08-05 12:22:45', NULL, '2018-08-05 12:22:45', NULL),
(395, 4, 28, 33, 'Month_33', 'Public Places', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/395/new logo-1 (1)-1.png', NULL, 'Public Places', '<p>Public Places</p>\n', NULL, 1, NULL, '2018-08-05 12:23:27', NULL, '2018-08-05 12:23:28', NULL),
(396, 4, 33, 33, 'Month_33', 'TC: Parts of Fish 2 - Words', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/396/fish.jpg', NULL, '1.To enhance the child\'s reading sl<ill and give meaning to the \"read word\'2. To be able to read and identify the parts of a fish 3. To enhance the child\'s pairing ability (liKe match the following)\n', '<p>It is good to start this activity with only 3 to 4 sets of cards for children who may not be ready for a lot of reading.Take about 3 -4 picture cards. and place them on top /lefi side in a line. Then <em>we </em>looK at the name cards. Read it and find the corresponding picture. Place it beside the picture card. This activity usually cannot be performed until the child has worKed with the controlcard long enough to recognize all the pictures. However,the children may choose to do this activity with all 3 parts of the card, the controlcard, picture card and the word card. They would see the first letter or the length of the word , and pair the word with the controlcard.It is absolutely fine as this will set the pattern for reading</p>\n\n<p>&nbsp;</p>\n', NULL, 1, NULL, '2018-08-05 12:25:19', NULL, '2018-08-05 12:25:19', NULL),
(397, 4, 28, 33, 'Month_33', 'Things around the kitchen', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/397/new logo-1 (1)-1.png', NULL, 'Things around the kitchen', '<p>Things around the kitchen</p>\n', NULL, 1, NULL, '2018-08-05 12:26:23', NULL, '2018-08-05 12:26:23', NULL),
(398, 4, 28, 33, 'Month_33', 'Compound Word Cards 2 - Others', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/398/compound words.png', NULL, 'Compound Word Cards 2 - Others', '<p>Compound Word Cards 2 - Others</p>\n', NULL, 1, NULL, '2018-08-05 12:29:21', NULL, '2018-08-05 12:29:21', NULL),
(399, 4, 33, 33, 'Month_33', 'Prism', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/399/prism.jpg', NULL, 'Prism', '<p>Splitting of Light</p>\n', NULL, 1, NULL, '2018-08-05 12:30:44', NULL, '2018-08-05 12:30:44', NULL),
(400, 4, 34, 33, 'Month_33', 'The Jungle ', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/400/new logo-1 (1)-1.png', NULL, 'The Jungle ', '<p>The Jungle</p>\n', NULL, 1, NULL, '2018-08-05 12:32:52', NULL, '2018-08-05 12:32:53', NULL),
(401, 4, 28, 33, 'Month_33', 'Place and Direction Box 2 - Working Sheet', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/401/place n dir.png', NULL, '1.To reinforce location  position 2. To introduce the formal use of prepositions as a \"filling the blanK\"', '<p>Ask the child to use the controlcards as a guide. Show the picture and ask the child to identify the preposition. Match the card with the controlsheet and ask the child to fill the appropriate wordin the blank spaceIf the child wants to use objects as a means of reinforcement , itis fine Eg if <em>w</em><em>e </em>take,bat and table The bat is OVER the table The bat is BESIDE the table The batis UNDER the table When the child is very familiar with all prepositions, giVe alternates for words like Beside, Under like &quot;Next to&quot;,&quot;Below&quot;</p>\n', NULL, 1, NULL, '2018-08-05 12:40:14', NULL, '2018-08-05 12:40:15', NULL),
(402, 4, 28, 33, 'Month_33', 'Phonogram are', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/402/new logo-1 (1)-1.png', NULL, '1.To learn the sound of phonogram are 2.To spell accurately 3. To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - stare, care, farewell, unaware, rare, parent Introduce the phonogram to the child. Sound out words and help them recognize it. Introduce the phonogram word box to the child and help them form words.&nbsp; Use the sentence box tiles/ green lists <em>I </em>booKs <em>I </em>words written on papers to introduce word lists sequentially</p>\n', NULL, 1, NULL, '2018-08-05 12:41:50', NULL, '2018-08-05 12:41:51', NULL),
(403, 4, 28, 33, 'Month_33', 'Homogram c(2)', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/403/new logo-1 (1)-1.png', NULL, '1.To learn the various sounds of words containing c 2.To spell accurately 3. To read fluently\n', '<p>The more common &quot;c&quot; sound has already been introduced earlier (cat, candle. ticK) SAMPLE WORDS (for teacher&#39;s understanding) - cement nice Introduce the homogram to the child. Read out words and help them recognizeit.&nbsp; Use the sentence box tiles/ green lists <em>I </em>booKs <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-05 12:43:37', NULL, '2018-08-05 12:43:38', NULL),
(404, 4, 28, 33, 'Month_33', 'Homogram g(2)', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/404/new logo-1 (1)-1.png', NULL, '1.To learn the various sounds of words containing g 2. To spell accurately 3. To read fluently\n', '<p>The more common &quot;g&quot; sound has already been introduced earlier (cat,candle,tick)</p>\n\n<p>SAMPLE WORDS (for teacher&#39;s understanding) - SOUND 2 giraffe. rage Introduce the homogram to the child. Read out words and help them recognize it.&nbsp; Use the sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to introduce word lists sequentially</p>\n', NULL, 1, NULL, '2018-08-05 12:45:08', NULL, '2018-08-05 12:45:08', NULL),
(405, 4, 28, 33, 'Month_33', 'Phonogram terminal y', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/405/new logo-1 (1)-1.png', NULL, '1.To learn the sound of words ending with y 2.To spell accurately 3. To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - nasty, fury,density,biology,city, hungry</p>\n\n<p>Introduce the phonogram to the child. Sound out words and help them recognize it. Introduce the phonogram word box to the child and help them form words.&nbsp; Use the sentence box tiles/ green lists <em>I </em>booKs <em>I </em>words written on papers to introduce word lists sequentially</p>\n', NULL, 1, NULL, '2018-08-05 12:46:44', NULL, '2018-08-05 12:46:45', NULL),
(406, 4, 28, 33, 'Month_33', 'Phonogram dge', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/406/new logo-1 (1)-1.png', NULL, '1.To learn the sound of phonogram dge 2. To spell accurately 3. To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - wedge, midget, dodge, badger Introduce the phonogram to the child.Sound out words and help them recogniZe it. Introduce the phonogram word box to the child and helpthem form words.Use the sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-05 12:50:49', NULL, '2018-08-05 12:50:50', NULL),
(407, 4, 28, 33, 'Month_33', 'Phonogram sch', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/407/new logo-1 (1)-1.png', NULL, '1.To learn the sound of phonogram sch 2. To spell accurately 3. To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - school,scheme, schooner Introduce the phonogram to the child. Sound out words and help them recognize it. Introduce the phonogram word box to the child and helpthem form words. Use the sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to introduce word lists sequentially</p>\n', NULL, 1, NULL, '2018-08-05 12:52:41', NULL, '2018-08-05 12:52:42', NULL),
(408, 4, 28, 33, 'Month_33', 'Verbs 2 - Complete', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/408/new logo-1 (1)-1.png', NULL, '1.To introduce children to a variety of verbs in different tenses 2. To lay the foundation for grammar and sentence formation', '<p>Ask the children to name a few verbs. Then tell them verbs can be used in many ways. Do not talk about past <em>I </em>presenUtenses.Just give examples Run Ilike to run Seeta ran to schoolyesterday The dog was running on the road The athlete will be running in the race tomorrow The rat runs to its hole Tell the children that sometimes the action may not be seen, like thinking, but the mindis doing something,so thinking is also a verb Iam floating,&nbsp;&nbsp; it is a state that <em>you </em>are in. Floatingis also a verb Give examples - Going,Minding,Being, Mixing, Standing, Seeing Typically, the children will then understand that words that can have &quot;ing&bull; added to them are verbs.Now ask the children to take any one verb and give sentences using the verb in different ways. Also give the children sentences and ask them&nbsp;&nbsp; to identify the verb</p>\n', NULL, 1, NULL, '2018-08-05 12:54:21', NULL, '2018-08-05 12:54:22', NULL),
(409, 2, 12, 15, 'Month_15', 'Alphabet Box 3 - Word Formation', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/409/alphabets.jpg', NULL, '1.Building 3 letter words of pictures he sees.\n2. Foundation for reading and writing', '<p>When <em>we </em>give this presentation, <em>we </em>tell the child &quot; <em>we </em>are going to talk&nbsp;about how we make words&quot;.We give some pictures like pot and ask&nbsp;the child to analyse and identify the starting sound. the middle sound and then the ending soundin order. This time we use the material with the alphabet mat,and show the child how to form the words on the mat. Tell the child to ask&nbsp;you if he needs more pictures.Always have picture of 3 letter words available with you</p>\n', NULL, 1, NULL, '2018-08-06 13:16:09', NULL, '2018-08-06 13:16:10', NULL),
(410, 2, 13, 15, 'Month_15', 'Texture Box 3 - Blindfold', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/410/new logo-1 (1)-1.png', NULL, 'To make the child aware of varying textures only by his sense of touch and pair them', '<p>Ask&nbsp;the child to carry the texture box to her/ his mat. Remove one each of all the texture cards and place them randomly on the mat. Tie a blindfold across the child&#39;s eyes (Ensure that the child is comfortable With this,tie it <em>o</em><em>ver </em>your own eye&#39;s or another child&#39;s if he is uncomfortable,in case he refuses still, do this activity without blindfold) Show the child&nbsp; how to place his palm on a card and moveit gently across its surface to feelits texture. Then show him how to feeleach of the cards in the box and find the pair. Place the card on top of its pair. This can also be a small group activity. Complete teacher supervision&nbsp; needed with blindfold. When the child has finished pairing, you can asl&lt; her/ him to identify the names by feeling blindfolded (give name lesson before this) TEXTURE PREPARATION ACT IVITY If you feel that a child is not really noticing difference in textures much, sensitize the hand before the exercise.Keep a bowl of warm water,and asl&lt; the&nbsp; child to dip her/ his fingers into the bowl, and rub dry with a towel before this exercise. This will heighten the sense of touch.</p>\n', NULL, 1, NULL, '2018-08-06 13:19:22', NULL, '2018-08-06 13:19:23', NULL),
(411, 2, 12, 15, 'Month_15', 'WW Seq Patterns 2 - Advanced', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/411/wwq.jpg', NULL, 'Help the teacher mal<e an assessment on the child\'s understanding of sequences of patterns', '<p>Arrange the pieces in 4 rows of the worKsheet in patterns of objects. Leave the last one blanK. Arrange 2 pieces next to each empty slot to offer a choice to the child between both the objects of the same sequence Eg. The sequence in first row is Watch . Watch. Spectacles, Spectacles,Watch . Watch ---- Choice to child:Watch, Spectacles Keep all these arranged on the mat before you invrte the child to worK. Tell the child tolooK for &#39;what comes next&#39;</p>\n', NULL, 1, NULL, '2018-08-06 13:22:10', NULL, '2018-08-06 13:22:10', NULL),
(412, 2, 13, 15, 'Month_15', 'Colour Viewer 2 - Combine', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/412/new logo-1 (1)-1.png', NULL, 'Colour Abstraction', '<p>Combine colour tablets and see through&nbsp;at varying distance.</p>\n', NULL, 1, NULL, '2018-08-06 13:29:16', NULL, '2018-08-06 13:29:17', NULL),
(413, 2, 13, 15, 'Month_15', 'Lake and Island 1 - Pour Water', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/413/new logo-1 (1)-1.png', NULL, '1.To improve fine motor skills \n2. To learn about lake and island \n3. Lay a foundation for understanding of land and water forms', '<p>Introduce tne materialto the child as landforms Ask tne child to bring a jug of water which needs to be beside tne landform This water could be tinted blue in advance (optional) snow the child now to pour the water carefully into the water area. Always ensure tnereis&nbsp; a napkin ready for this activity</p>\n', NULL, 1, NULL, '2018-08-06 13:27:19', NULL, '2018-08-06 13:27:20', NULL),
(414, 2, 13, 15, 'Month_15', 'Tree Puzzle 3 - Names of parts', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/414/tree puzzle.png', NULL, 'Identify and understand parts of a tree', '<p>Give a name lesson for the parts of tree,starting from the roots going upwards Roots Trunk Branches Leaves</p>\n', NULL, 1, NULL, '2018-08-06 13:31:07', NULL, '2018-08-06 13:31:08', NULL),
(415, 2, 25, 15, 'Month_15', 'Theme 5 Culture - 3 to 4', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/415/new logo-1 (1)-1.png', NULL, 'Culture Them Level 1 for Nursery', '<p>Theme based acctivity for children to learn and understand about culture related to themselves, surroundings and day to day living. To be donw with intercative activities like colouring, art and craft, rhymes and group activities.</p>\n', NULL, 1, NULL, '2018-08-06 13:34:09', NULL, '2018-08-06 13:34:10', NULL),
(416, 2, 12, 15, 'Month_15', 'Sight Words Level 1', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/416/sight words.jpg', NULL, '1.Introducing words that occur commonly, but cannot be read phonetically \n2. To help the child read bool<s faster and more smoothly,through \"Word Recognition \n3.To aid in all future reading Where \"pattern reading\" is needed like reading music\n', '<p>Just read the word without splitting phonetically As children see the words over a period of time, they start pattern reading it,even if they do not !&lt;now the sounds of the letters yet. This is the traditionalway of reading and is recommended only for those common words which are usedin bool&lt;s often. It will help their story boo!&lt; reading Eg. In the sentence &quot;The dog ate six buns&quot; &#39;The&quot; and &quot;ate&quot; are sight words, all the other words can be read phonetically</p>\n', NULL, 1, NULL, '2018-08-06 13:39:19', NULL, '2018-08-06 13:39:19', NULL),
(417, 2, 13, 15, 'Month_15', 'Noise Boxes 3 - Gradation', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/417/noise box.jpg', NULL, '1.To help the child grade sounds from loud to soft \n2. Make the child aware of differences in sounds & giving it names.\n', '<p>Ask&nbsp;tne child to carry the sound boxes to nis place of worK softly without making a noise.Take out allcylinders of one colour and place them in a line.snow the child how to find tne loudest noise box. Place it on the mat. Ask&nbsp;her/ him to find the next loudest box among the remaining boxes and place it to the right of the first one.Tne activity goes on and once tne child has graded all tne boxes we asK nim to check&nbsp;if he nas arranged them correctly.Asl&lt; the child if he wants to repeat the activity, then he nas to Keep all tne boxes mixed up and repeat tne activity. After grading activityis offered, tne words louder and softer must be introduced.</p>\n', NULL, 1, NULL, '2018-08-06 14:15:51', NULL, '2018-08-06 14:15:51', NULL),
(418, 2, 13, 16, 'Month_16', 'Counting Jigsaw 4 - Memory', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/418/jigsaw.png', NULL, '1.Enhances memory skills 2. Greater understanding of quantity-symbol matching 3.Helps the child move towards abstract quantification', '<p>Ask&nbsp;tne child to take tne materialto his mat. Ask&nbsp;him to separate tne quantity and symbol cards. snow him now to place all the quantity cards on a tray randomly. Place the tray at a fair distance from tne place of work. Ask&nbsp;the child to arrange the symbolcards in sequence on the mat. Then point to any one number and asl&lt; tne child to bring tne corresponding quantity from the tray. You can also have the cards in different places and asl&lt; him to get &nbsp;the pair similarly.</p>\n', NULL, 1, NULL, '2018-08-06 13:51:41', NULL, '2018-08-06 13:51:41', NULL),
(419, 2, 13, 16, 'Month_16', 'Trapezoid Tower 3 - Small Group', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/419/trapezodial.png', NULL, 'To improve eye-hand co-ordination 2. To lay a foundation for width, dimensions by feeling with hands', '<p>Invite 3 to 4 children.Ask the children to have the trapezoid tower on a mat and come and call you. Ask each child to take two or three pieces each and keep it behind them.Ask the child having the widest trapezoid to placeit on the mat. The children should be able to feel with their hands and find the next one.The child having the next piece will have to bring it forward and the activity goes on unt lthe whole pyramid is built</p>\n', NULL, 1, NULL, '2018-08-06 13:53:02', NULL, '2018-08-06 13:53:03', NULL),
(420, 2, 12, 16, 'Month_16', 'WW Classification 2', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/420/WW2.jpg', NULL, 'Help the child understand classification and discrimination', '<p>Arrange all the pieces outside the board (maximum of 16 - that is only one board at a time) Take a piece of cardboard of the same size and write the name of the group. In the first slot of every board, place a card Ask&nbsp;the child to arrange in rows everything that belongs in that group.</p>\n', NULL, 1, NULL, '2018-08-06 13:55:48', NULL, '2018-08-06 13:55:49', NULL),
(421, 2, 13, 16, 'Month_16', 'Triangle Sorter 4 - Names', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/421/triangle sorter.png', NULL, '1.To understand triangle types', '<p>Ask the child to bring the triangle sorter to his mat. Now take out 3 of the shapes and give a name lesson: Equilateral, Scalene,isosceles Another day give the other 3 - Acute angled. Right Angled and Obtuse Angled</p>\n', NULL, 1, NULL, '2018-08-06 13:58:11', NULL, '2018-08-06 13:58:11', NULL);
INSERT INTO `t_activities` (`activity_id`, `standard_id`, `subject_id`, `display_order`, `month`, `name`, `image`, `video`, `objective`, `Description`, `tags`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`, `Branch_id`) VALUES
(422, 2, 13, 16, 'Month_16', 'Place Value System 1 - Introduction', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/422/place value.jpg', NULL, ' To introduce the decimal system. and help the child get a sense of hierarcny\n', '<p>Introduce tne materialto the child saying &quot;This is tne decimal system&quot; snow him now to carry rt lil&lt;e a tray to his place of worK. Tal&lt;e out one each from eacn of the hierarchies and place it in front of the respective compartment. The units will always be on tne extreme right and the thousands on theleft just like in a number. Give the namelesson - Unit Ten Hundred Thousand</p>\n', NULL, 1, NULL, '2018-08-06 14:01:51', NULL, '2018-08-06 14:01:51', NULL),
(423, 2, 13, 16, 'Month_16', 'WW Quantity Seq 2 - Multiple', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/423/new logo-1 (1)-1.png', NULL, 'Helpthe teacher mal<e an assessment on the child\'s understanding of various parameters\nof quantity 1. Sequencing 2. Greater and Lesser 3.Quantity Patterns\n', '<p>Arrange the pieces on the worKsheet in ascending order Eg. 1, 2, 3 ... 4, .... 6 ,7 Leave tne last one blank. Ask&nbsp;tne child to find what comes next. Keep all the remaining tiles randomly around and the child has to choose the answer from them . You could also leave in&nbsp; between numbers blanK instead of the last one.</p>\n', NULL, 1, NULL, '2018-08-06 14:04:50', NULL, '2018-08-06 14:04:50', NULL),
(424, 2, 12, 16, 'Month_16', 'Farm 3 - Discussion', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/424/farm.png', NULL, 'Introducing nouns using farm and farm animals.', '<p>Have the farm at the centre of the conversation.Make it descriptive - colours. sizes, comparison, preposttion, most importantly nouns</p>\n', NULL, 1, NULL, '2018-08-06 14:06:33', NULL, '2018-08-06 14:06:34', NULL),
(425, 2, 12, 16, 'Month_16', 'Picture Association 2 - Words', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/425/picture assco.png', NULL, '1.Helps child make associations 2.Increases Vocabulary', '<p>Place the cards in front of the child Keep the left {hair,locl&lt;,hammer) picture cards on one side and the others on tne other side Point to tne cards on one side and asl&lt; the child to say the name of each image aloud. Then asl&lt; the child to find what goes with the &#39;nail&#39; and so on.Asl&lt; him to tal&lt;e it out from the other set, pair and then put it bacK. AsK the child to complete the rest in the same way You can graduallyintroduce tne name of all the images</p>\n', NULL, 1, NULL, '2018-08-06 14:07:58', NULL, '2018-08-06 14:07:58', NULL),
(426, 2, 24, 16, 'Month_16', 'Flags Pairing 2 - Memory Game', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/426/flag.jpg', NULL, ' 1.Develops memory skills \n2. Encourages social interaction \n3. Instills \"Game Playing\" Logic\n', '<p>Ask the child to carry the nag pairing activity to his mat if he would like to play a game. Ask him to take out 5 pairs of ftags and upturn them on the mat. Ask him to invite any child he wishes to play with him. If the other child is busy wrth some other activity, he couldinvite another child or wait for him.If no oneis available, you can play with him. Tell the children they will have to find the pair of each nag,but first you are going to upturn 2 cards to see if they are a pair.Tell the children they now have to take turns to pick up 2 cards and try to guess or remember where the pairs are. They can keep the pairs they find facing upwards on the mat. near them. Thisis their first attempt and a <em>very </em>complex process, teacher support will be necessary for a few games atleast. Once the children are slightly older and understand the memory game better, we can increase the number of pairs of cards</p>\n', NULL, 1, NULL, '2018-08-06 14:09:54', NULL, '2018-08-06 14:09:55', NULL),
(427, 2, 24, 16, 'Month_16', 'Water World 2- Name Lesson', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/427/water world.png', NULL, 'Introducing names of aquatic animals.', '<p>Names of aqua animals</p>\n', NULL, 1, NULL, '2018-08-06 14:11:03', NULL, '2018-08-06 14:11:03', NULL),
(428, 2, 25, 16, 'Month_16', 'Theme 6-Animal Kingdom 3 to 4', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/428/new logo-1 (1)-1.png', NULL, 'Introducing animal kingdom through theme activity.', '<p>Animal Kingdom exposure through crate wotrk like art and craft, colouring, group activity, rhymes and videos.</p>\n', NULL, 1, NULL, '2018-08-06 14:13:56', NULL, '2018-08-06 14:13:57', NULL),
(429, 4, 31, 34, 'Month_34', 'Small Number Cards 2 - Ascending order', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/429/new logo-1 (1)-1.png', NULL, 'Small Number Cards 2 - Ascending order', '<p>Small Number Cards 2 - Ascending order</p>\n', NULL, 1, NULL, '2018-08-08 07:03:21', NULL, '2018-08-08 07:03:21', NULL),
(430, 4, 32, 34, 'Month_34', 'Asia Map 1 - Puzzle', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/430/asia map.jpg', NULL, '1.Exploring various countries of Asia 2. To develop logical reasoning 3. To improve spatial analysis\n', '<p>Introduce tne material to the child as Asia puzzle map.Also introduce the child to the control map. snow the child how to carry both to his/her mat. Now place both tne puzzle map and control map side by side. Take out a few of the pieces (say Russia,China.India. SaudiArabia) out of the puzzle map and place randomly around. Keep tne control map, and snow the child how to take any one of the pieces and place on tne control map and cneck where it belongs and place it back on the Asia puzzle map.Over a period of time. children learn by themselves to take out more number of pieces and solve tne puzzle</p>\n', NULL, 1, NULL, '2018-08-08 07:06:02', NULL, '2018-08-08 07:06:03', NULL),
(431, 4, 32, 34, 'Month_34', 'Asia Map 2 - Control Map', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/431/control card_asia.jpg', NULL, '1.	Identifying various countries of Asia 2. Learning the names of the countries, and their geographical location, their neighbours etc', '<p>&nbsp;As earlier show the child how to take out the pieces and put bacK ( by this time children will&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;be removing many if not all pieces). They love working in very small groups of 2 to 3 with the map (as shown in India map video) Now place both maps side by side.TaKe out 3&nbsp; (max 4) of the pieces, large ones which are easily identifiable and name them. Use the 3 stage Name lesson - Identification. recognition and confirmation Let the countries be from different parts. Idealcountries to start with are - Russia.India, China and SaudiArabia&nbsp; Keep the control map, and show the child how to take any one of the pieces and place on the control map and check whereit belongs and place it bacl&lt; on the India map. Over a period of a month, introduce more names. even if they are not very familiar with eaier ones. They will Keep learning over a period of time. They will also have reinforcement of learning when you do theme activities or group activities related to geography. Encourage conversation around these countries.Definitely plan an annual day <em>I </em>theme time special day where children come in various costumes and say a couple of lines about the country, that information will stay With them more effectively</p>\n', NULL, 1, NULL, '2018-08-08 07:11:55', NULL, '2018-08-08 07:11:56', NULL),
(432, 4, 33, 34, 'Month_34', 'First Aid, Medicine', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/432/new logo-1 (1)-1.png', NULL, 'First Aid, Medicine', '<p>First Aid, Medicine</p>\n', NULL, 1, NULL, '2018-08-08 07:13:17', NULL, '2018-08-08 07:13:18', NULL),
(433, 4, 33, 34, 'Month_34', 'Places of worship', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/433/new logo-1 (1)-1.png', NULL, 'Places of worship', '<p>Places of worship</p>\n', NULL, 1, NULL, '2018-08-08 07:14:30', NULL, '2018-08-08 07:14:31', NULL),
(434, 4, 33, 34, 'Month_34', ' Rolling Ball Slope', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/434/balancing beam.jpg', NULL, ' Rolling Ball Slope', '<p>&nbsp;Rolling Ball Slope</p>\n', NULL, 1, NULL, '2018-08-08 07:16:12', NULL, '2018-08-08 07:16:13', NULL),
(435, 4, 33, 34, 'Month_34', 'Supermarket game', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/435/super market.jpeg', NULL, 'Supermarket game', '<p>Supermarket game</p>\n', NULL, 1, NULL, '2018-08-08 07:20:29', NULL, '2018-08-08 07:20:29', NULL),
(436, 4, 33, 34, 'Month_34', 'TC: Parts of a Flower 2 - No control Card', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/436/flower.jpg', NULL, '1. To enhance the child\'s reading sl<ill and give meaning to the \"read word\'2. To be able to read and identify the parts of a ftower 3. To enhance the child\'s pairing ability (lil<e match   the following)', '<p>It is good to start this activity with only 3 to 4 sets of cards for children who may not be&nbsp;&nbsp; ready for a lot of reading.Tal&lt;e about 3 -4 picture cards. and place them on top /lefi side in a line. Then we 1001&lt; at the name cards. Read it and find the corresponding picture. Place it beside the picture card.&nbsp; This activity usually cannot be performed until the child has worl&lt;ed with the controlcard long enough to recognize all the pictures. However,the children may choose to do this activity with all 3 parts of the card, the controlcard, picture card and the word card. They would see the first letter or the length of the word , and pair the word with the controlcard.It is absolutely fine as this will set the pattern for reading</p>\n\n<p>&nbsp;</p>\n', NULL, 1, NULL, '2018-08-08 07:22:38', NULL, '2018-08-08 07:22:38', NULL),
(437, 4, 32, 34, 'Month_34', '3 PC landforms 1 - Pictures', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/437/landform.png', NULL, '1.To introduce names and pictures of landforms/ waterforms 2. To enhance the child\'s pairing ability\n', '<p>&nbsp;Since we start this activity fairly late.we could use all the cards to start with Place the controlcard with the name and picture on the left side . Then take the picture cards and show the child how to find the&nbsp; same picture and place it next to the card. Then show her/him how to locate the name card and place it on the picture card. After a few days of work with the cards,give the names of each part of the card. Do not use the word cards initially. Later when children have started &quot;sight reading&quot;, some children may be able to compare names <em>even </em>before they start reading using cues like the firstletter or shape ofletters. Sight reading is easier after they know the names.</p>\n', NULL, 1, NULL, '2018-08-08 07:28:05', NULL, '2018-08-08 07:28:06', NULL),
(438, 4, 34, 34, 'Month_34', 'Food and Nutrition ', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/438/new logo-1 (1)-1.png', NULL, 'Food and Nutrition ', '<p>Food and Nutrition</p>\n', NULL, 1, NULL, '2018-08-08 07:29:43', NULL, '2018-08-08 07:29:43', NULL),
(439, 4, 28, 34, 'Month_34', 'Homogram ed(2)', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/439/new logo-1 (1)-1.png', NULL, '1.To learn the various sounds of words containing ed 2. To spell accurately 3. To read fluently\n', '<p>The more common straight sound of ed has already been introduced earlier (edit,bed. shred) SAMPLE WORDS (for teachers understanding) - SOUND 2 hammered,banned Introduce the homogram to the child. Read out words and help them recognize rt.&nbsp; Use the sentence box tiles/ green lists <em>I </em>booKs <em>I </em>words wrrtten on papers to introduce word lists sequentially</p>\n', NULL, 1, NULL, '2018-08-08 07:32:00', NULL, '2018-08-08 07:32:00', NULL),
(440, 4, 28, 34, 'Month_34', 'Homogram s(2)', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/440/new logo-1 (1)-1.png', NULL, '1.To learn the various sounds of words containing s 2.To spell accurately 3. To read fluently\n', '<p>The more common &quot;s&quot; sound has already been introduced earlier (sofa,rest) SAMPLE</p>\n\n<p>WORDS (for teacher&#39;s understanding) - SOUND 2 rose,tease (sounds liKe roze, teaze) Introduce the homogram to the child. Read out words and help them recognize rt. Use the sentence box tiles/ green lists <em>I </em>booKs <em>I</em><em> </em>words wrrtten on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-08 07:33:57', NULL, '2018-08-08 07:33:58', NULL),
(441, 4, 30, 34, 'Month_34', 'Hindi Alphabet Box 2 - Matras', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/441/hindi.jpg', NULL, 'To learn the use of matras in Hindi', '<p>To learn the use of matras in Hindi</p>\n', NULL, 1, NULL, '2018-08-08 07:35:12', NULL, '2018-08-08 07:35:13', NULL),
(442, 4, 28, 35, 'Month_35', 'Words Connections 1 - Opp', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/442/new logo-1 (1)-1.png', NULL, 'Words Connections 1 - Opp', '<p>Words Connections 1 - Opp</p>\n', NULL, 1, NULL, '2018-08-08 07:51:29', NULL, '2018-08-08 07:51:29', NULL),
(443, 2, 12, 17, 'Month_17', 'Vowel cards 4 - Reading', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/443/vowel card.jpg', NULL, '1.Breaking a word phonetically 2. Reading 3.Word formation', '<p>Ask the child to take out all tne word cards and arrange in lines by colour Then show the child how to break the word into separate syllables stressing on the vowelsound. Eg. &quot;b&quot; &quot;a&#39;&quot;g&#39; Ask him to read tne word and find the corresponding picture. Place the&nbsp;picture above the card. Bag tap hat fan ant Hen bed leg net egg Nib pin wig zip ink Log boy top fox orb Pup bud sun mug urn</p>\n', NULL, 1, NULL, '2018-08-14 09:11:06', NULL, '2018-08-14 09:11:06', NULL),
(444, 2, 24, 17, 'Month_17', 'Rolling Ball Slope 3 - Change Slope', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/444/balancing beam.jpg', NULL, 'Foundation for inclined plane', '<p>Change the slope and see the ball speed</p>\n', NULL, 1, NULL, '2018-08-14 09:19:09', NULL, '2018-08-14 09:19:10', NULL),
(445, 2, 25, 17, 'Month_17', 'Activity : Theme 7 Plant Kingdom - 3 to 4', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/445/new logo-1 (1)-1.png', NULL, 'Theme based activity for General Knowledge on Plant Kingdom', '<p>Expsoure to Plant kingdom through theme based acitivty; art &amp; craft, colouring, rhymes, teacher directed agmes etc</p>\n', NULL, 1, NULL, '2018-08-14 09:22:27', NULL, '2018-08-14 09:22:27', NULL),
(446, 2, 12, 17, 'Month_17', 'Vowel Books - Reading', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/446/new logo-1 (1)-1.png', NULL, 'Language development-English', '<p>Use vowel book for reading.</p>\n', NULL, 1, NULL, '2018-08-14 09:26:29', NULL, '2018-08-14 09:26:30', NULL),
(447, 2, 13, 17, 'Month_17', 'Number Cards One to Thousand	1 - Arrangement', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/447/number reading big.jpg', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityVideo/447/number reading big.jpg', '1.To introduce the hierarchy of decimal system to the child 2.To introduce large number\ncounting to the child\n', '<p>Step 1: PicK the unit cards from the tray and place them in the bottom right corner of the mat.</p>\n\n<p>Step 2: Arrange the unit cards one below the other (Start with 1 unit and end with 9 units). Say each number aloud as you place them on the mat.</p>\n\n<p>Step 3:PicK the tens cards from the tray and place them in the bottom right corner of the mat.</p>\n\n<p>Step 4: Arrange the tens cards one below the other (Start with 1 ten and end with 9 tens). Say each number aloud as you place them on the mat.</p>\n\n<p>Step 5: PicK the hundreds cards from the tray and place them in the bottom right corner of the mat.</p>\n\n<p>Step 6:Arrange the hundreds cards one below the other (Start with 1 hundred and end with 9 hundreds). Say each number aloud as you place them on the mat.</p>\n\n<p>Step 7:PicK the thousand card. place it next to the 100 card and say &quot;One thousand.&quot;</p>\n\n<p>Step8: Place the materialtJacK in the tray one at a time.AsK the child to continue the activity</p>\n', NULL, 1, NULL, '2018-08-14 09:32:16', NULL, '2018-08-14 09:32:16', NULL),
(448, 2, 13, 17, 'Month_17', 'Place Value System 2 - Arrangement', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/448/place value.jpg', NULL, '1.Hierarchy of decimalsystem 2. This material is also an indirect representation of a cube\n= L x B x H 3. The visual translation of 10 units = 1 ten and so on\n', '<p>Ask the child to bring the decimalsystem to his mat. Then introduce him to the place value mat. Keep the mat at the top centre. Ensure you have 3 feet of space and a quiet place to work, because this arrangement takes time and space. Place one unit ,ten, hundred and the thousand on the place value mat on top as indicators. Then show the child how to arrange all the unrts one below the other in a line under units column. Count while&nbsp; arranging - 1 unrt, 2 unrts ... 9 units.After 9 units we move to 1 ten, 2 tens ... 9 tens, then 1 hundred, 2 hundreds... 9 hundreds.Then show the child how to put the pieces back in order starting from units. Thisis <em>very </em>important for reinforcement. When he puts back 10 units , he moves to 1 ten.</p>\n', NULL, 1, NULL, '2018-08-14 09:34:11', NULL, '2018-08-14 09:34:12', NULL),
(449, 2, 13, 17, 'Month_17', 'Height Variation Cylinders 6 - Memory', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/449/height variation cylinder.png', NULL, '1.To develop short term memory skills 2. To develop visual dimension skills', '<p>Now we introduce memory exercises.AsK the child to remove all the cylinders and place them randomly on a tray.We then show place the tray some distance away from the block. We point to a particular slot and asK the child to bring the cylinder corresponding to that slot from the tray.After the child has workedlong enough with this, we then Keep different cylinders in different places, so now the child has to remember the place as well as size. This enhances the complexity of the exercise</p>\n', NULL, 1, NULL, '2018-08-14 09:36:13', NULL, '2018-08-14 09:36:13', NULL),
(450, 2, 13, 17, 'Month_17', 'Diameter Variation Cylinders 6 - Memory', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/450/diameter variation cylinder.png', NULL, '1.To develop snort term memory skills 2. To develop visual dimension skills', '<p>Now we introduce memory exercises.AsK the child to remove all the cylinders and place them randomly on a tray.We then asK tne child to place tne tray some distance away from the block. We point to a particular slot and asK the child to bring the cylinder corresponding&nbsp; to that slot from the tray.Afier tne child nas worked long enougn with this, we then Keep different cylinders in different places,so now the chid has to remember the place as well as size. This ennances tne complexity of tne exercise</p>\n', NULL, 1, NULL, '2018-08-14 09:37:28', NULL, '2018-08-14 09:37:28', NULL),
(451, 2, 13, 17, 'Month_17', 'Place Value System -Number Cards Arrangement Correlation', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/451/place value.jpg', NULL, '1.	To introduce the hierarchy of decimal system to the child 2.To explain the correlation between the place value system and number cards to the child', '<p>Step 1: AsK the child to bring the number cards and the place value system to the place of presentation.</p>\n\n<p>Step 2: Keepthe place value mat above the worK mat.</p>\n\n<p>Step 3: Keep one&nbsp; unit, one ten, one hundred and the thousand as indicators for reference.</p>\n\n<p>Step 4: Arrange the units blocks from the place value system one below the other.(From 1 untt to 9 units). Say each number aloud as you place them on the mat.</p>\n\n<p>Step 5: After nine units arrange the tens blocks one below the other. (From 1ten to 9 tens). Say each number aloud as you place them on the mat.</p>\n\n<p>Step 6:After nine tens arrange the hundreds blocks one below the other. (From 1hundred to 9 hundreds). Say each number aloud as you place them on the mat.</p>\n\n<p>Step 7: After nine hundreds touch the one thousand bloc!&lt; and say the number.</p>\n\n<p>Step 8:Piel&lt; the unit cards from the number cards tray and place them in the bottom of the mat.</p>\n\n<p>Step 9: Arrange the unit cards one below the other (From 1unit to 9 units). Say each number aloud as you place them on the mat.</p>\n\n<p>Step 10: Pick the tens cards from the tray and place them in the bottom of the mat.</p>\n\n<p>Step 11:Arrange the tens cards one below the other (From 1ten to 9 tens). Say each number aloud as you place them on the mat.</p>\n\n<p>Step 12: Pick the hundreds cards from the tray and place them in the bottom of the mat.</p>\n\n<p>Step 13: Arrange the hundreds cards one below the other (From 1 hundred to 9 hundreds). Say each number aloud as you place them on the mat.</p>\n\n<p>Step 14: Pick the thousand card, place tt next to the 100 card and say &nbsp;one thousand.&quot;</p>\n\n<p>Step 15:Place the material bacl&lt;in their respective trays, one at a time. Place the indicators bacl&lt;in the tray at the end.AsK the child to continue the activity.</p>\n', NULL, 1, NULL, '2018-08-14 09:41:46', NULL, '2018-08-14 09:41:46', NULL),
(452, 2, 36, 14, 'Month_14', 'Write 1-10', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/452/cubs.png', NULL, 'Write Numbers 1-10', '<p>Write Numbers 1-10</p>\n', NULL, 1, NULL, '2018-08-17 06:57:11', NULL, '2018-08-17 06:57:12', NULL),
(453, 2, 36, 15, 'Month_15', 'Write 1-20', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/453/cubs.png', NULL, 'Write 1-20', '<p>Write 1-20</p>\n', NULL, 1, NULL, '2018-08-17 06:57:47', NULL, '2018-08-17 06:57:48', NULL),
(454, 2, 36, 16, 'Month_16', 'Write 1-30', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/454/cubs.png', NULL, 'Write 1-30', '<p>Write 1-30</p>\n', NULL, 1, NULL, '2018-08-17 06:58:08', NULL, '2018-08-17 06:58:08', NULL),
(455, 2, 36, 17, 'Month_17', 'Write 1-40', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/455/cubs.png', NULL, 'Write 1-40', '<p>Write 1-40</p>\n', NULL, 1, NULL, '2018-08-17 06:58:27', NULL, '2018-08-17 06:58:28', NULL),
(456, 2, 36, 18, 'Month_18', 'Write 1-50', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/456/cubs.png', NULL, 'Write 1-50', '<p>Write 1-50</p>\n', NULL, 1, NULL, '2018-08-17 06:58:54', NULL, '2018-08-17 06:58:54', NULL),
(457, 2, 37, 14, 'Month_14', 'Small Alphabet a-d', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/457/cubs.png', NULL, 'Small Alphabet a-d', '<p>Small Alphabet a-d</p>\n', NULL, 1, NULL, '2018-08-17 07:14:56', NULL, '2018-08-17 07:14:56', NULL),
(458, 2, 37, 15, 'Month_15', 'Small alphabet e-h', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/458/cubs.png', NULL, 'Small alphabet e-h', '<p>Small alphabet e-h</p>\n', NULL, 1, NULL, '2018-08-17 07:16:05', NULL, '2018-08-17 07:16:06', NULL),
(459, 2, 37, 16, 'Month_16', 'Small alphabet i-l', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/459/cubs.png', NULL, 'Small alphabet i-l', '<p>Small alphabet i-l</p>\n', NULL, 1, NULL, '2018-08-17 07:17:48', NULL, '2018-08-17 07:17:49', NULL),
(460, 2, 37, 17, 'Month_17', 'Small alphabet m-p', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/460/cubs.png', NULL, 'Small alphabet m-p', '<p>Small alphabet m-p</p>\n', NULL, 1, NULL, '2018-08-17 07:18:49', NULL, '2018-08-17 07:18:50', NULL),
(461, 2, 37, 18, 'Month_18', 'Small alphabet q-t', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/461/cubs.png', NULL, 'Small alphabet q-t', '<p>Small alphabet q-t</p>\n', NULL, 1, NULL, '2018-08-17 07:19:42', NULL, '2018-08-17 07:19:42', NULL),
(462, 2, 37, 19, 'Month_19', 'Small alphabet u-z', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/462/cubs.png', NULL, 'Small alphabet u-z', '<p>Small alphabet u-z</p>\n', NULL, 1, NULL, '2018-08-17 07:20:45', NULL, '2018-08-17 07:20:45', NULL),
(463, 3, 39, 21, 'Month_21', 'Number writing 1-50', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/463/cubs.png', NULL, 'Number writing 1-50', '<p>Number writing 1-50</p>\n', NULL, 1, NULL, '2018-08-17 07:34:42', NULL, '2018-08-17 07:34:43', NULL),
(464, 3, 39, 22, 'Month_22', 'Number writing 50-100', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/464/cubs.png', NULL, 'Number writing 50-100', '<p>Number writing 50-100</p>\n', NULL, 1, NULL, '2018-08-23 06:37:18', NULL, '2018-08-23 06:37:18', NULL),
(465, 3, 40, 22, 'Month_22', 'Small alphabet a -z', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/465/cubs.png', NULL, 'Small alphabet a -z', '<p>Small alphabet a -z</p>\n', NULL, 1, NULL, '2018-08-23 06:38:11', NULL, '2018-08-23 06:38:12', NULL),
(466, 3, 40, 23, 'Month_23', 'Big alphabets A-Z', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/466/cubs.png', NULL, 'Big alphabets A-Z', '<p>Big alphabets A-Z</p>\n', NULL, 1, NULL, '2018-08-23 06:38:01', NULL, '2018-08-23 06:38:02', NULL),
(467, 4, 43, 31, 'Month_31', 'Small letters a-z', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/467/cubs.png', NULL, 'Small letters a-z', '<p>Small letters a-z</p>\n', NULL, 1, NULL, '2018-08-17 07:40:36', NULL, '2018-08-17 07:40:36', NULL),
(468, 4, 43, 31, 'Month_31', 'Capital letters A-Z', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/468/cubs.png', NULL, 'Capital letters A-Z', '<p>Capital letters A-Z</p>\n', NULL, 1, NULL, '2018-08-17 07:44:05', NULL, '2018-08-17 07:44:06', NULL),
(469, 4, 44, 32, 'Month_32', 'Addition single digit', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/469/cubs.png', NULL, 'Addition single digit', '<p>Addition single digit</p>\n', NULL, 1, NULL, '2018-08-17 07:45:05', NULL, '2018-08-17 07:45:06', NULL),
(470, 4, 44, 33, 'Month_33', 'Two digit addition', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/470/cubs.png', NULL, 'Two digit addition', '<p>Two digit addition</p>\n', NULL, 1, NULL, '2018-08-17 07:52:55', NULL, '2018-08-17 07:52:56', NULL),
(471, 4, 44, 33, 'Month_33', 'Carry over -addition', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/471/cubs.png', NULL, 'Carry over -addition', '<p>Carry over -addition</p>\n', NULL, 1, NULL, '2018-08-20 09:15:34', NULL, '2018-08-20 09:15:34', NULL),
(472, 4, 45, 34, 'Month_34', 'single digit', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/472/cubs.png', NULL, 'single digit', '<p>single digit</p>\n', NULL, 1, NULL, '2018-08-17 07:54:23', NULL, '2018-08-17 07:54:23', NULL),
(473, 2, 13, 18, 'Month_18', 'Threading Quadrilaterals 3 - Name Lesson', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/473/qudrilaterals.jpg', NULL, '1.To understand quadrilaterals shapes 2. To name and identify types of quadrilaterals', '<p>When tne child has worked enough with the geometry boards, and Know tne basic shapes, we can give name lessons for tnese quadrilateral boards as follows:</p>\n\n<p>1. Square 2. Rectangle 3.Rhombus 4. Parallelogram 5.Chevron 6. Kite 7.Trapezium 8.Quadrilateral</p>\n\n<p>Also ask&nbsp;the child to count tne number of sides on each piece.</p>\n', NULL, 1, NULL, '2018-08-18 05:16:35', NULL, '2018-08-18 05:16:35', NULL),
(474, 2, 13, 18, 'Month_18', 'Place Value System and Number Cards - Number to Quantity Association', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/474/place value.jpg', NULL, '1.To introduce the number to quantity association to the child \n2. To explain the correlation between the place value system and number cards to the child', '<p>Step 1: Arrange the place value system in a separate area. The area should not be too far from the place of presentation.</p>\n\n<p>Step 2: AsK the child to arrange the number cards on the worK mat.</p>\n\n<p>Step 3: Choose a random number from the number cards and place them on the mat in front of the child. (Example: 6 units, 4 tens and 2 hundreds)</p>\n\n<p>Step 4:AsK the child to get the units matching to the number card from the place value system, in a cup.</p>\n\n<p>Step 5: Once the child gets the units, count them with the child.</p>\n\n<p>Step 6:AsK the child to get the&nbsp; tens matching to the number card from the place value system,in a tray.</p>\n\n<p>Step 7: Once the child gets the tens,count them with the child.</p>\n\n<p>Step 8:AsK the child to get the hundreds matching to the number card from the place value system, in a tray.</p>\n\n<p>Step 9: Once the child gets the hundreds. count them with the child.</p>\n\n<p>Step 10: Place the materials bacK in the tray one at a time. Provide another number and asK the child to continue the activity.</p>\n', NULL, 1, NULL, '2018-08-18 05:19:38', NULL, '2018-08-18 05:19:39', NULL),
(475, 2, 13, 18, 'Month_18', 'Noise Boxes 4 - Memory', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/475/noise box.jpg', NULL, 'To make the child aware of sounds 2. Prepare him for music where acoustic\nimpression is used. 3. Help him retain sound information in memory\n', '<p>Ask&nbsp;the child to carry the sound boxes to his place of work softly without making a noise. Take out all cylinders of one colour and place them in a line. Take all the cylinders of the other colour and place them on a tray. Place the tray a distance away from the mat. Now ask&nbsp;the child to take any one cylinder and listen to the sound carefully 2 - 3 times.Ask&nbsp;him to go to the tray and bring the corresponding pair. After the child is confident wtth this</p>\n', NULL, 1, NULL, '2018-08-18 05:24:19', NULL, '2018-08-18 05:24:20', NULL),
(476, 2, 13, 18, 'Month_18', 'WW Num Sequencing 3 - Descending', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/476/new logo-1 (1)-1.png', NULL, 'Help the teacher assess the child\'s understanding of •Number Sequencing (After and before numbers) • Greater and Lesser •Number Patterns', '<p>Arrange the pieces on the worKsheet in a descending order Eg. 7, 6,5, Leave any one blanK at random (first, middle, last).Keep allthe remaining coins on the side of the board randomly and asK the child to choose from the mixed pieces.Ask&nbsp;the child to fill &quot;what comes &nbsp;before</p>\n', NULL, 1, NULL, '2018-08-18 05:26:32', NULL, '2018-08-18 05:26:32', NULL),
(477, 2, 22, 18, 'Month_18', 'Magnetic Calendar 2 - Weather', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/477/magnectic calender.jpg', NULL, 'Understanding weather', '<p>Group discussion on weather</p>\n', NULL, 1, NULL, '2018-08-18 05:33:54', NULL, '2018-08-18 05:33:54', NULL),
(478, 2, 25, 18, 'Month_18', 'Theme 8 Transport and Communication - 3 to 4', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/478/new logo-1 (1)-1.png', NULL, 'Transport & Communication Theme to introduce transport & communication systems.', '<p>theme based activity to expose students to transport and communication systemes through activities, teacher directed games, art &amp; craft, creative work etc.</p>\n', NULL, 1, NULL, '2018-08-18 05:36:06', NULL, '2018-08-18 05:36:06', NULL),
(479, 2, 13, 18, 'Month_18', 'Place Value System and Number Cards - Quantity to Number Association', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/479/number reading big.jpg', NULL, '1.To introduce the quantity to number association to the child 2. To explain the correlation\nbetween the place value system and number cards to the child\n', '<p>Step 1: Arrange the number cards in a mat in a separate area. The area should not be too far from the place of presentation.</p>\n\n<p>Step 2:Choose a random quantity from the place value system, place it in a tray and give it to the child. (Example: 4 units, 3 tens and 2 hundreds)</p>\n\n<p>Step 3: AsK the child to place the blocks on the mat. He/she should start with units.</p>\n\n<p>Step 4:&nbsp;Count the units with the child.</p>\n\n<p>Step 5:Ask&nbsp;the child to get the number cards matching to&nbsp;the units.</p>\n\n<p>Step 6: Count the tens wrth the child.</p>\n\n<p>Step 7:Ask&nbsp;the child to get the number cards matching to the tens.</p>\n\n<p>Step8: Count the hundreds with the child.</p>\n\n<p>Step 9:Ask&nbsp;the&nbsp; child to get the number cards matching to the hundreds.</p>\n\n<p>Step 10: Place the material back&nbsp;in the trays one at a time. Choose another random quantrty from the place value system, give it to the child and asl&lt; him/her to continue the activity.</p>\n', NULL, 1, NULL, '2018-08-18 05:41:18', NULL, '2018-08-18 05:41:18', NULL),
(480, 2, 13, 18, 'Month_18', 'Number Cards - Tens: Name Lesson', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/480/number reading big.jpg', NULL, '1.To show the child that one ten is ten. two tens is twenty and so on up-to nine tens is ninety. 2.To help the child identify the other names of tens (Ten, twenty, thirty, forty, fifty, sixty, seventy, eighty and ninety)', '<p>Ask the child to bring the number cards to the place of presentation. Arrange the tens cards in a row on the mat. First Period:Address the child and say, Today, we will learn some more names for these cards.&quot;Isolate three number cards. (Here we isolate 10, 20 and 30) Point to the one ten card and say, This is one ten. It is also called ten.&quot; Point to the two tens card and say, &quot;This is two tens. It is also called twenty.&quot; Point to the three tens card and say, &quot;This is three tens. rt is also called thirty.&quot; Second Period: Point to a place on the mat and say to the child, &quot;Can you Keep ten here?&quot; Point another place on the mat and say to the child, &quot;Can you Keep twenty here?&quot; Point to another place on the mat and say to the child, &quot;Can you Keep thirty here? Wait for the child to follow your instruction. Move to the next card if the child doesn&#39;t follow the instructions. Third Period: Point to the one ten card and ask.&quot;Whatis this?&#39;Point to the three tens card and ask, &quot;What is this?&#39;Finally, point to the two tens card and ask, &quot;What is this?&#39; Watt for the child to answer. Move to the next card if the child fails to answer. Place the number cards back in the tray. Continue the same namelesson procedure With three other number cards on another day.</p>\n\n<p>Ensure to present all the number cards to the children using name lessons.Levels: Beginner: unable&nbsp; to identify the other names of the tens Leamer: Identifies a few of the names of the tens and commits errors while placing the number cards Practitioner: Identifies the names of the tens and places the number cards correctly Scholar: Identifies, places and names all the names of the tens</p>\n', NULL, 1, NULL, '2018-08-18 05:45:37', NULL, '2018-08-18 05:45:38', NULL),
(481, 4, 45, 36, 'Month_36', 'Two digit -subtraction', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/481/cubs.png', NULL, 'Two digit -subtraction', '<p>Two digit -subtraction</p>\n', NULL, 1, NULL, '2018-08-18 05:47:58', NULL, '2018-08-18 05:47:58', NULL),
(482, 2, 12, 19, 'Month_19', 'WW Geometry Complex', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/482/wwwwwseq.jpg', NULL, 'Help the teacher make an assessment on the child\'s understanding of complex geometry wrt number of sides in a shape\n', '<p>Wooden work sheets are always pre-arranged on the mat in a specialplace in the room assigned solely for assessment. These worksheets are designed to assess if the child has interacted sufficiently with specific materialand has subsequently acquired the associated skill.Arrange all the pieces on the board. Ask the child to count the number of sides in each of the shapes and find which is different&quot; in the images.Do the first row as an example for the child. Once you haveidentified the odd one out. tum the card that is the odd one out and place it back&nbsp;&nbsp;into the slot. face down. Ask&nbsp;the child to complete the following rows.</p>\n', NULL, 1, NULL, '2018-08-18 06:02:07', NULL, '2018-08-18 06:02:08', NULL),
(483, 2, 13, 19, 'Month_19', 'Counting Jigsaw 5 - Odd and Even', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/483/jigsaw.png', NULL, '1. Odd and Even Numbers 2. Indirect Introduction to Patterns 3. Indirect introduction to skip counting', '<p>Ask the child to arrange all the number puzzles in sequence and place any counters on the dots. Now move your finger between the two columns. In the odd numbers, show the child how the finger is hitting the counter and displacing it, but in the even numbers, the finger can move through wtthout any hindrance. So when your finger hits a counter, you say odd. When your finger touches the number you say <em>even. </em>Itisimportant for the numbers to be in sequence from 1to 10, so that the child sees the pattern of odd, even, odd, even.</p>\n\n<p>&nbsp;</p>\n', NULL, 1, NULL, '2018-08-18 05:56:47', NULL, '2018-08-18 05:56:47', NULL),
(484, 4, 28, 35, 'Month_35', '3 PC National Leaders 2 - Words', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/484/cubs.png', NULL, '1.To enhance the child\'s reading sl<ill and give meaning to the \"read word\'2. To famiiarize the child with several national leader 3. To enhance the child\'s pairing ability (like match the following)\n', '<p>This activity cannot be started until the child has worked with the controlcard long enough to recognize allthe pictures Itis good to start this activity with only 3 to 4 sets of cards for children who may not be ready for a lot of reading. Tal&lt;e about 3 -4 picture cards, and place them on top /left side in a line. Then we look at the name cards. Read it and find the corresponding picture Place it beside the picture card. The children may choose to do the same with the control card also, with sight reading. They would see the first letter or the length of the word,and pair the word with the controlcard. It is absolutely fine as this will set the pattern for reading</p>\n', NULL, 1, NULL, '2018-08-18 06:03:14', NULL, '2018-08-18 06:03:15', NULL),
(485, 2, 13, 19, 'Month_19', 'Counting Rings 4 - Addition', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/485/countinf rings.jpg', NULL, '1.Reinforcement of quantity 2. introduction to Addition', '<p>Now we see the presentation of addition wrth coloured rings. For this we use the Coloured rings, Addrt on base and a prepared problem sheet Tal&lt;e the first problem Eg 2+ 1 Place the rings from rod no 2 and rod no 1 on the base Count starting from the beginning. The total is 3 Write tne answer in the problem sheet, and then put the rings back&nbsp;on the base Asl&lt; the child to repeat with the remaining problems</p>\n', NULL, 1, NULL, '2018-08-18 06:04:09', NULL, '2018-08-18 06:04:09', NULL),
(486, 2, 24, 19, 'Month_19', 'Tic Tac Toe', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/486/tictac.jpg', NULL, 'Develop logical reasoning, encourages social behavior', '<p>Play the game with the child</p>\n', NULL, 1, NULL, '2018-08-18 06:07:28', NULL, '2018-08-18 06:07:29', NULL),
(487, 4, 31, 35, 'Month_35', 'Clock 2 - Complex', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/487/clock.png', NULL, '1.To introduce time 2.Introduction to clock reading with both needles', '<p>Asl&lt; the child to carry the clocl&lt; to her/his mat Tal&lt;e the red numbers and place 1 and 2, on the clocl&lt; and asl&lt; the child to place themin sequence till 12 Introduce the name &bull;tonger handis called the minute needle&#39;Place the minute hand at 12,and tell the child we are now going to move the hour needle Move it to a number, say 3,and show the child where the arrow is pointing. Tell the child &quot;When the longer minute needleis on 12, and the hour needle is on 3, the time is 3 o&#39;clock&quot; Now <em>m</em><em>o</em><em>ve </em>the minute needle to &quot;30&quot; and show the child,show the child that the arrow is pointing to 30,and say the timeis now 3:30, similay show the child 3:40,3:10 At this point do not simultaneously move the hour needle, it Will&nbsp; be confusing DO another complete set,at say 7:20, 7:30 Then asl&lt; the child to read the time with a couple of samples At this stage children may also lil&lt;e to share information lil&lt;e &quot;Iget up at 7:30&quot;,encourage time based conversation, and linl&lt; it to their day Asl&lt; leading questions lil&lt;e what time do <em>you </em>sleep,how long do you tal&lt;e to eat your food</p>\n', NULL, 1, NULL, '2018-08-18 06:08:48', NULL, '2018-08-18 06:08:48', NULL),
(488, 4, 28, 35, 'Month_35', '3 PC Dances 2 - Words', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/488/dance.jpg', NULL, '1.To enhance the child\'s reading sl<ill and give meaning to the \"read word\'2. To famiiarize the child with each dance form 3.To enhance the child\'s pairing ability (lil<e match the following)\n', '<p>This activity cannot be started until the child has worl&lt;ed with the controlcard long enough to recognize an the pictures Itis good to start this activity with only 3 to 4 sets of cards for children who may not be ready for a lot of reading. Tal&lt;e about 3 -4 picture cards,and place them on top /left side in a line. Then we 1001&lt; at the name cards. Read it and find the corresponding picture Place it beside the picture card.) The children may choose to do the same with the control card also, with sight reading. They would see the first letter or the length of the word,and pair the word with the control card. It is absolutely fine as this will set the pattern for reading</p>\n', NULL, 1, NULL, '2018-08-18 06:10:24', NULL, '2018-08-18 06:10:25', NULL),
(489, 4, 31, 35, 'Month_35', 'Equations Box 3 - Subtract', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/489/cubs.png', NULL, 'Equations Box 3 - Subtract', '<p>Equations Box 3 - Subtract</p>\n', NULL, 1, NULL, '2018-08-18 06:11:31', NULL, '2018-08-18 06:11:31', NULL),
(490, 2, 13, 19, 'Month_19', 'Number Cards One to Thousand 4 - Read numbers', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/490/number reading big.jpg', NULL, '1.To help the child identify and read large numbers containing multiple hierarchies (unit, ten, hundred and thousand) using number cards 2. To help the child construct large numbers using number cards', '<p>Step 1: Ask the child to bring the number cards to the place of presentation and arrange themin rows on the mat. The chid should start with units and end with the thousand.</p>\n\n<p>Step 2:Pick&nbsp;random number cards from the rows and place them one below the other on the mat, close to the child. Ensure to place the unit card at the bottom of this row,the tens card above it and so on.</p>\n\n<p>Step 3: Address the child and say,&quot;Shall we cover the zeros on each of the cards?</p>\n\n<p>Step 4: Take the unit card and place it on the zero of the tens card.</p>\n\n<p>Step 5: Place the unit and tens cards on the zeros of the hundreds card.</p>\n\n<p>Step 6: Place the stack of three number cards (unit, ten and hundred) on the zeros of the thousand card.</p>\n\n<p>Step 7: Place the number card stack close to the child and ask, &quot;Shall we read the number?&quot;</p>\n\n<p>Step 8:Read the numbers separately, twice.</p>\n\n<p>Step 9: Keep the number cards back in the tray. Pick another set of random number cards and repeat the procedure.Continue till the child isinterested. Levers:Beginner: Unable toidentify or read the numbers together Learner: Identifies the hierarchies but commits error while reading them together</p>\n\n<p>Level of ratings : Practitioner: Identifies the hierarchies and reads them together correctly Scholar: Identifies the hierarchies and reads them together correctly. The child can also place the number cards together into a single number. Also, the child can identify and read any random number presented</p>\n', NULL, 1, NULL, '2018-08-18 06:13:59', NULL, '2018-08-18 06:14:00', NULL),
(491, 4, 28, 35, 'Month_35', 'Grammar Cards 3 - Adjectives', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/491/grammer card.jpg', NULL, 'Grammar Cards 3 - Adjectives', '<p>TEACHERS REFERENCE : TEACHER&#39;S REFERENCEAdjectives are a class of words</p>\n\n<p>that describe a noun.It helps us to understand and visualize an object or feeling in greater depth. Tney could be qualitative or quantrtative. Adjectives are commonly called describing words. Eg Tall, red, five,many, better This presentation is to be made individually to a child Today we are going to look at adjectives. The adjectives are the cards in purple Adjectives are words that describe a noun. snail we form a sentence and see.Eg.The cake is on tne table The red cake is on tne tall table Do tnis with severalexamples Preeti wore a dress Preeti wore a pretty dress Ibought mangoes Ibought many mangoes Also give tne children sentences and ask them toidentify the adjectives in it</p>\n', NULL, 1, NULL, '2018-08-18 06:16:36', NULL, '2018-08-18 06:16:37', NULL),
(492, 2, 12, 19, 'Month_19', 'WW Quantity Seq 3 - Descending', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/492/new logo-1 (1)-1.png', NULL, 'Help the teacher make an assessment on the child\'s understanding of various parameters\nof quantity 1. Descending order sequencing 2.Greater and Lesser 3.Quantity Patterns\n', '<p>Arrange the pieces on the worKsheet in a descending order Eg. 7, 6,5, Leave any one blank&nbsp;at random (first, middle, last).Keep all the remaining coins on the side of the board randomly and asK tne child to choose from the mixed pieces.Asl&lt; the child to fill &quot;what comes before&middot;</p>\n', NULL, 1, NULL, '2018-08-18 06:17:29', NULL, '2018-08-18 06:17:29', NULL),
(493, 4, 31, 35, 'Month_35', 'Number Line 3 - Subtraction', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/493/cubs.png', NULL, '1.Subtraction of numbers on a number line 2. Indirectly introducing going back and front. which is a foundation for negative numbers in the future', '<p>Asl&lt; the child to tal&lt;e the tray and the number line to his <em>I </em>her mat Give the child a prepared problem sheet of subtraction Eg 9-4 = Keep the set of red arrows oneinside the other on&nbsp;&nbsp;&nbsp; the left side on top of the number line, and the other set of blacl&lt; arrows on the right side. Looi&lt; for the arrow no 9 from the red set and place it on the number line, and tell the child we are now at number 9, we have moved 9 steps <em>I </em>places forward.Then select the arrow no 4 from the blacl&lt; set, l&lt;eepat O and verify that it is the 4th arrow. This is very important. Now tum the arrow bacl&lt;Ward and tell the child &quot;Since <em>we </em>are subtracting,we will move bacl&lt;wards&quot; Then move arrow no 4, to start at 9 {where the red arrow ends), pointing bacl&lt;wards Tell the child, we have now moved 4 steps bacl&lt;&#39;&#39;, and we are now at 5 Record the answer on paper Once the child has worl&lt;ed sufficiently with single digit subtraction,&nbsp; you can try giving sums lil&lt;e 13-5,where the child will have to put two red arrows to get to13. This can only be done With some children.where they have thoroughly absorbed the concept of number line.</p>\n', NULL, 1, NULL, '2018-08-18 06:18:56', NULL, '2018-08-18 06:18:56', NULL),
(494, 2, 12, 19, 'Month_19', 'WW Seq Color-shape 2 - Advanced', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/494/new logo-1 (1)-1.png', NULL, '\nHelp the teacher make an assessment on the child\'s understanding of colours and shapes, and his logical reasoning ability.\n', '<p>Arrange the pieces in 4 rows of the worKsheet in patterns of colours and shapes. Leave the last one blanK.Arrange 2 pieces next to each empty slot to offer a choice to the child between both the objects of the same sequence Eg. The sequence in first row is Red. Yellow. Red, Yellow Choice to child: Red, Yellow Keep all these arranged on the mat before you invite the child on the work. Tell the child to look for &quot;what come next&quot;</p>\n', NULL, 1, NULL, '2018-08-18 06:24:48', NULL, '2018-08-18 06:24:49', NULL),
(495, 4, 33, 35, 'Month_35', 'Material types', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/495/cubs.png', NULL, 'Material types', '<p>LESSON - identify what things are made of</p>\n', NULL, 1, NULL, '2018-08-18 06:26:24', NULL, '2018-08-18 06:26:25', NULL),
(496, 2, 13, 19, 'Month_19', 'Grow a Plant Puzzle 2 - Discussion', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/496/grow the tree.jpg', NULL, 'Understand how a plant grows', '<p>Essentials of a plant EVS</p>\n', NULL, 1, NULL, '2018-08-18 06:27:48', NULL, '2018-08-18 06:27:48', NULL);
INSERT INTO `t_activities` (`activity_id`, `standard_id`, `subject_id`, `display_order`, `month`, `name`, `image`, `video`, `objective`, `Description`, `tags`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`, `Branch_id`) VALUES
(497, 2, 24, 19, 'Month_19', 'Water World 3 - Game', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/497/water world.png', NULL, '1.To encourage socialplay 2. To build skills liKe picture matching,visual discrimination\nand sequencing 3. To understand that a game has an end objective\n', '<p>This game can be played by 2 to 4 children.We put all the tiles face down. We ask&nbsp;each child to pick up 5 tiles.Any child who has a double tile (2 frogs, 2 sharl&lt;s etc) can start the game. The next child has to match the image and place his tile (Eg Frog,tortoise is placed against any one of the frogs) The sequence must continue by matching pictures. Frog - Frog,Shark- Shark&nbsp;etc After placing one tile, the child has to pick&nbsp;upa tile from the pileleft over tiles.If he doesn&#39;t have a tile to place,he passes and picks up another tile from the pile.We can end the game when <em>any </em>one of the children has exhausted all his tiles. OR&nbsp; This would lead to a sort of Winning and losing situation. Alternately we can have the game end when all the tiles are exhausted, and say &quot;Game Over&quot;, i.e. when all the tiles have been picKed up.</p>\n', NULL, 1, NULL, '2018-08-18 06:30:03', NULL, '2018-08-18 06:30:03', NULL),
(498, 4, 31, 35, 'Month_35', 'Subtraction cards', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/498/sub card.png', NULL, 'Subtraction cards', '<p>Subtraction cards</p>\n', NULL, 1, NULL, '2018-08-18 06:30:56', NULL, '2018-08-18 06:30:57', NULL),
(499, 4, 34, 35, 'Month_35', 'Culture', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/499/cubs.png', NULL, 'Culture', '<p>Culture</p>\n', NULL, 1, NULL, '2018-08-18 06:31:48', NULL, '2018-08-18 06:31:48', NULL),
(500, 2, 25, 19, 'Month_19', 'Theme 9 Community Helpers 3 to 4', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/500/new logo-1 (1)-1.png', NULL, 'Theme based activity on Community Helpers', '<p>theme based activity on community helpers for GK and expsoure. activities done through art and craft, colouring, teacher dorected games, group work etc.</p>\n', NULL, 1, NULL, '2018-08-18 06:36:16', NULL, '2018-08-18 06:36:17', NULL),
(501, 4, 28, 35, 'Month_35', 'Phonogram tch', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/501/phono tch.png', NULL, '1.To learn the sound of phonogram tch 2. To spell accurately 3.To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - match, fetch, latch Introduce the phonogram to the child. Sound out words and help them recognize it. Introduce the phonogram word box to the child and helpthem form words. Use the sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-18 06:38:00', NULL, '2018-08-18 06:38:01', NULL),
(502, 4, 28, 35, 'Month_35', 'Phonogram Terminal le', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/502/phono le.png', NULL, '1.To learn the sounds of words ending with le 2.To spell accurately 3. To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - candle, tumble Introduce the phonogram</p>\n\n<p>to the child.Sound out words and help them recognize it. Introduce the phonogram word box to the child and helpthem form words. Use the sentence box tiles/ green lists <em>I </em>booKs <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-18 06:40:33', NULL, '2018-08-18 06:40:34', NULL),
(503, 4, 28, 35, 'Month_35', 'Phonogram ear', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/503/cubs.png', NULL, '1.To learn the sound of phonogram ear 2.To spell accurately 3. To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - Beard, Fear Introduce the phonogram to</p>\n\n<p>the child. Sound out words and help them recognizeit. Introduce the phonogram word box to the child and help them form words.&nbsp; Use the sentence box tiles/ green lists <em>I </em>bool&lt;s <em>I </em>words written on papers to introduce word lists sequentially</p>\n', NULL, 1, NULL, '2018-08-18 06:41:51', NULL, '2018-08-18 06:41:52', NULL),
(504, 2, 13, 20, 'Month_20', 'Knobless Cylinders 4 - memory', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/504/cylinders.jpg', NULL, '1.To help the child become conscious of dimension.2. To improve short term memory for\ndimension\n', '<p>Ask the child to bring the material to his mat. Take out any one set of cylinders and arrange in order on the mat. Take the other set of cylinders and place on a tray.Ask the child to place the tray away from the place of work. Now point to one of the cylinders on the mat and ask the child to bring the corresponding pair of the same diameter or height.</p>\n', NULL, 1, NULL, '2018-08-18 06:45:01', NULL, '2018-08-18 06:45:01', NULL),
(505, 4, 28, 35, 'Month_35', 'Grammar Cards 2 - Pronouns', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/505/grammer card.jpg', NULL, '1.To introduce children to the class of words that are pronouns 2. To lay the foundation for grammar and sentence formation\n', '<p>TEACHER&#39;S REFERENCE A pronoun is defined as a word or phrase that may be substituted for a noun or noun phrase Eg He, she,they, it,we, us.who, nobody, neither. both, herself This presentation is to be made individually to a child Today we are going to look at pronouns. The pronouns are the cards in light blue Pronouns are words that we can use instead of a noun.Shall <em>we </em>form a sentence and see. Eg. Mohan run - Mohan runs <em>very </em>fast Instead of Mohan we can use &quot;he&quot; , take out the he word from the box Tal&lt;e Mohan out and replace with he Do this with several examples Lakshmi pushed the chair She pushed the chair Lakshmi pushed it Show the child that the nouns are replaceable. Also give the children sentences and ask them toidentify the pronounsin</p>\n', NULL, 1, NULL, '2018-08-18 06:47:05', NULL, '2018-08-18 06:47:06', NULL),
(506, 2, 12, 20, 'Month_20', 'Alphabet Box 4 - 3+ letter words', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/506/alphabets.jpg', NULL, '1.Building words of pictures he sees 2.Foundation for reading and writing', '<p>After the child has worked with 3 letter words,he can progress to bigger simple words (without complications). Tell the child, &quot;Today <em>we </em>are going to build words that are larger&quot; snow him now to build words of pictures like frog,stamp, and leave him to rt.</p>\n', NULL, 1, NULL, '2018-08-18 06:47:21', NULL, '2018-08-18 06:47:21', NULL),
(507, 2, 13, 20, 'Month_20', 'Ship Shape 4 - 20-30', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/507/ship shape.png', NULL, 'To help the child connect the 30 solid with the 20 base.', '<p>Print the attached PDF on paper. Preferably laminate the cards.You could also use paper print outs, and replace them periodically when they get damaged.These are called base cards. You could also trace out the base shape and colour it inside and laminate the cards. Take out one each of all the 6 pairs and place the piece on the base card so that the base is not seen.Name the shape on the base cards. Eg Trapezoid - Trapezium After giving all the names, ask&nbsp;the child if he would liKe to continue worK with the material.</p>\n', NULL, 1, NULL, '2018-08-18 06:50:17', NULL, '2018-08-18 06:50:18', NULL),
(508, 2, 22, 20, 'Month_20', 'Straining 3 - Strainer and Forceps', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/508/strainer.png', NULL, '1.Excellent for improving fine motor skills 2. This daily life activity teaches the child to strain and use the forceps ', '<p>The more complex activity is it to use tne strainer and forceps in conjunction.Ask tne child to keep the straining set ready and call you. Then we show tne child now to fisn the ball out of the water with tne strainer using tne left nand, and use the forceps with the right nand. This is a multi-step process, and very complex.Also wnen you are making the presentation for tnis, the child would see the point of interest moving away from tne bowl. So preferably nave tne child on your right in this case.After straining tne water hold tne forceps with theleft hand and show tne child now to pick up the balls and transfer to the other container.</p>\n', NULL, 1, NULL, '2018-08-18 06:52:25', NULL, '2018-08-18 06:52:26', NULL),
(509, 2, 22, 20, 'Month_20', 'Magnetic Calendar 3 - Date', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/509/magnectic calender.jpg', NULL, 'Understanding and identifying month.week', '<p>Talk about the date, days, months Oral Large group activity - Jan,Feb ... and Sunday, Monday....</p>\n', NULL, 1, NULL, '2018-08-18 06:53:41', NULL, '2018-08-18 06:53:42', NULL),
(510, 2, 25, 20, 'Month_20', 'Theme	10 Earth and Nature - 3 to 4', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/510/new logo-1 (1)-1.png', NULL, 'Earth & Nature Theme Activity for GK', '<p>Theme based activity to enhance GK of children on earth and nature. Activities through teacher directed games, art &amp; craft, colouring, group work etc.</p>\n', NULL, 1, NULL, '2018-08-18 06:55:53', NULL, '2018-08-18 06:55:53', NULL),
(511, 2, 13, 20, 'Month_20', 'Colour Wheel 3 - Name Lesson', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/511/colour gradation.jpg', NULL, 'To introduce names of shades of colours - dark red, darkest blue etc', '<p>Take the child to the colour wheel. Tal&lt;e out any one set of colours and arrange from dark to light. Number of namelessons to be given on different days: 1.Dark&nbsp;------ (eg Red), light Red with the extremes of same colour 2.Darker than with 2 shades of same colour 3. lighter than wrth 2 shades of same colour 4.Darkest of these with 3 shades of same colour 5.lightest of these With 3 shades of same colour Give frequent name lessons with all the colours</p>\n', NULL, 1, NULL, '2018-08-18 06:57:54', NULL, '2018-08-18 06:57:55', NULL),
(512, 2, 12, 20, 'Month_20', 'WW Sequencing 2', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/512/ww seq.jpg', NULL, 'Sequencing', '<p>Wooden worksheets are a great way to know if the chid has understood the concept. If the child is unable to sequence well,give more activities <em>I </em>games Whichinvolve sequencing</p>\n', NULL, 1, NULL, '2018-08-18 06:59:55', NULL, '2018-08-18 06:59:55', NULL),
(513, 4, 28, 36, 'Month_36', 'Words Connections 2 - Synonyms', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/513/cubs.png', NULL, 'Words Connections 2 - Synonyms', '<p>Words Connections 2 - Synonyms</p>\n', NULL, 1, NULL, '2018-08-20 06:10:41', NULL, '2018-08-20 06:10:41', NULL),
(514, 4, 31, 36, 'Month_36', 'Fractions 1/2 to 1/10', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/514/fraction.png', NULL, '1.Introduce fractions as a concept of whole and parts 2.Apply partial pairing concepts', '<p>1.1ntroduce the materials fractions on tne shelf 2.AsK the child to bring a tray, and taKe 2 frames out of the stand. 3.Initially taKe the first 2 - One wnole, and 2 naives 4. TaKe the pieces out of tne frame, and give the names to the child - whole and nalf 5. We show tne child by pushing towards each otner tne 2 naives,and saying tnat it maKes a wno1e 6. Then on 2 - 3 days after that we introduce other fractions also 1or 2 at a time.Tne whole is always taken as a reference point and we show tne child in each case how tne parts maKe a whole and <em>we </em>give names to tne parts liKe one fifth, one sixth and so on</p>\n', NULL, 1, NULL, '2018-08-20 06:14:58', NULL, '2018-08-20 06:14:59', NULL),
(515, 4, 33, 36, 'Month_36', '3 PC Solar System 2 - No control Card', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/515/solar system.jpg', NULL, '3 PC Solar System 2 - No control Card', '<p>3 PC Solar System 2 - No control Card</p>\n', NULL, 1, NULL, '2018-08-20 06:16:01', NULL, '2018-08-20 06:16:02', NULL),
(516, 4, 34, 36, 'Month_36', 'Animal Kingdom', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/516/cubs.png', NULL, 'Animal Kingdom', '<p>Animal Kingdom</p>\n', NULL, 1, NULL, '2018-08-20 06:17:04', NULL, '2018-08-20 06:17:04', NULL),
(517, 4, 28, 36, 'Month_36', 'Community Helpers, Prof', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/517/cubs.png', NULL, 'Community Helpers, Prof', '<h2>Community Helpers, Prof</h2>\n', NULL, 1, NULL, '2018-08-20 06:36:08', NULL, '2018-08-20 06:36:08', NULL),
(518, 4, 31, 36, 'Month_36', 'Division Game 1 - Simple', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/518/division.png', NULL, '\n1.Introduce division as dividing into equal groups 2. Introduce the terms dividend, divisor and quotient\n', '<p>Introduce the materialas division game. Ask the child to take the working board,control board with tiles and the box of numbers to his/her chowki Tell the child &#39; his is the division board&#39;and the other is the controlboard Now select a dividend number too place on top. Say, 21. Tell the child this is called Dividend Now tell the child we are going to select a divisor say 7 Now tell the child we are going to divide 21into groups of 7 Show the child&nbsp;how to transfer blank tiles from control board to division board till you reach 21. You Will be&nbsp;placing them in verticalcolumns of 7, after 7, next blank tile will be placed in the first slot of second column We now have 3 complete columns.. So the &quot;&quot;quotient&quot;&quot; is 3 Itis good to end With saying, so we have divided 21into groups of 7, and we have formed 3 groups of 7 each.</p>\n', NULL, 1, NULL, '2018-08-20 06:39:50', NULL, '2018-08-20 06:39:50', NULL),
(519, 4, 33, 36, 'Month_36', 'Simple Elect Motor', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/519/cubs.png', NULL, 'Simple Elect Motor', '<h2>Simple Elect Motor</h2>\n', NULL, 1, NULL, '2018-08-20 06:40:50', NULL, '2018-08-20 06:40:50', NULL),
(520, 4, 33, 36, 'Month_36', 'States of Matter', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/520/cubs.png', NULL, 'States of Matter', '<p>States of Matter</p>\n', NULL, 1, NULL, '2018-08-20 06:41:43', NULL, '2018-08-20 06:41:43', NULL),
(521, 4, 32, 36, 'Month_36', 'Timeline of Eras 2 - Eras', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/521/era.png', NULL, '1.To enhance the child\'s pairing ability (lil<e match the following) 2.To mal<e the child aware of evolution I timelines of eras 3.To introduce the names of the eras', '<p>Tal&lt;e the control cards and arrange in a line sequentially as per the eras. Name the eras to the child. saying <em>over </em>many millions of years earth l&lt;eeps changing, and this is how the continents used to 1001&lt; at that time. The eras are called: Precambrian Paleozoic Mesozoic Cenozoic Then tal&lt;e the wooden eras and compare the shape of earth with the control cards, and show the child that based on the earth shape you are arranging in the same order.After arranging, point and repeat the names as a 3 period name lesson once again. Identify the eras - Point and name <em>I </em>Piel&lt; up the piece and name Asl&lt; the child to Recognize - Which is mesozoic <em>I </em>point to cenozoic etc Then asl&lt; the child to confirm - Which is this one<br />\n?</p>\n', NULL, 1, NULL, '2018-08-20 06:43:55', NULL, '2018-08-20 06:43:55', NULL),
(522, 4, 33, 36, 'Month_36', '3 PC Food Chain 2 - No control Card', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/522/cubs.png', NULL, '3 PC Food Chain 2 - No control Card', '<p>3 PC Food Chain 2 - No control Card</p>\n', NULL, 1, NULL, '2018-08-20 06:45:08', NULL, '2018-08-20 06:45:09', NULL),
(523, 4, 28, 36, 'Month_36', 'Phonogram gh', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/523/gh.png', NULL, '1.To learn the sound of phonogram gh 2. To spell accurately 3. To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - weight,bright, high,daughter Introduce the phonogram to the child.Sound out words and help them recogniZe it. Introduce the phonogram word box to the child and helpthem form words. Use the sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-20 06:48:31', NULL, '2018-08-20 06:48:32', NULL),
(524, 4, 28, 36, 'Month_36', 'Phonogram wor', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/524/cubs.png', NULL, '1.To learn the sound of phonogram wor 2. To spell accurately 3.To read fluently', '<p>SAMPLE WORDS (for teacher&#39;s understanding) - world, worst,sword,worm, worried Introduce tne pnonogram to the child. Sound out words and help them recognize it. Introduce tne pnonogram word box to the child and help tnem form words.use the sentence box tiles/ green lists <em>I </em>booKs <em>I </em>words written on papers to introduce word lists sequentially</p>\n', NULL, 1, NULL, '2018-08-20 06:50:32', NULL, '2018-08-20 06:50:32', NULL),
(525, 4, 31, 37, 'Month_37', 'Venn Diagram', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/525/cubs.png', NULL, 'Venn Diagram', '<p>Venn Diagram</p>\n', NULL, 1, NULL, '2018-08-20 06:53:58', NULL, '2018-08-20 06:53:59', NULL),
(526, 4, 28, 37, 'Month_37', '3 PC Monuments 2 - No control Card', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/526/cubs.png', NULL, '3 PC Monuments 2 - No control Card', '<h1>3 PC Monuments 2 - No control Card</h1>\n', NULL, 1, NULL, '2018-08-20 06:55:34', NULL, '2018-08-20 06:55:35', NULL),
(527, 4, 31, 37, 'Month_37', 'Bar Graph 2', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/527/cubs.png', NULL, 'Bar Graph 2', '<h1>Bar Graph 2</h1>\n', NULL, 1, NULL, '2018-08-20 06:56:24', NULL, '2018-08-20 06:56:25', NULL),
(528, 4, 31, 37, 'Month_37', 'Clock 3 - Complete', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/528/clock.png', NULL, 'Introduction to accurate clock reading with both needles', '<p>Asl&lt; the child to carry the clocl&lt; to her/his mat Write any 2-3 time readings on a paper Eg . 7:20 Move the minute needle to 20, and tell tne child tnat when the time is 7:20, the hour needle will be between 7 and 8 Place the hour hand between 7 and 8 Then asl&lt; the child to set the time With a couple of samples Say, 8:45, 9:15 and so on Alsointroduce complex&nbsp;&nbsp;&nbsp; time, lil&lt;e 7:41 Asl&lt; the child to count one more than 40, and tell the chid to place the&nbsp;&nbsp; minute hand accordingly This way the complete clocl&lt; reading is complete</p>\n', NULL, 1, NULL, '2018-08-20 06:58:05', NULL, '2018-08-20 06:58:05', NULL),
(529, 4, 31, 37, 'Month_37', 'Division Game 2 - Remainder', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/529/division.png', NULL, 'Division Game 2 - Remainder', '<p>Division Game 2 - Remainder</p>\n', NULL, 1, NULL, '2018-08-20 06:59:07', NULL, '2018-08-20 06:59:08', NULL),
(530, 4, 31, 37, 'Month_37', 'Time Series Cards', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/530/cubs.png', NULL, 'Time Series Cards', '<p>Time Series Cards</p>\n', NULL, 1, NULL, '2018-08-20 07:00:25', NULL, '2018-08-20 07:00:26', NULL),
(531, 4, 32, 37, 'Month_37', 'Timeline of Humans', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/531/humans.png', NULL, '1.To maKe the child aware of how humans have evolVed 2. Enhance picture matching sKills 3. Enhance ability to draw inferences from a sequence of pictures', '<p>Introduce the material to the child as &quot;&quot;timeline of humans&#39;&quot;&#39; Tell the child that man used to&nbsp; be very different many years ago. Step by step taKe the child through the sequence Hunting Fire Clothes.. and so on Then asK the child to bring the stand and pair the pictures with the controlcard and place in the same order</p>\n', NULL, 1, NULL, '2018-08-20 07:02:25', NULL, '2018-08-20 07:02:26', NULL),
(532, 4, 33, 37, 'Month_37', 'Volume Measurement', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/532/cubs.png', NULL, 'Volume Measurement', '<p>Volume Measurement</p>\n', NULL, 1, NULL, '2018-08-20 07:30:16', NULL, '2018-08-20 07:30:17', NULL),
(533, 4, 30, 37, 'Month_37', 'Hindi Alphabet Box 3 - Shabd', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/533/hindi.jpg', NULL, '1.Building small words in Hindi 2. Foundation for reading and wrtiing Hindi', '<p>when <em>we </em>giVe this presentation, <em>we </em>tell the child &quot;let us see now to mal&lt;e words in Hindi&quot;. We give some pictures lil&lt;e pen (l&lt;alam) and asl&lt; the child to analyse and identify tne starting sound and tnen tne next soundsin order.</p>\n', NULL, 1, NULL, '2018-08-20 07:31:50', NULL, '2018-08-20 07:31:51', NULL),
(534, 4, 32, 37, 'Month_37', '3 PC landforms 2 - No control Card', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/534/landform.png', NULL, '1.To enhance the child\'s reading sl<ill and give meaning to the \"read word\'2. To famiiarize the child with the shape of each landform in isolation 3. To enhance the child\'s pairing ability\n', '<p>This activity cannot be started until the child has worKed with the controlcard long enough to recognize an the pictures Tal&lt;e all the picture cards, and place them on top /left side in a line.Then welooK at the name cards.Read it and find the corresponding picture Place it beside the picture card.The children may choose to do the same With the control card also,with sight reading. They would see the firstletter or the length of the word , and pair the word with the control card.It is absolutely fine as this Will set the pattern for&nbsp; reading</p>\n', NULL, 1, NULL, '2018-08-20 07:34:25', NULL, '2018-08-20 07:34:25', NULL),
(535, 4, 34, 37, 'Month_37', 'Plant Kingdom ', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/535/cubs.png', NULL, 'Plant Kingdom ', '<p>Plant Kingdom</p>\n', NULL, 1, NULL, '2018-08-20 07:35:48', NULL, '2018-08-20 07:35:49', NULL),
(536, 4, 28, 37, 'Month_37', 'Homogram Terminal y(2)', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/536/cubs.png', NULL, '1.To learn the various sounds of words ending with y 2.To spell accurately 3. To read fluently\n', '<p>The more common our sound has already been introduced in Month 33 (nasty, fury, density, biology, city, hungry) SAMPLE WORDS (for teacher&#39;s understanding) - sKy, fty, wry,spry,why Introduce the homogram to the child. Read out words and help them recognize it.Use the sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-20 07:37:24', NULL, '2018-08-20 07:37:25', NULL),
(537, 4, 28, 37, 'Month_37', 'Homogram our(3)', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/537/cubs.png', NULL, '1.To learn the 3 sounds of homogram our 2. To spell accurately 3. To read fluently', '<p>The more common &quot;ou&#39;sound 1 has already been introduced in Month 32 (odour, honour, scourge,journey, armour,vapour) SAMPLE WORDS (for teacher&#39;s understanding) - SOUND 2 our, flour,sour SOUND 3 Course.your. pour, detour,source Introduce the homogram to the child. Read out words and help them recognize it.&nbsp; Use the sentence box tiles/ green lists <em>I </em>books <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-20 07:38:55', NULL, '2018-08-20 07:38:56', NULL),
(538, 4, 28, 37, 'Month_37', 'Homogram ear(3)', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/538/cubs.png', NULL, '1.To learn the various sounds of homogram ear 2. To spell accurately 3. To read fluently', '<p>The more common &quot;ea&middot;sound 1 has already been introduced in Month 35 (Beard,Fear) SAMPLE WORDS (for teacher&#39;s understanding) - SOUND 2 Bear. Tear SOUND 3 Earth, Hearse, Learn Introduce the homogram to the child.Read out words and help them recognize it.&nbsp; Use the sentence box tiles/ green lists <em>I </em>booKs <em>I </em>words written on papers to introduce word lists sequentially.</p>\n', NULL, 1, NULL, '2018-08-20 07:45:45', NULL, '2018-08-20 07:45:45', NULL),
(539, 4, 28, 37, 'Month_37', 'Homogram ough(3)', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/539/cubs.png', NULL, '1.To learn the sounds of homogram ough 2.To spell accurately 3. To read fluently', '<p>This is a special case where we are introducing all sounds at one go, since it is a complex sound.we just read out various words from wordlists SAMPLE WORDS (for teacher&#39;s understanding) - SOUND 1Drought,Thought,bought, fought SOUND 2 rough, tough, enough,trough SOUND 3 dough, plough, though Introduce the primary sound 1 to the child.Read out words and help them recogniZe it.&nbsp;Use the sentence box tiles/ green lists <em>I </em>booKs <em>I </em>words written on papers to introduce word lists sequentially. Then introduce sound 2 and 3 also wrth lists,tell the child &quot;ough&quot; can also be said differently</p>\n', NULL, 1, NULL, '2018-08-20 07:47:30', NULL, '2018-08-20 07:47:31', NULL),
(540, 4, 28, 38, 'Month_38', 'Exceptional animals', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/540/cubs.png', NULL, 'Exceptional animals', '<p>Exceptional animals</p>\n', NULL, 1, NULL, '2018-08-21 07:27:05', NULL, '2018-08-21 07:27:06', NULL),
(541, 4, 32, 38, 'Month_38', 'Timeline of Eras 3 - Evolution', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/541/era.png', NULL, '1.To enhance the child\'s reading sl<ill 2. To introduce extinct animals and their eras 3. To enhance the child\'s pairing ability (like match the following) 4. To make the child aware of evolution of animals\n', '<p>Take all the control cards of the eras and arrange the animals on each respective card By now the child will know a few of the names,and remark that &#39;this animalbelongs to this era&quot; Point out to the different changing animal forms and tell the child that animals used to be simpler initially, and became more complex as time went by You could then ask the&nbsp;&nbsp; child to keep the control cards of the respective eras under that era,and move the animals from the era to each controlcard. This will further help the child reinforce the belonging of that animalto that era (The picture is from a child&#39;s work and not very indicative of this prsentation, this is how a child may choose to do this activity)</p>\n', NULL, 1, NULL, '2018-08-21 07:29:08', NULL, '2018-08-21 07:29:08', NULL),
(542, 4, 28, 38, 'Month_38', 'Words Connections 3 - Homonyms', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/542/cubs.png', NULL, 'Words Connections 3 - Homonyms', '<p>Words Connections 3 - Homonyms</p>\n', NULL, 1, NULL, '2018-08-21 07:30:04', NULL, '2018-08-21 07:30:05', NULL),
(543, 4, 28, 38, 'Month_38', 'Words Connections - Homophones', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/543/cubs.png', NULL, 'Words Connections - Homophones', '<p>Words Connections - Homophones</p>\n', NULL, 1, NULL, '2018-08-21 07:30:46', NULL, '2018-08-21 07:30:47', NULL),
(544, 4, 32, 38, 'Month_38', 'Asia Map 3 - Discussion', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/544/asia map.jpg', NULL, '1.Reinforcing location and name of various countries of Asia 2. Leaming in depth the culture. habits etc\n', '<p>Place the Asia map in front of a small group (4) Take the example of any one country (Russia or Japan or China haslot of information) Have some pictures of clothes worn,or food eaten. or a monument ready to talk about See if the children can identify where the country is on the map.Encourage conversation, and make sureyou are conveying accurate facts</p>\n', NULL, 1, NULL, '2018-08-21 07:32:23', NULL, '2018-08-21 07:32:23', NULL),
(545, 4, 32, 38, 'Month_38', 'India Pin Map 2 - Capitals', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/545/cubs.png', NULL, 'India Pin Map 2 - Capitals', '<p>India <strong>Pin </strong>Map 2 - Capitals</p>\n', NULL, 1, NULL, '2018-08-21 07:33:46', NULL, '2018-08-21 07:33:47', NULL),
(546, 4, 31, 38, 'Month_38', 'Equations Box 4 - Divide', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/546/equation box.png', NULL, 'Equations Box 4 - Divide', '<h2>Equations Box 4 - Divide</h2>\n', NULL, 1, NULL, '2018-08-21 07:35:01', NULL, '2018-08-21 07:35:02', NULL),
(547, 4, 31, 38, 'Month_38', 'Division Problem Sums', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/547/division.png', NULL, 'Division Problem Sums', '<p>Division Problem Sums</p>\n', NULL, 1, NULL, '2018-08-21 07:36:08', NULL, '2018-08-21 07:36:08', NULL),
(548, 4, 34, 38, 'Month_38', 'Trans and Comm ', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/548/cubs.png', NULL, 'Trans and Comm ', '<p>Trans and Comm</p>\n', NULL, 1, NULL, '2018-08-21 07:37:20', NULL, '2018-08-21 07:37:20', NULL),
(549, 4, 31, 38, 'Month_38', 'Equivalent figures 2- Areas', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/549/equi figures.png', NULL, '1.To introduce the term \'\"\'space occupied \"\'\n 2.To lay the foundation for future study of area measurements\n 3. To help the child analyze the shape -space relationships', '<p>Ask the child to carry the material to the chowki. Tell the child to take out <em>any </em>one set of equivalent figures.Show the child how to use them as stencils and draw the outlines of any one of the rectangles on chequered paper (square line sheet) Ask the child to number the squares with a pencil. Then introduce the term &quot;space occupied&quot; Tell them that the rectangle they have drawn occupies, say &quot;55 squares&quot; or &quot;50 squares . Here do not correct if they have numbered extra squares or missed maybe some half covered one. The important part is to help them understand that <em>we </em>are counting squares.EmphasiZe &quot; when <em>w</em><em>e </em>talk about space occupied <em>we </em>count the squares Typically more than one child <em>may </em>start this activity asitis quite interesting.They <em>may </em>compare, and find which of them have how many squares. Then you could say &quot;larger objects occupy more space or more squares&quot; Remember you are dealing with 5+ and they can analyze and absorb very well, they also like to work in small groups wrth friends always</p>\n', NULL, 1, NULL, '2018-08-21 07:41:51', NULL, '2018-08-21 07:41:52', NULL),
(550, 4, 31, 38, 'Month_38', '3 Part Cards Fractions', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/550/fraction.png', NULL, '1. To enhance the child\'s understanding of fractions \n2.To familiarize the child with each fraction  in isolation \n3.To enhance the child\'s pairing ability for patterns\n', '<p>This is a simple activity,where children pair the fraction pictures TaKe the first 5 fraction control cards.and place the montopina line.Then we taKe these condpart and pair By now the child is completely familar with reading ,and hence will pair the number cards also looKing at the controlcard. When the child has worKed with&nbsp; this for a few days,<em>we</em>stepin</p>\n', NULL, 1, NULL, '2018-08-21 07:57:14', NULL, '2018-08-21 07:57:14', NULL),
(551, 4, 34, 39, 'Month_39', 'Community Helpers', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/551/cubs.png', NULL, 'Community Helpers', '<p>Community Helpers</p>\n', NULL, 1, NULL, '2018-08-21 07:58:27', NULL, '2018-08-21 07:58:28', NULL),
(552, 4, 34, 40, 'Month_40', 'Earth and Nature', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/552/cubs.png', NULL, 'Earth and Nature', '<p>Earth and Nature</p>\n', NULL, 1, NULL, '2018-08-21 07:59:38', NULL, '2018-08-21 07:59:39', NULL),
(553, 3, 46, 21, 'Month_21', 'Tracing', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/553/cubs.png', NULL, 'Tracing', '<p>Tracing</p>\n', NULL, 1, NULL, '2018-08-23 06:40:11', NULL, '2018-08-23 06:40:12', NULL),
(554, 2, 12, 11, 'Month_11', 'WW Classification 1', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/554/ww.png', NULL, 'Help the child understand classification and discrimination', '<p>&nbsp; &nbsp; &nbsp; &nbsp; Assessment worksheets are always pre arranged on the mat in a special place in thr room assigned solely for assessment. These worksheets are designed to asses if the child has interacted sufficiently with specific material and has subsequently acquired the associated skill. Arrange all the pieces on the board in the first row, remove the place that does not belong to the group and set it aside outside the board. Ask the child name the group of pictures left behind. Eg&quot;Birds&quot; You could get into details and give name lessons of the birds and say &quot;They are all Birds&quot;</p>\n', NULL, 1, NULL, '2018-08-27 06:25:17', NULL, '2018-08-27 06:25:18', NULL),
(555, 3, 47, 27, 'Month_27', 'Words Formation', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/555/new logo-1 (1)-1.png', NULL, 'Words Formation', '<p>Words Formation</p>\n', NULL, 1, NULL, '2018-12-05 08:13:45', NULL, '2018-12-05 08:13:45', NULL),
(556, 4, 29, 38, 'Month_38', 'Writing Kannada', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/556/download.jpg', NULL, 'Writing Kannada', '<p>Writing Kannada</p>\n', NULL, 1, NULL, '2019-01-05 07:30:34', NULL, '2019-01-05 07:30:34', NULL),
(557, 4, 30, 38, 'Month_38', 'Hindi Writing', 'http://cubspreschool.myprelaunch.in/CustomImages/ActivityImage/557/download.png', NULL, 'Hindi Writing', '<p>Hindi Writing</p>\n', NULL, 1, NULL, '2019-01-05 07:32:08', NULL, '2019-01-05 07:32:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_activities_level`
--

CREATE TABLE `t_activities_level` (
  `activity_level_id` int(11) NOT NULL,
  `step_title` varchar(1000) DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_activities_level`
--

INSERT INTO `t_activities_level` (`activity_level_id`, `step_title`, `activity_id`, `level_id`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 'Hold the rods in a palmar grasap ', 1, 1, 1, NULL, '2018-07-06 08:28:37', NULL, '0000-00-00 00:00:00'),
(2, 'Put few rods with great difficulty', 1, 2, 1, NULL, '2018-07-06 08:28:37', NULL, '0000-00-00 00:00:00'),
(3, 'Put many rods in fairly well', 1, 3, 1, NULL, '2018-07-06 08:28:37', NULL, '0000-00-00 00:00:00'),
(4, 'Put all in rods with out any difficulty', 1, 4, 1, NULL, '2018-07-06 08:28:37', NULL, '0000-00-00 00:00:00'),
(5, 'Able to hold only the ring', 2, 1, 1, NULL, '2018-07-07 04:29:28', NULL, '0000-00-00 00:00:00'),
(6, 'Making an effort to put the rings', 2, 2, 1, NULL, '2018-07-07 04:29:28', NULL, '0000-00-00 00:00:00'),
(7, 'reaching to a level', 2, 3, 1, NULL, '2018-07-07 04:29:28', NULL, '0000-00-00 00:00:00'),
(8, 'Doing perfectly', 2, 4, 1, NULL, '2018-07-07 04:29:28', NULL, '0000-00-00 00:00:00'),
(9, 'cannot knead clay ', 3, 1, 1, NULL, '2018-07-07 04:40:59', NULL, '0000-00-00 00:00:00'),
(10, 'Struggles to knead clay with 2 hands', 3, 2, 1, NULL, '2018-07-07 04:40:59', NULL, '0000-00-00 00:00:00'),
(11, 'knead with 2 hands very easily', 3, 3, 1, NULL, '2018-07-07 04:40:59', NULL, '0000-00-00 00:00:00'),
(12, 'Kneads easily even with one hand', 3, 4, 1, NULL, '2018-07-07 04:40:59', NULL, '0000-00-00 00:00:00'),
(13, 'cannot put pounder into cup properly', 4, 1, 1, NULL, '2018-07-07 04:59:34', NULL, '0000-00-00 00:00:00'),
(14, 'pounds with some difficulty', 4, 2, 1, NULL, '2018-07-07 04:59:34', NULL, '0000-00-00 00:00:00'),
(15, 'powders peanut', 4, 3, 1, NULL, '2018-07-07 04:59:34', NULL, '0000-00-00 00:00:00'),
(16, 'powder sugar', 4, 4, 1, NULL, '2018-07-07 04:59:34', NULL, '0000-00-00 00:00:00'),
(17, 'cannot differentiate rough & smooth', 5, 1, 1, NULL, '2018-07-07 05:16:02', NULL, '0000-00-00 00:00:00'),
(18, 'Feel some difference', 5, 2, 1, NULL, '2018-07-07 05:16:02', NULL, '0000-00-00 00:00:00'),
(19, 'Clearly identifies as rough and smooth', 5, 3, 1, NULL, '2018-07-07 05:16:02', NULL, '0000-00-00 00:00:00'),
(20, 'identifies any other \"rough\" and \"Smooth\" textures', 5, 4, 1, NULL, '2018-07-07 05:16:02', NULL, '0000-00-00 00:00:00'),
(21, 'cannot follow the movement', 6, 1, 1, NULL, '2018-07-07 05:24:39', NULL, '0000-00-00 00:00:00'),
(22, 'traces the ball down one slope ', 6, 2, 1, NULL, '2018-07-07 05:24:39', NULL, '0000-00-00 00:00:00'),
(23, 'Traces movement fairly well', 6, 3, 1, NULL, '2018-07-07 05:24:39', NULL, '0000-00-00 00:00:00'),
(24, 'Place on different parts, track movements', 6, 4, 1, NULL, '2018-07-07 05:24:39', NULL, '0000-00-00 00:00:00'),
(25, 'Unable to hold with three fingers', 7, 1, 1, NULL, '2018-07-07 05:39:20', NULL, '0000-00-00 00:00:00'),
(26, 'Struggles to get the 3 fingers grip', 7, 2, 1, NULL, '2018-07-07 05:39:20', NULL, '0000-00-00 00:00:00'),
(27, 'Use 3 fingered grip most times', 7, 3, 1, NULL, '2018-07-07 05:39:20', NULL, '0000-00-00 00:00:00'),
(28, 'Switches over to 3 fingered grip', 7, 4, 1, NULL, '2018-07-07 05:39:20', NULL, '0000-00-00 00:00:00'),
(29, 'cannot move the knob', 8, 1, 1, NULL, '2018-07-07 05:49:34', NULL, '0000-00-00 00:00:00'),
(30, 'move the knob halfway', 8, 2, 1, NULL, '2018-07-07 05:49:34', NULL, '0000-00-00 00:00:00'),
(31, 'move knob all the way but with stops ', 8, 3, 1, NULL, '2018-07-07 05:49:34', NULL, '0000-00-00 00:00:00'),
(32, 'move the knobs all the way smoothly', 8, 4, 1, NULL, '2018-07-07 05:49:34', NULL, '0000-00-00 00:00:00'),
(33, 'walks one step at a time and falls', 9, 1, 1, NULL, '2018-07-07 06:01:29', NULL, '0000-00-00 00:00:00'),
(34, 'walks a couple of steps without failing', 9, 2, 1, NULL, '2018-07-07 06:01:29', NULL, '0000-00-00 00:00:00'),
(35, 'walks from one end to another without failing', 9, 3, 1, NULL, '2018-07-07 06:01:29', NULL, '0000-00-00 00:00:00'),
(36, 'walks fast from one end to another without failing', 9, 4, 1, NULL, '2018-07-07 06:01:29', NULL, '0000-00-00 00:00:00'),
(37, 'Observing', 10, 1, 1, NULL, '2018-07-07 07:32:34', NULL, '0000-00-00 00:00:00'),
(38, 'Actions', 10, 2, 1, NULL, '2018-07-07 07:32:34', NULL, '0000-00-00 00:00:00'),
(39, 'uttering words with action', 10, 3, 1, NULL, '2018-07-07 07:32:34', NULL, '0000-00-00 00:00:00'),
(40, 'Completing with words and actions', 10, 4, 1, NULL, '2018-07-07 07:32:34', NULL, '0000-00-00 00:00:00'),
(41, 'cannot identify any object', 11, 1, 1, NULL, '2018-07-07 07:43:11', NULL, '0000-00-00 00:00:00'),
(42, 'identifies few common objects', 11, 2, 1, NULL, '2018-07-07 07:43:11', NULL, '0000-00-00 00:00:00'),
(43, 'identifies many object', 11, 3, 1, NULL, '2018-07-07 07:43:11', NULL, '0000-00-00 00:00:00'),
(44, 'Starts pointing to objects and names', 11, 4, 1, NULL, '2018-07-07 07:43:11', NULL, '0000-00-00 00:00:00'),
(45, 'unable  to hold with 3 fingers', 12, 1, 1, NULL, '2018-07-07 07:55:51', NULL, '0000-00-00 00:00:00'),
(46, 'struggles to get 3 finger grip', 12, 2, 1, NULL, '2018-07-07 07:55:51', NULL, '0000-00-00 00:00:00'),
(47, 'Use 3 finger grip most time', 12, 3, 1, NULL, '2018-07-07 07:55:51', NULL, '0000-00-00 00:00:00'),
(48, 'Switches over to 3 fingered grip', 12, 4, 1, NULL, '2018-07-07 07:55:51', NULL, '0000-00-00 00:00:00'),
(49, 'Unable to roll', 13, 1, 1, NULL, '2018-07-07 08:00:12', NULL, '0000-00-00 00:00:00'),
(50, 'rolls very badly', 13, 2, 1, NULL, '2018-07-07 08:00:12', NULL, '0000-00-00 00:00:00'),
(51, 'Rolls fairly well and carries well', 13, 3, 1, NULL, '2018-07-07 08:00:12', NULL, '0000-00-00 00:00:00'),
(52, 'Rolls perfectly and carries with care', 13, 4, 1, NULL, '2018-07-07 08:00:12', NULL, '0000-00-00 00:00:00'),
(53, 'Unable to fold', 14, 1, 1, NULL, '2018-07-07 08:04:33', NULL, '0000-00-00 00:00:00'),
(54, 'folds very badly', 14, 2, 1, NULL, '2018-07-07 08:04:33', NULL, '0000-00-00 00:00:00'),
(55, 'folds fairly well and carries', 14, 3, 1, NULL, '2018-07-07 08:04:33', NULL, '0000-00-00 00:00:00'),
(56, 'folds perfectly and carries with care', 14, 4, 1, NULL, '2018-07-07 08:04:33', NULL, '0000-00-00 00:00:00'),
(57, 'Beginner', 15, 1, 1, NULL, '2018-07-07 08:10:54', NULL, '0000-00-00 00:00:00'),
(58, 'Learner', 15, 2, 1, NULL, '2018-07-07 08:10:54', NULL, '0000-00-00 00:00:00'),
(59, 'Practitioner', 15, 3, 1, NULL, '2018-07-07 08:10:54', NULL, '0000-00-00 00:00:00'),
(60, 'Scholar', 15, 4, 1, NULL, '2018-07-07 08:10:54', NULL, '0000-00-00 00:00:00'),
(61, 'Unable to hold with 3 fingers', 16, 1, 1, NULL, '2018-07-08 08:39:12', NULL, '0000-00-00 00:00:00'),
(62, 'Struggles to get the 3 finger grip', 16, 2, 1, NULL, '2018-07-08 08:39:13', NULL, '0000-00-00 00:00:00'),
(63, 'Use 3 fingered most times', 16, 3, 1, NULL, '2018-07-08 08:39:13', NULL, '0000-00-00 00:00:00'),
(64, 'Switches over to 3 fingered grip', 16, 4, 1, NULL, '2018-07-08 08:39:13', NULL, '0000-00-00 00:00:00'),
(65, 'Removes pieces by overturning', 17, 1, 1, NULL, '2018-07-08 08:44:55', NULL, '0000-00-00 00:00:00'),
(66, 'Removes pieces,unable to put back', 17, 2, 1, NULL, '2018-07-08 08:44:55', NULL, '0000-00-00 00:00:00'),
(67, 'Removes pieces,put back with difficulty', 17, 3, 1, NULL, '2018-07-08 08:44:55', NULL, '0000-00-00 00:00:00'),
(68, 'Removes pieces,put back easily', 17, 4, 1, NULL, '2018-07-08 08:44:55', NULL, '0000-00-00 00:00:00'),
(69, 'Cannot open the peg', 18, 1, 1, NULL, '2018-07-08 09:09:18', NULL, '0000-00-00 00:00:00'),
(70, 'Opens the pegs', 18, 2, 1, NULL, '2018-07-08 09:09:18', NULL, '0000-00-00 00:00:00'),
(71, 'Opens the pegs tries to peg on box', 18, 3, 1, NULL, '2018-07-08 09:09:18', NULL, '0000-00-00 00:00:00'),
(72, 'Pegs on the box.', 18, 4, 1, NULL, '2018-07-08 09:09:18', NULL, '0000-00-00 00:00:00'),
(73, 'Struggle to thread,does not persist', 19, 1, 1, NULL, '2018-07-08 09:22:32', NULL, '0000-00-00 00:00:00'),
(74, 'Persists,threads at least 2 pieces', 19, 2, 1, NULL, '2018-07-08 09:22:32', NULL, '0000-00-00 00:00:00'),
(75, 'threads most shapes fairly well', 19, 3, 1, NULL, '2018-07-08 09:22:32', NULL, '0000-00-00 00:00:00'),
(76, 'Threads all shapes smoothly', 19, 4, 1, NULL, '2018-07-08 09:22:32', NULL, '0000-00-00 00:00:00'),
(77, 'Unfasten/fasten with difficulty', 20, 1, 1, NULL, '2018-07-08 09:37:29', NULL, '0000-00-00 00:00:00'),
(78, 'Unfastens well,struggles to fasten', 20, 2, 1, NULL, '2018-07-08 09:37:29', NULL, '0000-00-00 00:00:00'),
(79, 'Unfastens and fasten quite well', 20, 3, 1, NULL, '2018-07-08 09:37:29', NULL, '0000-00-00 00:00:00'),
(80, 'Fasten,unfasten dress with buttons', 20, 4, 1, NULL, '2018-07-08 09:37:29', NULL, '0000-00-00 00:00:00'),
(81, 'Cannot squeeze the sponge', 21, 1, 1, NULL, '2018-07-08 09:57:22', NULL, '0000-00-00 00:00:00'),
(82, 'Squeezes sponge with difficulty', 21, 2, 1, NULL, '2018-07-08 09:57:22', NULL, '0000-00-00 00:00:00'),
(83, 'Transfers with much spillage', 21, 3, 1, NULL, '2018-07-08 09:57:22', NULL, '0000-00-00 00:00:00'),
(84, 'Transfers well without much spillage', 21, 4, 1, NULL, '2018-07-08 09:57:22', NULL, '0000-00-00 00:00:00'),
(85, 'cannot identify any animals', 22, 1, 1, NULL, '2018-07-08 10:01:03', NULL, '0000-00-00 00:00:00'),
(86, 'Name 2-3 animals with errors', 22, 2, 1, NULL, '2018-07-08 10:01:04', NULL, '0000-00-00 00:00:00'),
(87, 'Correctly names more than 5', 22, 3, 1, NULL, '2018-07-08 10:01:04', NULL, '0000-00-00 00:00:00'),
(88, 'Identify farm animals in pictures', 22, 4, 1, NULL, '2018-07-08 10:01:04', NULL, '0000-00-00 00:00:00'),
(89, 'cannot move the knob', 23, 1, 1, NULL, '2018-07-09 05:46:00', NULL, '0000-00-00 00:00:00'),
(90, 'Moves the knob some way', 23, 2, 1, NULL, '2018-07-09 05:46:00', NULL, '0000-00-00 00:00:00'),
(91, 'move knob all the way with stops', 23, 3, 1, NULL, '2018-07-09 05:46:00', NULL, '0000-00-00 00:00:00'),
(92, 'moves knob all the way smoothly', 23, 4, 1, NULL, '2018-07-09 05:46:00', NULL, '0000-00-00 00:00:00'),
(93, 'Does not participate', 24, 1, 1, NULL, '2018-07-09 05:53:24', NULL, '0000-00-00 00:00:00'),
(94, 'Makes some remarks', 24, 2, 1, NULL, '2018-07-09 05:53:24', NULL, '0000-00-00 00:00:00'),
(95, 'Able to point out many features', 24, 3, 1, NULL, '2018-07-09 05:53:24', NULL, '0000-00-00 00:00:00'),
(96, 'Relates own version of experience', 24, 4, 1, NULL, '2018-07-09 05:53:24', NULL, '0000-00-00 00:00:00'),
(97, 'L1', 25, 1, 1, NULL, '2018-07-09 05:55:43', NULL, '0000-00-00 00:00:00'),
(98, 'L2', 25, 2, 1, NULL, '2018-07-09 05:55:43', NULL, '0000-00-00 00:00:00'),
(99, 'L3', 25, 3, 1, NULL, '2018-07-09 05:55:43', NULL, '0000-00-00 00:00:00'),
(100, 'L4', 25, 4, 1, NULL, '2018-07-09 05:55:43', NULL, '0000-00-00 00:00:00'),
(101, 'Cannot insert into the holes', 26, 1, 1, NULL, '2018-07-09 06:08:02', NULL, '0000-00-00 00:00:00'),
(102, 'Inserts 3-4 pieces with difficulty', 26, 2, 1, NULL, '2018-07-09 06:08:02', NULL, '0000-00-00 00:00:00'),
(103, 'feels the shape and inserts', 26, 3, 1, NULL, '2018-07-09 06:08:02', NULL, '0000-00-00 00:00:00'),
(104, 'Feels the shape and understands', 26, 4, 1, NULL, '2018-07-09 06:08:02', NULL, '0000-00-00 00:00:00'),
(105, 'Hold strainer comfortably', 27, 1, 1, NULL, '2018-07-09 08:21:53', NULL, '0000-00-00 00:00:00'),
(106, 'Fishes out balls from the water', 27, 2, 1, NULL, '2018-07-09 08:21:53', NULL, '0000-00-00 00:00:00'),
(107, 'Strain out lots of water', 27, 3, 1, NULL, '2018-07-09 08:21:53', NULL, '0000-00-00 00:00:00'),
(108, 'Transfer balls with minimum spillage', 27, 4, 1, NULL, '2018-07-09 08:21:53', NULL, '0000-00-00 00:00:00'),
(109, 'Struggles to remove cylinders', 28, 1, 1, NULL, '2018-07-09 08:47:20', NULL, '0000-00-00 00:00:00'),
(110, 'Removes cylinders smoothly', 28, 2, 1, NULL, '2018-07-09 08:47:20', NULL, '0000-00-00 00:00:00'),
(111, 'Remove well,back with difficulty', 28, 3, 1, NULL, '2018-07-09 08:47:20', NULL, '0000-00-00 00:00:00'),
(112, 'Removes,puts back smoothly', 28, 4, 1, NULL, '2018-07-09 08:47:20', NULL, '0000-00-00 00:00:00'),
(113, 'Cannot move the knob', 29, 1, 1, NULL, '2018-07-09 13:43:30', NULL, '0000-00-00 00:00:00'),
(114, 'Moves the knob some way', 29, 2, 1, NULL, '2018-07-09 13:43:30', NULL, '0000-00-00 00:00:00'),
(115, 'Move knob all the way with stops', 29, 3, 1, NULL, '2018-07-09 13:43:30', NULL, '0000-00-00 00:00:00'),
(116, 'Moves knob all the way smoothly', 29, 4, 1, NULL, '2018-07-09 13:43:30', NULL, '0000-00-00 00:00:00'),
(117, 'Unable to hold with 3 fingers', 30, 1, 1, NULL, '2018-07-09 13:52:57', NULL, '0000-00-00 00:00:00'),
(118, 'Struggles to get the 3 finger grip', 30, 2, 1, NULL, '2018-07-09 13:52:57', NULL, '0000-00-00 00:00:00'),
(119, 'Use 3 fingered most times', 30, 3, 1, NULL, '2018-07-09 13:52:57', NULL, '0000-00-00 00:00:00'),
(120, 'Switches over to 3 fingered grip', 30, 4, 1, NULL, '2018-07-09 13:52:57', NULL, '0000-00-00 00:00:00'),
(121, 'Unable to identify first sound', 31, 1, 1, NULL, '2018-07-09 13:58:27', NULL, '0000-00-00 00:00:00'),
(122, 'Identifies once told', 31, 2, 1, NULL, '2018-07-09 13:58:27', NULL, '0000-00-00 00:00:00'),
(123, 'Identifies independently for many words', 31, 3, 1, NULL, '2018-07-09 13:58:27', NULL, '0000-00-00 00:00:00'),
(124, 'Identifies first sound for any word', 31, 4, 1, NULL, '2018-07-09 13:58:27', NULL, '0000-00-00 00:00:00'),
(125, 'Unable to follow', 32, 1, 1, NULL, '2018-07-09 14:01:15', NULL, '0000-00-00 00:00:00'),
(126, 'Identifies main character of story', 32, 2, 1, NULL, '2018-07-09 14:01:15', NULL, '0000-00-00 00:00:00'),
(127, 'Able to get some idea of plot', 32, 3, 1, NULL, '2018-07-09 14:01:15', NULL, '0000-00-00 00:00:00'),
(128, 'Able to understand stories', 32, 4, 1, NULL, '2018-07-09 14:01:15', NULL, '0000-00-00 00:00:00'),
(129, 'Cannot understand category', 33, 1, 1, NULL, '2018-07-09 14:19:20', NULL, '0000-00-00 00:00:00'),
(130, 'Makes some remarks about the category', 33, 2, 1, NULL, '2018-07-09 14:19:20', NULL, '0000-00-00 00:00:00'),
(131, 'Able to point out many features', 33, 3, 1, NULL, '2018-07-09 14:19:20', NULL, '0000-00-00 00:00:00'),
(132, 'Groups well and discuss', 33, 4, 1, NULL, '2018-07-09 14:19:20', NULL, '0000-00-00 00:00:00'),
(133, 'Cannot discriminate', 34, 1, 1, NULL, '2018-07-09 14:29:20', NULL, '0000-00-00 00:00:00'),
(134, 'Sort 2 types of shapes', 34, 2, 1, NULL, '2018-07-09 14:29:20', NULL, '0000-00-00 00:00:00'),
(135, 'Sorts 3 types of shapes', 34, 3, 1, NULL, '2018-07-09 14:29:20', NULL, '0000-00-00 00:00:00'),
(136, 'Sort any number of shapes', 34, 4, 1, NULL, '2018-07-09 14:29:20', NULL, '0000-00-00 00:00:00'),
(137, 'L1', 35, 1, 1, NULL, '2018-07-09 14:30:20', NULL, '0000-00-00 00:00:00'),
(138, 'L2', 35, 2, 1, NULL, '2018-07-09 14:30:20', NULL, '0000-00-00 00:00:00'),
(139, 'L3', 35, 3, 1, NULL, '2018-07-09 14:30:20', NULL, '0000-00-00 00:00:00'),
(140, 'L4', 35, 4, 1, NULL, '2018-07-09 14:30:20', NULL, '0000-00-00 00:00:00'),
(141, 'cannot identify any picture', 36, 1, 1, NULL, '2018-07-10 05:29:57', NULL, '0000-00-00 00:00:00'),
(142, 'Identifies few common pictures', 36, 2, 1, NULL, '2018-07-10 05:29:57', NULL, '0000-00-00 00:00:00'),
(143, 'Identifies many pictures', 36, 3, 1, NULL, '2018-07-10 05:29:57', NULL, '0000-00-00 00:00:00'),
(144, 'Starts pointing to pictures and names', 36, 4, 1, NULL, '2018-07-10 05:29:57', NULL, '0000-00-00 00:00:00'),
(145, 'Cannot open or close either', 37, 1, 1, NULL, '2018-07-10 05:33:07', NULL, '0000-00-00 00:00:00'),
(146, 'Opens one but cannot close', 37, 2, 1, NULL, '2018-07-10 05:33:07', NULL, '0000-00-00 00:00:00'),
(147, 'Open and close any one', 37, 3, 1, NULL, '2018-07-10 05:33:07', NULL, '0000-00-00 00:00:00'),
(148, 'Opens and closes both', 37, 4, 1, NULL, '2018-07-10 05:33:07', NULL, '0000-00-00 00:00:00'),
(149, 'Cannot mould clay', 38, 1, 1, NULL, '2018-07-10 05:39:20', NULL, '0000-00-00 00:00:00'),
(150, 'Struggles to mould', 38, 2, 1, NULL, '2018-07-10 05:39:20', NULL, '0000-00-00 00:00:00'),
(151, 'Mould few shapes', 38, 3, 1, NULL, '2018-07-10 05:39:20', NULL, '0000-00-00 00:00:00'),
(152, 'Mould any shape', 38, 4, 1, NULL, '2018-07-10 05:39:20', NULL, '0000-00-00 00:00:00'),
(153, 'Finds difficult,does not persist', 39, 1, 1, NULL, '2018-07-10 08:34:10', NULL, '0000-00-00 00:00:00'),
(154, 'Persists,threads about 2-5 pieces', 39, 2, 1, NULL, '2018-07-10 08:34:10', NULL, '0000-00-00 00:00:00'),
(155, 'Threads 10 beads with difficulty', 39, 3, 1, NULL, '2018-07-10 08:34:10', NULL, '0000-00-00 00:00:00'),
(156, 'Threads many beads smoothly', 39, 4, 1, NULL, '2018-07-10 08:34:10', NULL, '0000-00-00 00:00:00'),
(157, 'Cannot put the pieces into the holes', 40, 1, 1, NULL, '2018-07-11 05:48:39', NULL, '0000-00-00 00:00:00'),
(158, 'Puts some pieces in with trial and error', 40, 2, 1, NULL, '2018-07-11 05:48:39', NULL, '0000-00-00 00:00:00'),
(159, 'Puts all pieces in with trial and error', 40, 3, 1, NULL, '2018-07-11 05:48:39', NULL, '0000-00-00 00:00:00'),
(160, 'Puts all pieces in by visual inspection', 40, 4, 1, NULL, '2018-07-11 05:48:39', NULL, '0000-00-00 00:00:00'),
(161, 'Hold the spoon properly', 41, 1, 1, NULL, '2018-07-11 06:12:56', NULL, '0000-00-00 00:00:00'),
(162, 'tranfers with spillage', 41, 2, 1, NULL, '2018-07-11 06:12:56', NULL, '0000-00-00 00:00:00'),
(163, 'Transfers well with low spillage and steadily', 41, 3, 1, NULL, '2018-07-11 06:12:56', NULL, '0000-00-00 00:00:00'),
(164, 'Uses all varieties of spoons to transfer solids,liquids', 41, 4, 1, NULL, '2018-07-11 06:12:56', NULL, '0000-00-00 00:00:00'),
(165, 'Cannot differentiate various textures', 42, 1, 1, NULL, '2018-07-11 06:44:52', NULL, '0000-00-00 00:00:00'),
(166, 'Realizes there is a difference in the cards', 42, 2, 1, NULL, '2018-07-11 06:44:52', NULL, '0000-00-00 00:00:00'),
(167, 'Understands that some are rough/smooth', 42, 3, 1, NULL, '2018-07-11 06:44:52', NULL, '0000-00-00 00:00:00'),
(168, 'Clearly identify that which are rough/smooth', 42, 4, 1, NULL, '2018-07-11 06:44:52', NULL, '0000-00-00 00:00:00'),
(169, 'Cannot follow that large balls get stuck,try pusing hard', 43, 1, 1, NULL, '2018-07-11 08:16:40', NULL, '0000-00-00 00:00:00'),
(170, 'Understand that larger balls are stuck and smaller ones fall through', 43, 2, 1, NULL, '2018-07-11 08:16:40', NULL, '0000-00-00 00:00:00'),
(171, 'Experiment with different sized balls', 43, 3, 1, NULL, '2018-07-11 08:16:40', NULL, '0000-00-00 00:00:00'),
(172, 'Figures all different sized balls move at the same rate', 43, 4, 1, NULL, '2018-07-11 08:16:40', NULL, '0000-00-00 00:00:00'),
(173, 'Unable to hold with 3 fingers', 44, 1, 1, NULL, '2018-07-11 08:20:45', NULL, '0000-00-00 00:00:00'),
(174, 'Struggles to hold with 3 fingers while putting back', 44, 2, 1, NULL, '2018-07-11 08:20:45', NULL, '0000-00-00 00:00:00'),
(175, 'Use 3 fingered grip well and puts back well', 44, 3, 1, NULL, '2018-07-11 08:20:45', NULL, '0000-00-00 00:00:00'),
(176, 'Switches over to 3 fingered grip and puts back very easily', 44, 4, 1, NULL, '2018-07-11 08:20:45', NULL, '0000-00-00 00:00:00'),
(177, 'cannot remove cylinders smoothly', 45, 1, 1, NULL, '2018-07-11 08:38:09', NULL, '0000-00-00 00:00:00'),
(178, 'remove all cylinders smoothly', 45, 2, 1, NULL, '2018-07-11 08:38:09', NULL, '0000-00-00 00:00:00'),
(179, 'remove cylinders smoothly,puts back smoothly', 45, 3, 1, NULL, '2018-07-11 08:38:09', NULL, '0000-00-00 00:00:00'),
(180, 'Remove and puts back smoothly using 3 fingers', 45, 4, 1, NULL, '2018-07-11 08:38:09', NULL, '0000-00-00 00:00:00'),
(181, 'Unable to hold with 3 fingers', 46, 1, 1, NULL, '2018-07-11 08:46:33', NULL, '0000-00-00 00:00:00'),
(182, 'Struggles to get the 3 finger grip', 46, 2, 1, NULL, '2018-07-11 08:46:33', NULL, '0000-00-00 00:00:00'),
(183, 'use 3 fingered grip most times', 46, 3, 1, NULL, '2018-07-11 08:46:33', NULL, '0000-00-00 00:00:00'),
(184, 'Switches over to 3 fingered grip', 46, 4, 1, NULL, '2018-07-11 08:46:33', NULL, '0000-00-00 00:00:00'),
(185, 'Unable to hold with 3 fingers', 47, 1, 1, NULL, '2018-07-11 08:55:03', NULL, '0000-00-00 00:00:00'),
(186, 'Struggles to get the 3 finger grip', 47, 2, 1, NULL, '2018-07-11 08:55:03', NULL, '0000-00-00 00:00:00'),
(187, 'Use 3 fingered grip most times', 47, 3, 1, NULL, '2018-07-11 08:55:03', NULL, '0000-00-00 00:00:00'),
(188, 'Switches over to 3 fingered grip', 47, 4, 1, NULL, '2018-07-11 08:55:03', NULL, '0000-00-00 00:00:00'),
(189, 'Cannot move the knob', 48, 1, 1, NULL, '2018-07-11 09:03:39', NULL, '0000-00-00 00:00:00'),
(190, 'Moves the knob some way', 48, 2, 1, NULL, '2018-07-11 09:03:39', NULL, '0000-00-00 00:00:00'),
(191, 'Move knob all the way, with stops', 48, 3, 1, NULL, '2018-07-11 09:03:39', NULL, '0000-00-00 00:00:00'),
(192, 'Moves knob all the way smoothly', 48, 4, 1, NULL, '2018-07-11 09:03:39', NULL, '0000-00-00 00:00:00'),
(193, '1', 49, 1, 1, NULL, '2018-07-11 09:26:42', NULL, '0000-00-00 00:00:00'),
(194, '2', 49, 2, 1, NULL, '2018-07-11 09:26:42', NULL, '0000-00-00 00:00:00'),
(195, '3', 49, 3, 1, NULL, '2018-07-11 09:26:42', NULL, '0000-00-00 00:00:00'),
(196, '4', 49, 4, 1, NULL, '2018-07-11 09:26:42', NULL, '0000-00-00 00:00:00'),
(197, 'L1', 50, 1, 1, NULL, '2018-07-12 06:17:10', NULL, '0000-00-00 00:00:00'),
(198, 'L2', 50, 2, 1, NULL, '2018-07-12 06:17:10', NULL, '0000-00-00 00:00:00'),
(199, 'L3', 50, 3, 1, NULL, '2018-07-12 06:17:10', NULL, '0000-00-00 00:00:00'),
(200, 'L4', 50, 4, 1, NULL, '2018-07-12 06:17:10', NULL, '0000-00-00 00:00:00'),
(201, 'Geometry board', 51, 1, 1, NULL, '2018-07-12 06:35:11', NULL, '0000-00-00 00:00:00'),
(202, 'Puts 1-2 pieces back in the right slot', 51, 2, 1, NULL, '2018-07-12 06:35:11', NULL, '0000-00-00 00:00:00'),
(203, 'Puts 3-4 pieces back in the right slot well', 51, 3, 1, NULL, '2018-07-12 06:35:11', NULL, '0000-00-00 00:00:00'),
(204, 'Puts all pieces back in the right slot easily', 51, 4, 1, NULL, '2018-07-12 06:35:11', NULL, '0000-00-00 00:00:00'),
(205, 'Unable to identify last sound', 52, 1, 1, NULL, '2018-07-12 06:50:54', NULL, '0000-00-00 00:00:00'),
(206, 'Identifies once told', 52, 2, 1, NULL, '2018-07-12 06:50:54', NULL, '0000-00-00 00:00:00'),
(207, 'Identifies independently for many words', 52, 3, 1, NULL, '2018-07-12 06:50:54', NULL, '0000-00-00 00:00:00'),
(208, 'Identifies last sound for any word.', 52, 4, 1, NULL, '2018-07-12 06:50:54', NULL, '0000-00-00 00:00:00'),
(209, 'cannot churn', 53, 1, 1, NULL, '2018-07-12 07:07:37', NULL, '0000-00-00 00:00:00'),
(210, 'Holds churner firmly b/w palms and churns', 53, 2, 1, NULL, '2018-07-12 07:07:37', NULL, '0000-00-00 00:00:00'),
(211, 'Rotates the churning rod with some difficulty', 53, 3, 1, NULL, '2018-07-12 07:07:37', NULL, '0000-00-00 00:00:00'),
(212, 'churns well', 53, 4, 1, NULL, '2018-07-12 07:07:37', NULL, '0000-00-00 00:00:00'),
(213, 'Cannot stack back in the box', 54, 1, 1, NULL, '2018-07-12 07:15:00', NULL, '0000-00-00 00:00:00'),
(214, 'Randomly stack pcs, trial and error', 54, 2, 1, NULL, '2018-07-12 07:15:00', NULL, '0000-00-00 00:00:00'),
(215, 'Stack large-small with trial and error', 54, 3, 1, NULL, '2018-07-12 07:15:00', NULL, '0000-00-00 00:00:00'),
(216, 'Easily stack back all without errors', 54, 4, 1, NULL, '2018-07-12 07:15:00', NULL, '0000-00-00 00:00:00'),
(217, 'Removes the rings but cannot ut back', 55, 1, 1, NULL, '2018-07-12 07:30:49', NULL, '0000-00-00 00:00:00'),
(218, 'Removes rings puts back with difficulty', 55, 2, 1, NULL, '2018-07-12 07:30:49', NULL, '0000-00-00 00:00:00'),
(219, 'removes weel,puts back easily', 55, 3, 1, NULL, '2018-07-12 07:30:49', NULL, '0000-00-00 00:00:00'),
(220, 'Removes well, arrange neatly around the base,puts back well.', 55, 4, 1, NULL, '2018-07-12 07:30:49', NULL, '0000-00-00 00:00:00'),
(221, 'Cannot differentiate rough and smooth', 56, 1, 1, NULL, '2018-07-12 10:19:17', NULL, '0000-00-00 00:00:00'),
(222, 'Identifies correctly 2 out of 5 times', 56, 2, 1, NULL, '2018-07-12 10:19:17', NULL, '0000-00-00 00:00:00'),
(223, 'Correctly identifies any number of times', 56, 3, 1, NULL, '2018-07-12 10:19:17', NULL, '0000-00-00 00:00:00'),
(224, 'Identify any other Rough or smooth texture blindfold', 56, 4, 1, NULL, '2018-07-12 10:19:17', NULL, '0000-00-00 00:00:00'),
(225, 'Puts back few pieces with a lot of difficulty', 57, 1, 1, NULL, '2018-07-12 11:36:27', NULL, '0000-00-00 00:00:00'),
(226, 'Puts back all pieces with trial and error', 57, 2, 1, NULL, '2018-07-12 11:36:28', NULL, '0000-00-00 00:00:00'),
(227, 'Visualise and put back all pieces correctly', 57, 3, 1, NULL, '2018-07-12 11:36:28', NULL, '0000-00-00 00:00:00'),
(228, 'Places circles on printed paper(attached)', 57, 4, 1, NULL, '2018-07-12 11:36:28', NULL, '0000-00-00 00:00:00'),
(229, 'Cannot pair any pieces', 58, 1, 1, NULL, '2018-07-13 10:19:35', NULL, '0000-00-00 00:00:00'),
(230, 'Pairs 2-3 pairs with difficulty', 58, 2, 1, NULL, '2018-07-13 10:19:35', NULL, '0000-00-00 00:00:00'),
(231, 'Pairs at least 5 pairs fairly well', 58, 3, 1, NULL, '2018-07-13 10:19:35', NULL, '0000-00-00 00:00:00'),
(232, 'Pairs all 10 quickly and correctly', 58, 4, 1, NULL, '2018-07-13 10:19:35', NULL, '0000-00-00 00:00:00'),
(233, 'cannot identify animals', 59, 1, 1, NULL, '2018-07-13 11:15:51', NULL, '0000-00-00 00:00:00'),
(234, 'Identify 2-3 animals with mistakes', 59, 2, 1, NULL, '2018-07-13 11:15:51', NULL, '0000-00-00 00:00:00'),
(235, 'Identifies more than 5 animals correctly', 59, 3, 1, NULL, '2018-07-13 11:15:51', NULL, '0000-00-00 00:00:00'),
(236, 'Identify all wild animals in pictures correctly', 59, 4, 1, NULL, '2018-07-13 11:15:51', NULL, '0000-00-00 00:00:00'),
(237, 'Move the knob a bit', 60, 1, 1, NULL, '2018-07-13 11:19:10', NULL, '0000-00-00 00:00:00'),
(238, 'Moves the knob all the way with many stops', 60, 2, 1, NULL, '2018-07-13 11:19:10', NULL, '0000-00-00 00:00:00'),
(239, 'Move knob all the way,with few stops', 60, 3, 1, NULL, '2018-07-13 11:19:10', NULL, '0000-00-00 00:00:00'),
(240, 'Moves knob all the way smoothly without stops', 60, 4, 1, NULL, '2018-07-13 11:19:10', NULL, '0000-00-00 00:00:00'),
(241, 'Cannot roll clay', 61, 1, 1, NULL, '2018-07-13 11:22:01', NULL, '0000-00-00 00:00:00'),
(242, 'Rolls with difficulty', 61, 2, 1, NULL, '2018-07-13 11:22:01', NULL, '0000-00-00 00:00:00'),
(243, 'Rolls clay easily', 61, 3, 1, NULL, '2018-07-13 11:22:01', NULL, '0000-00-00 00:00:00'),
(244, 'Roll, make designs with clay,dough', 61, 4, 1, NULL, '2018-07-13 11:22:01', NULL, '0000-00-00 00:00:00'),
(245, 'Cannot pair colours', 62, 1, 1, NULL, '2018-07-13 11:30:38', NULL, '0000-00-00 00:00:00'),
(246, 'Pairs 2-4 sets with some difficulty', 62, 2, 1, NULL, '2018-07-13 11:30:38', NULL, '0000-00-00 00:00:00'),
(247, 'Pair accurately with trial and error', 62, 3, 1, NULL, '2018-07-13 11:30:38', NULL, '0000-00-00 00:00:00'),
(248, 'Instantly pairs all rods', 62, 4, 1, NULL, '2018-07-13 11:30:38', NULL, '0000-00-00 00:00:00'),
(249, 'Does not know', 63, 1, 1, NULL, '2018-07-13 11:33:05', NULL, '0000-00-00 00:00:00'),
(250, 'Knows some names', 63, 2, 1, NULL, '2018-07-13 11:33:05', NULL, '0000-00-00 00:00:00'),
(251, 'Knows all names', 63, 3, 1, NULL, '2018-07-13 11:33:05', NULL, '0000-00-00 00:00:00'),
(252, 'Knows exact sequence', 63, 4, 1, NULL, '2018-07-13 11:33:05', NULL, '0000-00-00 00:00:00'),
(253, 'Cannot put any pc back properly', 64, 1, 1, NULL, '2018-07-17 07:14:34', NULL, '0000-00-00 00:00:00'),
(254, 'Puts back with at least 3 trials', 64, 2, 1, NULL, '2018-07-17 07:14:34', NULL, '0000-00-00 00:00:00'),
(255, 'Puts back with 1-2 trials', 64, 3, 1, NULL, '2018-07-17 07:14:34', NULL, '0000-00-00 00:00:00'),
(256, 'Put back well with visual examintion', 64, 4, 1, NULL, '2018-07-17 07:14:34', NULL, '0000-00-00 00:00:00'),
(257, 'cannot identify parts', 65, 1, 1, NULL, '2018-07-18 07:18:55', NULL, '0000-00-00 00:00:00'),
(258, 'Identify many parts of the body', 65, 2, 1, NULL, '2018-07-18 07:18:55', NULL, '0000-00-00 00:00:00'),
(259, 'Identify all the parts of the body', 65, 3, 1, NULL, '2018-07-18 07:18:55', NULL, '0000-00-00 00:00:00'),
(260, 'Point to oneself or others,name all the parts of body', 65, 4, 1, NULL, '2018-07-18 07:18:55', NULL, '0000-00-00 00:00:00'),
(261, 'Cannot do', 66, 1, 1, NULL, '2018-07-18 07:22:00', NULL, '0000-00-00 00:00:00'),
(262, 'Puts the thread in,unable to pull out well', 66, 2, 1, NULL, '2018-07-18 07:22:00', NULL, '0000-00-00 00:00:00'),
(263, 'Puts thread in and out with some difficulty', 66, 3, 1, NULL, '2018-07-18 07:22:00', NULL, '0000-00-00 00:00:00'),
(264, 'Sews the button well', 66, 4, 1, NULL, '2018-07-18 07:22:00', NULL, '0000-00-00 00:00:00'),
(265, 'L1', 67, 1, 1, NULL, '2018-07-18 07:24:27', NULL, '0000-00-00 00:00:00'),
(266, 'L2', 67, 2, 1, NULL, '2018-07-18 07:24:27', NULL, '0000-00-00 00:00:00'),
(267, 'L3', 67, 3, 1, NULL, '2018-07-18 07:24:27', NULL, '0000-00-00 00:00:00'),
(268, 'L4', 67, 4, 1, NULL, '2018-07-18 07:24:27', NULL, '0000-00-00 00:00:00'),
(269, 'Cannot pour -Majority Spillage', 68, 1, 1, NULL, '2018-07-19 15:06:23', NULL, '0000-00-00 00:00:00'),
(270, 'Pours half the grains with quite some spillage ', 68, 2, 1, NULL, '2018-07-19 15:06:23', NULL, '0000-00-00 00:00:00'),
(271, 'Pours majority into 3 portions with some spillage ', 68, 3, 1, NULL, '2018-07-19 15:06:23', NULL, '0000-00-00 00:00:00'),
(272, 'Pours into 3 equal portions with hardly any spillage', 68, 4, 1, NULL, '2018-07-19 15:06:23', NULL, '0000-00-00 00:00:00'),
(273, 'Cannot make', 69, 1, 1, NULL, '2018-07-19 15:09:16', NULL, '0000-00-00 00:00:00'),
(274, 'Struggles ', 69, 2, 1, NULL, '2018-07-19 15:09:16', NULL, '0000-00-00 00:00:00'),
(275, 'Some difficulty ', 69, 3, 1, NULL, '2018-07-19 15:09:16', NULL, '0000-00-00 00:00:00'),
(276, 'Comfortably', 69, 4, 1, NULL, '2018-07-19 15:09:16', NULL, '0000-00-00 00:00:00'),
(277, 'Unable to name any', 70, 1, 1, NULL, '2018-07-19 15:12:00', NULL, '0000-00-00 00:00:00'),
(278, 'Names with error ', 70, 2, 1, NULL, '2018-07-19 15:12:00', NULL, '0000-00-00 00:00:00'),
(279, 'Names perfectly', 70, 3, 1, NULL, '2018-07-19 15:12:00', NULL, '0000-00-00 00:00:00'),
(280, 'Associates other objects with these shapes', 70, 4, 1, NULL, '2018-07-19 15:12:00', NULL, '0000-00-00 00:00:00'),
(281, 'Cannot stack back in the box ', 71, 1, 1, NULL, '2018-07-19 15:14:39', NULL, '0000-00-00 00:00:00'),
(282, 'Randomly stack pieces', 71, 2, 1, NULL, '2018-07-19 15:14:39', NULL, '0000-00-00 00:00:00'),
(283, 'Stack large - small with trial & error ', 71, 3, 1, NULL, '2018-07-19 15:14:39', NULL, '0000-00-00 00:00:00'),
(284, 'Smoothly stack all pcs back w/o error', 71, 4, 1, NULL, '2018-07-19 15:14:39', NULL, '0000-00-00 00:00:00'),
(285, 'Unfasten/ fasten with difficulty', 72, 1, 1, NULL, '2018-07-19 15:35:20', NULL, '0000-00-00 00:00:00'),
(286, 'Unfastens well, struggles to fasten ', 72, 2, 1, NULL, '2018-07-19 15:35:20', NULL, '0000-00-00 00:00:00'),
(287, 'Unfastens and fasten quite well', 72, 3, 1, NULL, '2018-07-19 15:35:20', NULL, '0000-00-00 00:00:00'),
(288, 'Fasten. unfasten dress with buttons', 72, 4, 1, NULL, '2018-07-19 15:35:20', NULL, '0000-00-00 00:00:00'),
(289, 'Unable to put pieces back', 73, 1, 1, NULL, '2018-07-19 15:38:21', NULL, '0000-00-00 00:00:00'),
(290, 'Puts back with trial and error ', 73, 2, 1, NULL, '2018-07-19 15:38:21', NULL, '0000-00-00 00:00:00'),
(291, 'Visually identify and puts back all ', 73, 3, 1, NULL, '2018-07-19 15:38:21', NULL, '0000-00-00 00:00:00'),
(292, 'Able to complete worksheet well', 73, 4, 1, NULL, '2018-07-19 15:38:21', NULL, '0000-00-00 00:00:00'),
(293, 'Puts bacK few pieces with alot of difficulty', 74, 1, 1, NULL, '2018-07-19 15:42:04', NULL, '0000-00-00 00:00:00'),
(294, 'Puts bacK all pieces with trialand error ', 74, 2, 1, NULL, '2018-07-19 15:42:04', NULL, '0000-00-00 00:00:00'),
(295, 'Visualise and put back all pieces correctly ', 74, 3, 1, NULL, '2018-07-19 15:42:04', NULL, '0000-00-00 00:00:00'),
(296, 'Places rectangles on printed paper (attached)', 74, 4, 1, NULL, '2018-07-19 15:42:04', NULL, '0000-00-00 00:00:00'),
(297, 'Cannot pair any pictures', 75, 1, 1, NULL, '2018-07-19 15:45:48', NULL, '0000-00-00 00:00:00'),
(298, 'Pairs 2-3 picture with difficulty ', 75, 2, 1, NULL, '2018-07-19 15:45:48', NULL, '0000-00-00 00:00:00'),
(299, 'Pairs at least 5 fairy well', 75, 3, 1, NULL, '2018-07-19 15:45:48', NULL, '0000-00-00 00:00:00'),
(300, 'Easily picK and choose, pair all 1O', 75, 4, 1, NULL, '2018-07-19 15:45:48', NULL, '0000-00-00 00:00:00'),
(301, 'Moves the knob a bit', 76, 1, 1, NULL, '2018-07-19 15:49:24', NULL, '0000-00-00 00:00:00'),
(302, 'Moves the knob all the way with many stops ', 76, 2, 1, NULL, '2018-07-19 15:49:24', NULL, '0000-00-00 00:00:00'),
(303, 'Move knob all the way, with few stops', 76, 3, 1, NULL, '2018-07-19 15:49:24', NULL, '0000-00-00 00:00:00'),
(304, 'Moves knob all the way smoothly without stops', 76, 4, 1, NULL, '2018-07-19 15:49:24', NULL, '0000-00-00 00:00:00'),
(305, 'Tries all the holes one by one', 77, 1, 1, NULL, '2018-07-19 15:51:15', NULL, '0000-00-00 00:00:00'),
(306, 'Tries the correct one or + 2 or - 2 most times', 77, 2, 1, NULL, '2018-07-19 15:51:15', NULL, '0000-00-00 00:00:00'),
(307, 'Tries the correct one or + 1 or - 1 all times ', 77, 3, 1, NULL, '2018-07-19 15:51:15', NULL, '0000-00-00 00:00:00'),
(308, 'Perfectly visualise and find the one it belongs to', 77, 4, 1, NULL, '2018-07-19 15:51:15', NULL, '0000-00-00 00:00:00'),
(309, 'Cannot taKe more than 3 steps', 78, 1, 1, NULL, '2018-07-19 15:53:29', NULL, '0000-00-00 00:00:00'),
(310, 'WalKs 5 - 6 steps on the beam ', 78, 2, 1, NULL, '2018-07-19 15:53:29', NULL, '0000-00-00 00:00:00'),
(311, 'WalKs end to end with 2 slips', 78, 3, 1, NULL, '2018-07-19 15:53:29', NULL, '0000-00-00 00:00:00'),
(312, 'Walks from 1 end -other with out falling', 78, 4, 1, NULL, '2018-07-19 15:53:29', NULL, '0000-00-00 00:00:00'),
(313, 'Cannot stack', 79, 1, 1, NULL, '2018-07-19 15:56:02', NULL, '0000-00-00 00:00:00'),
(314, 'Stacks with struggle', 79, 2, 1, NULL, '2018-07-19 15:56:02', NULL, '0000-00-00 00:00:00'),
(315, 'Stack fairly well without help', 79, 3, 1, NULL, '2018-07-19 15:56:02', NULL, '0000-00-00 00:00:00'),
(316, 'Stacks perfectly', 79, 4, 1, NULL, '2018-07-19 15:56:02', NULL, '0000-00-00 00:00:00'),
(317, 'unable to do', 80, 1, 1, NULL, '2018-07-19 16:41:29', NULL, '0000-00-00 00:00:00'),
(318, 'Does simple patterns with some difficulty', 80, 2, 1, NULL, '2018-07-19 16:41:29', NULL, '0000-00-00 00:00:00'),
(319, 'Does simple patterns complex with difficulty', 80, 3, 1, NULL, '2018-07-19 16:41:29', NULL, '0000-00-00 00:00:00'),
(320, 'Completes all complex patterns accurately', 80, 4, 1, NULL, '2018-07-19 16:41:29', NULL, '0000-00-00 00:00:00'),
(321, 'L1', 81, 1, 1, NULL, '2018-07-19 17:50:07', NULL, '0000-00-00 00:00:00'),
(322, 'L2', 81, 2, 1, NULL, '2018-07-19 17:50:07', NULL, '0000-00-00 00:00:00'),
(323, 'L3', 81, 3, 1, NULL, '2018-07-19 17:50:07', NULL, '0000-00-00 00:00:00'),
(324, 'L4', 81, 4, 1, NULL, '2018-07-19 17:50:07', NULL, '0000-00-00 00:00:00'),
(325, 'Unable to identify first or last sound', 82, 1, 1, NULL, '2018-07-20 06:36:43', NULL, '0000-00-00 00:00:00'),
(326, 'Identifies once told', 82, 2, 1, NULL, '2018-07-20 06:36:44', NULL, '0000-00-00 00:00:00'),
(327, 'Identifies independently for many words ', 82, 3, 1, NULL, '2018-07-20 06:36:44', NULL, '0000-00-00 00:00:00'),
(328, 'Identifies first or last sound for any word', 82, 4, 1, NULL, '2018-07-20 06:36:44', NULL, '0000-00-00 00:00:00'),
(329, 'Unable to stacK', 83, 1, 1, NULL, '2018-07-20 06:56:29', NULL, '0000-00-00 00:00:00'),
(330, 'Stacks the pieces with difficulty with errors', 83, 2, 1, NULL, '2018-07-20 06:56:29', NULL, '0000-00-00 00:00:00'),
(331, 'Stacks the pieces correctly with lot of trial and error ', 83, 3, 1, NULL, '2018-07-20 06:56:29', NULL, '0000-00-00 00:00:00'),
(332, 'Visualise and stacK perfectly without mistakes', 83, 4, 1, NULL, '2018-07-20 06:56:29', NULL, '0000-00-00 00:00:00'),
(333, 'Able to identify tall and short', 84, 1, 1, NULL, '2018-07-20 06:59:08', NULL, '0000-00-00 00:00:00'),
(334, 'Identify taller than', 84, 2, 1, NULL, '2018-07-20 06:59:08', NULL, '0000-00-00 00:00:00'),
(335, 'Identify shorter than ', 84, 3, 1, NULL, '2018-07-20 06:59:08', NULL, '0000-00-00 00:00:00'),
(336, 'Identify tallest,shortest', 84, 4, 1, NULL, '2018-07-20 06:59:08', NULL, '0000-00-00 00:00:00'),
(337, 'Tries all the holes one by one', 85, 1, 1, NULL, '2018-07-20 07:04:19', NULL, '0000-00-00 00:00:00'),
(338, 'Tries the correct one or + 2 or - 2 most times ', 85, 2, 1, NULL, '2018-07-20 07:04:19', NULL, '0000-00-00 00:00:00'),
(339, 'Tries the correct one or + 1or - 1 all times ', 85, 3, 1, NULL, '2018-07-20 07:04:19', NULL, '0000-00-00 00:00:00'),
(340, 'Perfectly visualise and find the one it belongs to', 85, 4, 1, NULL, '2018-07-20 07:04:19', NULL, '0000-00-00 00:00:00'),
(341, 'Unable to name any', 86, 1, 1, NULL, '2018-07-20 07:06:13', NULL, '0000-00-00 00:00:00'),
(342, 'Names 2-3 colours', 86, 2, 1, NULL, '2018-07-20 07:06:13', NULL, '0000-00-00 00:00:00'),
(343, 'Names more than 5 colours ', 86, 3, 1, NULL, '2018-07-20 07:06:13', NULL, '0000-00-00 00:00:00'),
(344, 'Names all correctly', 86, 4, 1, NULL, '2018-07-20 07:06:13', NULL, '0000-00-00 00:00:00'),
(345, 'Finds difficult to thread and does not persist', 87, 1, 1, NULL, '2018-07-20 07:22:34', NULL, '0000-00-00 00:00:00'),
(346, 'Persists. threads part of a board With some errors ', 87, 2, 1, NULL, '2018-07-20 07:22:34', NULL, '0000-00-00 00:00:00'),
(347, 'Thread one full board at a stretch', 87, 3, 1, NULL, '2018-07-20 07:22:34', NULL, '0000-00-00 00:00:00'),
(348, 'Thread 4 boards without missing almost any hole', 87, 4, 1, NULL, '2018-07-20 07:22:34', NULL, '0000-00-00 00:00:00'),
(349, 'Traces with difficulty', 88, 1, 1, NULL, '2018-07-20 07:32:58', NULL, '0000-00-00 00:00:00'),
(350, 'Traces and identifies few ', 88, 2, 1, NULL, '2018-07-20 07:32:58', NULL, '0000-00-00 00:00:00'),
(351, 'Traces and identifies many ', 88, 3, 1, NULL, '2018-07-20 07:32:58', NULL, '0000-00-00 00:00:00'),
(352, 'Traces and identifies all', 88, 4, 1, NULL, '2018-07-20 07:32:58', NULL, '0000-00-00 00:00:00'),
(353, 'Cannot hang clothes on rope', 89, 1, 1, NULL, '2018-07-20 08:58:26', NULL, '0000-00-00 00:00:00'),
(354, 'Hangs clothes,but cannot peg them ', 89, 2, 1, NULL, '2018-07-20 08:58:26', NULL, '0000-00-00 00:00:00'),
(355, 'Hangs, pegs most (Some may fall) ', 89, 3, 1, NULL, '2018-07-20 08:58:26', NULL, '0000-00-00 00:00:00'),
(356, 'Hangs the clothes and pegs them', 89, 4, 1, NULL, '2018-07-20 08:58:26', NULL, '0000-00-00 00:00:00'),
(357, 'Cannot pair the shapes', 90, 1, 1, NULL, '2018-07-20 09:01:05', NULL, '0000-00-00 00:00:00'),
(358, 'Pairs all with some difficulty ', 90, 2, 1, NULL, '2018-07-20 09:01:05', NULL, '0000-00-00 00:00:00'),
(359, 'Pairs all 5 comfortably', 90, 3, 1, NULL, '2018-07-20 09:01:05', NULL, '0000-00-00 00:00:00'),
(360, 'Pairs any 3D objects by grip and see', 90, 4, 1, NULL, '2018-07-20 09:01:05', NULL, '0000-00-00 00:00:00'),
(365, 'Moves the Knob a bit', 92, 1, 1, NULL, '2018-07-22 14:31:18', NULL, '0000-00-00 00:00:00'),
(366, 'Moves the Knob all the way wrth many stops ', 92, 2, 1, NULL, '2018-07-22 14:31:18', NULL, '0000-00-00 00:00:00'),
(367, 'Move knob all the way, with few stops', 92, 3, 1, NULL, '2018-07-22 14:31:18', NULL, '0000-00-00 00:00:00'),
(368, 'Moves knob all the way smoothly without stops', 92, 4, 1, NULL, '2018-07-22 14:31:18', NULL, '0000-00-00 00:00:00'),
(369, 'Cannot compare colurs and put bacK', 93, 1, 1, NULL, '2018-07-22 14:36:16', NULL, '0000-00-00 00:00:00'),
(370, 'Compare colours,put bacKs rods 1 to 5 with difficulty ', 93, 2, 1, NULL, '2018-07-22 14:36:16', NULL, '0000-00-00 00:00:00'),
(371, 'Put bacK 1-5 colours perfectly without errors', 93, 3, 1, NULL, '2018-07-22 14:36:16', NULL, '0000-00-00 00:00:00'),
(372, 'Puts bacK all the rods smoothly without errors', 93, 4, 1, NULL, '2018-07-22 14:36:16', NULL, '0000-00-00 00:00:00'),
(373, 'Cannot sieve', 94, 1, 1, NULL, '2018-07-22 14:55:35', NULL, '0000-00-00 00:00:00'),
(374, 'Holds the sieve and shaKe it with some difficulty ', 94, 2, 1, NULL, '2018-07-22 14:55:35', NULL, '0000-00-00 00:00:00'),
(375, 'Sieves miX1ure. pours material in box with spillage ', 94, 3, 1, NULL, '2018-07-22 14:55:35', NULL, '0000-00-00 00:00:00'),
(376, 'Sieves well, pours well', 94, 4, 1, NULL, '2018-07-22 14:55:35', NULL, '0000-00-00 00:00:00'),
(377, 'Cannot comprehend pretend play', 95, 1, 1, NULL, '2018-07-22 14:59:50', NULL, '0000-00-00 00:00:00'),
(378, 'Visualise when another child says \"Iam a doctor', 95, 2, 1, NULL, '2018-07-22 14:59:50', NULL, '0000-00-00 00:00:00'),
(379, 'Plays a gamewhere each child is a helper ', 95, 3, 1, NULL, '2018-07-22 14:59:50', NULL, '0000-00-00 00:00:00'),
(380, '· Translates the same to reallife', 95, 4, 1, NULL, '2018-07-22 14:59:50', NULL, '0000-00-00 00:00:00'),
(381, 'Removes inset,unable to remove the frame', 96, 1, 1, NULL, '2018-07-22 15:03:16', NULL, '0000-00-00 00:00:00'),
(382, 'Removes frames. may not put bacl< correctly. Matches with trials ', 96, 2, 1, NULL, '2018-07-22 15:03:16', NULL, '0000-00-00 00:00:00'),
(383, 'Removes frame well. places bacK frames correctly. Match wrth trials', 96, 3, 1, NULL, '2018-07-22 15:03:16', NULL, '0000-00-00 00:00:00'),
(384, 'Matches insets and frames quicl<ly without trials', 96, 4, 1, NULL, '2018-07-22 15:03:16', NULL, '0000-00-00 00:00:00'),
(385, 'Opens few, but cannot close', 97, 1, 1, NULL, '2018-07-22 15:05:05', NULL, '0000-00-00 00:00:00'),
(386, 'Opens and closes some ', 97, 2, 1, NULL, '2018-07-22 15:05:05', NULL, '0000-00-00 00:00:00'),
(387, 'Open and close all ', 97, 3, 1, NULL, '2018-07-22 15:05:05', NULL, '0000-00-00 00:00:00'),
(388, 'Open/close any bag /box', 97, 4, 1, NULL, '2018-07-22 15:05:05', NULL, '0000-00-00 00:00:00'),
(389, 'L1', 98, 1, 1, NULL, '2018-07-22 15:05:57', NULL, '0000-00-00 00:00:00'),
(390, 'L2', 98, 2, 1, NULL, '2018-07-22 15:05:57', NULL, '0000-00-00 00:00:00'),
(391, 'L3', 98, 3, 1, NULL, '2018-07-22 15:05:57', NULL, '0000-00-00 00:00:00'),
(392, 'L4', 98, 4, 1, NULL, '2018-07-22 15:05:57', NULL, '0000-00-00 00:00:00'),
(393, 'Unable to put bacK', 99, 1, 1, NULL, '2018-07-22 15:07:48', NULL, '0000-00-00 00:00:00'),
(394, 'Puts bacK few pieces with alot of difficulty ', 99, 2, 1, NULL, '2018-07-22 15:07:48', NULL, '0000-00-00 00:00:00'),
(395, 'Puts bacK all pieces with trialand error ', 99, 3, 1, NULL, '2018-07-22 15:07:48', NULL, '0000-00-00 00:00:00'),
(396, 'Visualise and put back all pieces correctly', 99, 4, 1, NULL, '2018-07-22 15:07:48', NULL, '0000-00-00 00:00:00'),
(397, 'Unable to say the sounds', 100, 1, 1, NULL, '2018-07-22 15:10:00', NULL, '0000-00-00 00:00:00'),
(398, 'Identifies and say one sound', 100, 2, 1, NULL, '2018-07-22 15:10:00', NULL, '0000-00-00 00:00:00'),
(399, 'Identify more than one sound in aword ', 100, 3, 1, NULL, '2018-07-22 15:10:00', NULL, '0000-00-00 00:00:00'),
(400, 'Identifies letter in a word', 100, 4, 1, NULL, '2018-07-22 15:10:00', NULL, '0000-00-00 00:00:00'),
(401, 'Unable to arrange', 101, 1, 1, NULL, '2018-07-22 17:08:07', NULL, '0000-00-00 00:00:00'),
(402, 'Arranges wrth some errors', 101, 2, 1, NULL, '2018-07-22 17:08:07', NULL, '0000-00-00 00:00:00'),
(403, 'Arranges correctly with trial and error ', 101, 3, 1, NULL, '2018-07-22 17:08:07', NULL, '0000-00-00 00:00:00'),
(404, 'Arranges easily', 101, 4, 1, NULL, '2018-07-22 17:08:07', NULL, '0000-00-00 00:00:00'),
(405, 'Cannot sort based on shape', 102, 1, 1, NULL, '2018-07-22 17:10:01', NULL, '0000-00-00 00:00:00'),
(406, 'Sorts most pieces, puts some pieces with difficulty ', 102, 2, 1, NULL, '2018-07-22 17:10:02', NULL, '0000-00-00 00:00:00'),
(407, 'Sorts perfectly, puts most pieces bacK easily', 102, 3, 1, NULL, '2018-07-22 17:10:02', NULL, '0000-00-00 00:00:00'),
(408, 'Sorts perfectly and puts all piece bacK smoothly', 102, 4, 1, NULL, '2018-07-22 17:10:02', NULL, '0000-00-00 00:00:00'),
(409, 'Stack with difficulty, not in order ', 103, 1, 1, NULL, '2018-07-22 17:20:32', NULL, '0000-00-00 00:00:00'),
(410, 'Stack well, mostly in order ', 103, 2, 1, NULL, '2018-07-22 17:20:32', NULL, '0000-00-00 00:00:00'),
(411, ' Visually Examine, stack', 103, 3, 1, NULL, '2018-07-22 17:20:32', NULL, '0000-00-00 00:00:00'),
(412, 'Stacks easily', 103, 4, 1, NULL, '2018-07-22 17:20:32', NULL, '0000-00-00 00:00:00'),
(413, 'Unfasten  fasten with difficulty', 104, 1, 1, NULL, '2018-07-22 17:22:44', NULL, '0000-00-00 00:00:00'),
(414, 'Unfastens well, struggles to fasten ', 104, 2, 1, NULL, '2018-07-22 17:22:44', NULL, '0000-00-00 00:00:00'),
(415, 'Unfastens and fasten quite well', 104, 3, 1, NULL, '2018-07-22 17:22:44', NULL, '0000-00-00 00:00:00'),
(416, 'Fasten. unfasten dress with buttons', 104, 4, 1, NULL, '2018-07-22 17:22:44', NULL, '0000-00-00 00:00:00'),
(417, 'Able to operate 1-2locks with difficulty', 105, 1, 1, NULL, '2018-07-22 17:25:16', NULL, '0000-00-00 00:00:00'),
(418, 'Unfastens and fastens all 1ocks with difficulty ', 105, 2, 1, NULL, '2018-07-22 17:25:16', NULL, '0000-00-00 00:00:00'),
(419, 'Unfastens and fastens all 1ocks easily ', 105, 3, 1, NULL, '2018-07-22 17:25:16', NULL, '0000-00-00 00:00:00'),
(420, 'Unfasten, fasten any door,window in the room', 105, 4, 1, NULL, '2018-07-22 17:25:16', NULL, '0000-00-00 00:00:00'),
(421, 'Moves the Knob a bit', 106, 1, 1, NULL, '2018-07-22 17:27:16', NULL, '0000-00-00 00:00:00'),
(422, 'Moves the Knob all the way with many stops ', 106, 2, 1, NULL, '2018-07-22 17:27:16', NULL, '0000-00-00 00:00:00'),
(423, 'Move Knob all the way, with few stops', 106, 3, 1, NULL, '2018-07-22 17:27:16', NULL, '0000-00-00 00:00:00'),
(424, 'Moves Knob all the way smoothly without stops', 106, 4, 1, NULL, '2018-07-22 17:27:16', NULL, '0000-00-00 00:00:00'),
(425, 'Unable to arrange', 107, 1, 1, NULL, '2018-07-22 17:30:32', NULL, '0000-00-00 00:00:00'),
(426, 'Arranges with some errors ', 107, 2, 1, NULL, '2018-07-22 17:30:32', NULL, '0000-00-00 00:00:00'),
(427, 'Arranges in order With trials ', 107, 3, 1, NULL, '2018-07-22 17:30:32', NULL, '0000-00-00 00:00:00'),
(428, 'Arranges perfectly without trials', 107, 4, 1, NULL, '2018-07-22 17:30:32', NULL, '0000-00-00 00:00:00'),
(429, 'Unable to match insets with cards ', 108, 1, 1, NULL, '2018-07-22 17:37:19', NULL, '0000-00-00 00:00:00'),
(430, 'Matches full and thick outlines with trials ', 108, 2, 1, NULL, '2018-07-22 17:37:19', NULL, '0000-00-00 00:00:00'),
(431, 'Matches half shapes easily', 108, 3, 1, NULL, '2018-07-22 17:37:19', NULL, '0000-00-00 00:00:00'),
(432, 'Matches all shapes easily without trials', 108, 4, 1, NULL, '2018-07-22 17:37:19', NULL, '0000-00-00 00:00:00'),
(433, 'Unable to identify any sound', 109, 1, 1, NULL, '2018-07-22 17:42:43', NULL, '0000-00-00 00:00:00'),
(434, 'Identifies either first or last sound ', 109, 2, 1, NULL, '2018-07-22 17:42:43', NULL, '0000-00-00 00:00:00'),
(435, 'Identifies both for many words', 109, 3, 1, NULL, '2018-07-22 17:42:43', NULL, '0000-00-00 00:00:00'),
(436, 'Identifies first and last sound for any word', 109, 4, 1, NULL, '2018-07-22 17:42:43', NULL, '0000-00-00 00:00:00'),
(437, 'Repeats the names', 110, 1, 1, NULL, '2018-07-22 17:45:35', NULL, '0000-00-00 00:00:00'),
(438, 'Sees the pictures and identifies the name', 110, 2, 1, NULL, '2018-07-22 17:45:35', NULL, '0000-00-00 00:00:00'),
(439, 'Senses the similar sound of the same vowel . Eg Hat,Tap, Bag ', 110, 3, 1, NULL, '2018-07-22 17:45:35', NULL, '0000-00-00 00:00:00'),
(440, 'Enjoys the rhythm of repeating vowels', 110, 4, 1, NULL, '2018-07-22 17:45:35', NULL, '0000-00-00 00:00:00'),
(441, 'Cannot match any', 111, 1, 1, NULL, '2018-07-23 07:13:36', NULL, '0000-00-00 00:00:00'),
(442, 'Matches a few common ones ', 111, 2, 1, NULL, '2018-07-23 07:13:36', NULL, '0000-00-00 00:00:00'),
(443, 'Matches many', 111, 3, 1, NULL, '2018-07-23 07:13:36', NULL, '0000-00-00 00:00:00'),
(444, 'Matches all sp and alp', 111, 4, 1, NULL, '2018-07-23 07:13:36', NULL, '0000-00-00 00:00:00'),
(445, 'Cannot pair any of the cards', 112, 1, 1, NULL, '2018-07-23 07:16:17', NULL, '0000-00-00 00:00:00'),
(446, 'Pairs 1-2 pairs', 112, 2, 1, NULL, '2018-07-23 07:16:17', NULL, '0000-00-00 00:00:00'),
(447, 'Pairs 3-4 pairs accurately ', 112, 3, 1, NULL, '2018-07-23 07:16:17', NULL, '0000-00-00 00:00:00'),
(448, 'Consistently pairs all 6 accurately', 112, 4, 1, NULL, '2018-07-23 07:16:17', NULL, '0000-00-00 00:00:00'),
(449, 'L1', 113, 1, 1, NULL, '2018-07-23 07:17:27', NULL, '0000-00-00 00:00:00'),
(450, 'L2', 113, 2, 1, NULL, '2018-07-23 07:17:28', NULL, '0000-00-00 00:00:00'),
(451, 'L3', 113, 3, 1, NULL, '2018-07-23 07:17:28', NULL, '0000-00-00 00:00:00'),
(452, 'L4', 113, 4, 1, NULL, '2018-07-23 07:17:28', NULL, '0000-00-00 00:00:00'),
(453, 'Identifies thicK,thin', 114, 1, 1, NULL, '2018-07-23 07:24:03', NULL, '0000-00-00 00:00:00'),
(454, 'Identifies thicKer than ', 114, 2, 1, NULL, '2018-07-23 07:24:03', NULL, '0000-00-00 00:00:00'),
(455, 'Identifies thinner than', 114, 3, 1, NULL, '2018-07-23 07:24:03', NULL, '0000-00-00 00:00:00'),
(456, 'Identifies thinnest. thicKer etc easily', 114, 4, 1, NULL, '2018-07-23 07:24:03', NULL, '0000-00-00 00:00:00'),
(457, 'Unable to match insets with cards', 115, 1, 1, NULL, '2018-07-23 07:35:33', NULL, '0000-00-00 00:00:00'),
(458, 'Matches full and thicK outlines with trials ', 115, 2, 1, NULL, '2018-07-23 07:35:34', NULL, '0000-00-00 00:00:00'),
(459, 'Matches thin outlines with trials', 115, 3, 1, NULL, '2018-07-23 07:35:34', NULL, '0000-00-00 00:00:00'),
(460, 'Matches all shapes easily without trials', 115, 4, 1, NULL, '2018-07-23 07:35:34', NULL, '0000-00-00 00:00:00'),
(461, 'Able to identify long, snort', 116, 1, 1, NULL, '2018-07-23 07:53:04', NULL, '0000-00-00 00:00:00'),
(462, 'Can identify taller than ', 116, 2, 1, NULL, '2018-07-23 07:53:04', NULL, '0000-00-00 00:00:00'),
(463, 'Identifies shorter than ', 116, 3, 1, NULL, '2018-07-23 07:53:04', NULL, '0000-00-00 00:00:00'),
(464, 'Identifies tallest, shortest', 116, 4, 1, NULL, '2018-07-23 07:53:04', NULL, '0000-00-00 00:00:00'),
(465, 'Beginner', 117, 1, 1, NULL, '2018-07-23 08:14:22', NULL, '0000-00-00 00:00:00'),
(466, 'Learner ', 117, 2, 1, NULL, '2018-07-23 08:14:22', NULL, '0000-00-00 00:00:00'),
(467, 'Practitioner', 117, 3, 1, NULL, '2018-07-23 08:14:22', NULL, '0000-00-00 00:00:00'),
(468, 'Scholar', 117, 4, 1, NULL, '2018-07-23 08:14:22', NULL, '0000-00-00 00:00:00'),
(469, 'Able to identify wide, narrow', 118, 1, 1, NULL, '2018-07-23 12:53:20', NULL, '0000-00-00 00:00:00'),
(470, 'Can identify wider than ', 118, 2, 1, NULL, '2018-07-23 12:53:20', NULL, '0000-00-00 00:00:00'),
(471, 'Identifies narrower than ', 118, 3, 1, NULL, '2018-07-23 12:53:20', NULL, '0000-00-00 00:00:00'),
(472, 'Identifies  widest,narrowest', 118, 4, 1, NULL, '2018-07-23 12:53:20', NULL, '0000-00-00 00:00:00'),
(473, 'Unable to comprehend', 119, 1, 1, NULL, '2018-07-23 12:55:54', NULL, '0000-00-00 00:00:00'),
(474, 'Repeats sounds to Keep nearing', 119, 2, 1, NULL, '2018-07-23 12:55:54', NULL, '0000-00-00 00:00:00');
INSERT INTO `t_activities_level` (`activity_level_id`, `step_title`, `activity_id`, `level_id`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(475, 'Understands the noises are different from each other ', 119, 3, 1, NULL, '2018-07-23 12:55:54', NULL, '0000-00-00 00:00:00'),
(476, 'Repeats the action with any other noise making device', 119, 4, 1, NULL, '2018-07-23 12:55:54', NULL, '0000-00-00 00:00:00'),
(477, 'Unable to arrange', 120, 1, 1, NULL, '2018-07-23 12:57:48', NULL, '0000-00-00 00:00:00'),
(478, 'Arranges with some errors ', 120, 2, 1, NULL, '2018-07-23 12:57:48', NULL, '0000-00-00 00:00:00'),
(479, 'Arranges in order With trials ', 120, 3, 1, NULL, '2018-07-23 12:57:48', NULL, '0000-00-00 00:00:00'),
(480, 'Arranges perfectly without trials', 120, 4, 1, NULL, '2018-07-23 12:57:48', NULL, '0000-00-00 00:00:00'),
(481, 'Cannot comprehend the colour change', 121, 1, 1, NULL, '2018-07-23 17:25:21', NULL, '0000-00-00 00:00:00'),
(482, 'Observe that something has changed', 121, 2, 1, NULL, '2018-07-23 17:25:21', NULL, '0000-00-00 00:00:00'),
(483, 'Points viewer to different things, observes colour ', 121, 3, 1, NULL, '2018-07-23 17:25:21', NULL, '0000-00-00 00:00:00'),
(484, 'Identify the old and new colour of the object', 121, 4, 1, NULL, '2018-07-23 17:25:21', NULL, '0000-00-00 00:00:00'),
(485, 'Unfasten I fasten wrth difficulty', 122, 1, 1, NULL, '2018-07-23 17:27:49', NULL, '0000-00-00 00:00:00'),
(486, 'Unfastens well, struggles to fasten ', 122, 2, 1, NULL, '2018-07-23 17:27:49', NULL, '0000-00-00 00:00:00'),
(487, 'Unfastens and fasten quite well', 122, 3, 1, NULL, '2018-07-23 17:27:49', NULL, '0000-00-00 00:00:00'),
(488, 'Fasten. unfasten dress with buttons', 122, 4, 1, NULL, '2018-07-23 17:27:49', NULL, '0000-00-00 00:00:00'),
(489, 'Beginner', 123, 1, 1, NULL, '2018-07-23 17:34:25', NULL, '0000-00-00 00:00:00'),
(490, 'Learner ', 123, 2, 1, NULL, '2018-07-23 17:34:26', NULL, '0000-00-00 00:00:00'),
(491, 'Practitioner', 123, 3, 1, NULL, '2018-07-23 17:34:26', NULL, '0000-00-00 00:00:00'),
(492, 'Scholar', 123, 4, 1, NULL, '2018-07-23 17:34:26', NULL, '0000-00-00 00:00:00'),
(493, 'Unable to pair correctly ', 124, 1, 1, NULL, '2018-07-24 06:58:33', NULL, '0000-00-00 00:00:00'),
(494, 'Pairs with some difficulty Pairs all ', 124, 2, 1, NULL, '2018-07-24 06:58:33', NULL, '0000-00-00 00:00:00'),
(495, ' perfectly easily', 124, 3, 1, NULL, '2018-07-24 06:58:33', NULL, '0000-00-00 00:00:00'),
(496, 'Can pair cards', 124, 4, 1, NULL, '2018-07-24 06:58:33', NULL, '0000-00-00 00:00:00'),
(497, 'Unable to understand', 125, 1, 1, NULL, '2018-07-24 07:05:14', NULL, '0000-00-00 00:00:00'),
(498, 'Creates sequences with errors ', 125, 2, 1, NULL, '2018-07-24 07:05:14', NULL, '0000-00-00 00:00:00'),
(499, 'Sequences all activities correctly', 125, 3, 1, NULL, '2018-07-24 07:05:14', NULL, '0000-00-00 00:00:00'),
(500, 'Understands there is a sequence in stories', 125, 4, 1, NULL, '2018-07-24 07:05:14', NULL, '0000-00-00 00:00:00'),
(501, 'Threads randomly', 126, 1, 1, NULL, '2018-07-24 07:08:13', NULL, '0000-00-00 00:00:00'),
(502, 'Threads an the borders in a uniform pattern ', 126, 2, 1, NULL, '2018-07-24 07:08:13', NULL, '0000-00-00 00:00:00'),
(503, 'Threads a simple design with centre hole ', 126, 3, 1, NULL, '2018-07-24 07:08:13', NULL, '0000-00-00 00:00:00'),
(504, 'Creates complex designs with centre hole', 126, 4, 1, NULL, '2018-07-24 07:08:13', NULL, '0000-00-00 00:00:00'),
(505, 'Cannot pair any of the cards', 127, 1, 1, NULL, '2018-07-24 07:10:52', NULL, '0000-00-00 00:00:00'),
(506, 'Pair a few simple ones ', 127, 2, 1, NULL, '2018-07-24 07:10:52', NULL, '0000-00-00 00:00:00'),
(507, 'Pair at least 7', 127, 3, 1, NULL, '2018-07-24 07:10:52', NULL, '0000-00-00 00:00:00'),
(508, 'Pair all easily', 127, 4, 1, NULL, '2018-07-24 07:10:52', NULL, '0000-00-00 00:00:00'),
(509, 'Remove pieces , but cannot put the pieces back', 128, 1, 1, NULL, '2018-07-24 07:13:28', NULL, '0000-00-00 00:00:00'),
(510, 'Puts back a couple of adjacent pieces, needs help ', 128, 2, 1, NULL, '2018-07-24 07:13:28', NULL, '0000-00-00 00:00:00'),
(511, 'Assemble the puzzle with a lot of trial and error ', 128, 3, 1, NULL, '2018-07-24 07:13:28', NULL, '0000-00-00 00:00:00'),
(512, 'Puts the puzzle together fairly fast and smoothly', 128, 4, 1, NULL, '2018-07-24 07:13:28', NULL, '0000-00-00 00:00:00'),
(513, 'Cannot name any', 129, 1, 1, NULL, '2018-07-24 07:18:15', NULL, '0000-00-00 00:00:00'),
(514, 'Names 2-3', 129, 2, 1, NULL, '2018-07-24 07:18:15', NULL, '0000-00-00 00:00:00'),
(515, 'Names all of them', 129, 3, 1, NULL, '2018-07-24 07:18:15', NULL, '0000-00-00 00:00:00'),
(516, 'Applies names to similar shapes', 129, 4, 1, NULL, '2018-07-24 07:18:15', NULL, '0000-00-00 00:00:00'),
(517, 'Draws outlines well. unable to colour', 130, 1, 1, NULL, '2018-07-24 07:33:08', NULL, '0000-00-00 00:00:00'),
(518, 'Colours shape- random stroKes, outside boundary ', 130, 2, 1, NULL, '2018-07-24 07:33:08', NULL, '0000-00-00 00:00:00'),
(519, 'Colours inside the outline With straight lines well ', 130, 3, 1, NULL, '2018-07-24 07:33:08', NULL, '0000-00-00 00:00:00'),
(520, 'Colours With neat stroKes close within boundary', 130, 4, 1, NULL, '2018-07-24 07:33:08', NULL, '0000-00-00 00:00:00'),
(521, 'L1', 131, 1, 1, NULL, '2018-07-24 07:55:38', NULL, '0000-00-00 00:00:00'),
(522, 'L2', 131, 2, 1, NULL, '2018-07-24 07:55:38', NULL, '0000-00-00 00:00:00'),
(523, 'L3', 131, 3, 1, NULL, '2018-07-24 07:55:38', NULL, '0000-00-00 00:00:00'),
(524, 'L4', 131, 4, 1, NULL, '2018-07-24 07:55:38', NULL, '0000-00-00 00:00:00'),
(525, 'Identifies tall, short', 132, 1, 1, NULL, '2018-07-24 07:57:11', NULL, '0000-00-00 00:00:00'),
(526, 'Identifies taller than ', 132, 2, 1, NULL, '2018-07-24 07:57:11', NULL, '0000-00-00 00:00:00'),
(527, 'Identifies shorter than', 132, 3, 1, NULL, '2018-07-24 07:57:11', NULL, '0000-00-00 00:00:00'),
(528, 'Identifies tallest, shorter etc easily', 132, 4, 1, NULL, '2018-07-24 07:57:11', NULL, '0000-00-00 00:00:00'),
(529, 'Unable to grate', 133, 1, 1, NULL, '2018-07-24 08:00:37', NULL, '0000-00-00 00:00:00'),
(530, 'Grates with difficulty', 133, 2, 1, NULL, '2018-07-24 08:00:37', NULL, '0000-00-00 00:00:00'),
(531, 'Grates soft pieces fairly well ', 133, 3, 1, NULL, '2018-07-24 08:00:37', NULL, '0000-00-00 00:00:00'),
(532, 'Grates raw carrot etc', 133, 4, 1, NULL, '2018-07-24 08:00:37', NULL, '0000-00-00 00:00:00'),
(533, 'Cannot find the odd one', 134, 1, 1, NULL, '2018-07-24 14:00:24', NULL, '0000-00-00 00:00:00'),
(534, ' Finds the odd one with trial& error ', 134, 2, 1, NULL, '2018-07-24 14:00:24', NULL, '0000-00-00 00:00:00'),
(535, 'Immediately spot the odd one', 134, 3, 1, NULL, '2018-07-24 14:00:24', NULL, '0000-00-00 00:00:00'),
(536, 'Able to identify any odd piece in geometry', 134, 4, 1, NULL, '2018-07-24 14:00:24', NULL, '0000-00-00 00:00:00'),
(537, 'Cannot grade', 135, 1, 1, NULL, '2018-07-24 14:02:25', NULL, '0000-00-00 00:00:00'),
(538, 'Grades with errors ', 135, 2, 1, NULL, '2018-07-24 14:02:25', NULL, '0000-00-00 00:00:00'),
(539, 'Grades with repeat trials ', 135, 3, 1, NULL, '2018-07-24 14:02:25', NULL, '0000-00-00 00:00:00'),
(540, 'Grades well immediately', 135, 4, 1, NULL, '2018-07-24 14:02:25', NULL, '0000-00-00 00:00:00'),
(541, 'Cannot stamp', 136, 1, 1, NULL, '2018-07-24 14:04:14', NULL, '0000-00-00 00:00:00'),
(542, 'Stamp feebly ', 136, 2, 1, NULL, '2018-07-24 14:04:14', NULL, '0000-00-00 00:00:00'),
(543, 'Stamp fairly well', 136, 3, 1, NULL, '2018-07-24 14:04:14', NULL, '0000-00-00 00:00:00'),
(544, 'Stamps very clearly', 136, 4, 1, NULL, '2018-07-24 14:04:14', NULL, '0000-00-00 00:00:00'),
(545, 'Unable to name quantity', 137, 1, 1, NULL, '2018-07-24 14:06:39', NULL, '0000-00-00 00:00:00'),
(546, 'Names 2-3', 137, 2, 1, NULL, '2018-07-24 14:06:40', NULL, '0000-00-00 00:00:00'),
(547, 'Names 5-7', 137, 3, 1, NULL, '2018-07-24 14:06:40', NULL, '0000-00-00 00:00:00'),
(548, 'Identifies all perfectly', 137, 4, 1, NULL, '2018-07-24 14:06:40', NULL, '0000-00-00 00:00:00'),
(549, 'Unable to set in columns ', 138, 1, 1, NULL, '2018-07-24 14:08:29', NULL, '0000-00-00 00:00:00'),
(550, 'Sets full and thick in ', 138, 2, 1, NULL, '2018-07-24 14:08:29', NULL, '0000-00-00 00:00:00'),
(551, ' line Sets all in line', 138, 3, 1, NULL, '2018-07-24 14:08:29', NULL, '0000-00-00 00:00:00'),
(552, 'Identifies any circle, square,triangle around him', 138, 4, 1, NULL, '2018-07-24 14:08:29', NULL, '0000-00-00 00:00:00'),
(553, 'Cannot make out differences', 139, 1, 1, NULL, '2018-07-24 14:11:36', NULL, '0000-00-00 00:00:00'),
(554, 'Sorts with lot of mix up ', 139, 2, 1, NULL, '2018-07-24 14:11:36', NULL, '0000-00-00 00:00:00'),
(555, 'Sorts with trial and error ', 139, 3, 1, NULL, '2018-07-24 14:11:36', NULL, '0000-00-00 00:00:00'),
(556, 'Sorts easily into 2 groups', 139, 4, 1, NULL, '2018-07-24 14:11:36', NULL, '0000-00-00 00:00:00'),
(557, 'Cannot attempt puzzle, gives up', 140, 1, 1, NULL, '2018-07-24 14:13:23', NULL, '0000-00-00 00:00:00'),
(558, 'Put 2-3 adjacent pieces together', 140, 2, 1, NULL, '2018-07-24 14:13:23', NULL, '0000-00-00 00:00:00'),
(559, 'Complete majority of the puzzle taking sometime ', 140, 3, 1, NULL, '2018-07-24 14:13:23', NULL, '0000-00-00 00:00:00'),
(560, 'Visualise and complete the puzzle easily', 140, 4, 1, NULL, '2018-07-24 14:13:23', NULL, '0000-00-00 00:00:00'),
(561, 'Cannot identify at all', 141, 1, 1, NULL, '2018-07-24 14:28:51', NULL, '0000-00-00 00:00:00'),
(562, 'Estimates with a lot of trial and error ', 141, 2, 1, NULL, '2018-07-24 14:28:51', NULL, '0000-00-00 00:00:00'),
(563, 'Estimates fairly well', 141, 3, 1, NULL, '2018-07-24 14:28:51', NULL, '0000-00-00 00:00:00'),
(564, 'Able to exactly identify the next size', 141, 4, 1, NULL, '2018-07-24 14:28:51', NULL, '0000-00-00 00:00:00'),
(565, 'Cannot sort colours', 142, 1, 1, NULL, '2018-07-24 14:35:07', NULL, '0000-00-00 00:00:00'),
(566, 'Sorts colours fairly well and thread them together ', 142, 2, 1, NULL, '2018-07-24 14:35:07', NULL, '0000-00-00 00:00:00'),
(567, 'Sorts almost perfectly,and threads well', 142, 3, 1, NULL, '2018-07-24 14:35:07', NULL, '0000-00-00 00:00:00'),
(568, 'Work in a group.Thread a colour in together', 142, 4, 1, NULL, '2018-07-24 14:35:07', NULL, '0000-00-00 00:00:00'),
(569, 'Brings correct back sometime', 143, 1, 1, NULL, '2018-07-24 14:38:48', NULL, '0000-00-00 00:00:00'),
(570, 'Brings back all pieces accurately', 143, 2, 1, NULL, '2018-07-24 14:38:48', NULL, '0000-00-00 00:00:00'),
(571, 'When Kept in diff places, brings after searching all places ', 143, 3, 1, NULL, '2018-07-24 14:38:48', NULL, '0000-00-00 00:00:00'),
(572, 'Brings back any piece when kept in different places', 143, 4, 1, NULL, '2018-07-24 14:38:48', NULL, '0000-00-00 00:00:00'),
(573, 'L1', 144, 1, 1, NULL, '2018-07-24 14:40:23', NULL, '0000-00-00 00:00:00'),
(574, 'L2', 144, 2, 1, NULL, '2018-07-24 14:40:23', NULL, '0000-00-00 00:00:00'),
(575, 'L3', 144, 3, 1, NULL, '2018-07-24 14:40:23', NULL, '0000-00-00 00:00:00'),
(576, 'L4', 144, 4, 1, NULL, '2018-07-24 14:40:23', NULL, '0000-00-00 00:00:00'),
(577, 'Unable to match insets with cards', 145, 1, 1, NULL, '2018-07-24 14:44:43', NULL, '0000-00-00 00:00:00'),
(578, 'Matches full and thicK outlines with trials ', 145, 2, 1, NULL, '2018-07-24 14:44:43', NULL, '0000-00-00 00:00:00'),
(579, 'Matches thin outlines with trials', 145, 3, 1, NULL, '2018-07-24 14:44:43', NULL, '0000-00-00 00:00:00'),
(580, 'Matches all shapes easily without trials', 145, 4, 1, NULL, '2018-07-24 14:44:43', NULL, '0000-00-00 00:00:00'),
(581, 'Unable to identify any sound', 146, 1, 1, NULL, '2018-07-24 14:49:47', NULL, '0000-00-00 00:00:00'),
(582, 'Identifies one sound for many words ', 146, 2, 1, NULL, '2018-07-24 14:49:47', NULL, '0000-00-00 00:00:00'),
(583, 'Identifies more than one sound for few words', 146, 3, 1, NULL, '2018-07-24 14:49:47', NULL, '0000-00-00 00:00:00'),
(584, 'Identifies independently for many words', 146, 4, 1, NULL, '2018-07-24 14:49:47', NULL, '0000-00-00 00:00:00'),
(585, 'Unable to pair', 147, 1, 1, NULL, '2018-07-24 14:52:19', NULL, '0000-00-00 00:00:00'),
(586, 'Pairs some ', 147, 2, 1, NULL, '2018-07-24 14:52:19', NULL, '0000-00-00 00:00:00'),
(587, 'Pairs many', 147, 3, 1, NULL, '2018-07-24 14:52:19', NULL, '0000-00-00 00:00:00'),
(588, 'Pairs arr shades of are colours', 147, 4, 1, NULL, '2018-07-24 14:52:19', NULL, '0000-00-00 00:00:00'),
(589, 'Unable to match the pictures ', 148, 1, 1, NULL, '2018-07-26 06:27:13', NULL, '0000-00-00 00:00:00'),
(590, 'Matches few picture parts ', 148, 2, 1, NULL, '2018-07-26 06:27:13', NULL, '0000-00-00 00:00:00'),
(591, 'Matches all pictures', 148, 3, 1, NULL, '2018-07-26 06:27:13', NULL, '0000-00-00 00:00:00'),
(592, 'Matches pictures and identifies name', 148, 4, 1, NULL, '2018-07-26 06:27:13', NULL, '0000-00-00 00:00:00'),
(593, 'Unable to find the corresponding pairs of prisms and add them to make the number 10', 149, 1, 1, NULL, '2018-07-26 06:34:11', NULL, '0000-00-00 00:00:00'),
(594, 'Finds the corresponding pairs of prisms and adds them to make the number 10 after a few attempts', 149, 2, 1, NULL, '2018-07-26 06:34:11', NULL, '0000-00-00 00:00:00'),
(595, ' Finds the corresponding pairs of prisms and adds them to make the number 10, correctly', 149, 3, 1, NULL, '2018-07-26 06:34:11', NULL, '0000-00-00 00:00:00'),
(596, 'Can add more than 2 prisms at one time', 149, 4, 1, NULL, '2018-07-26 06:34:11', NULL, '0000-00-00 00:00:00'),
(597, 'Unable to get number card', 150, 1, 1, NULL, '2018-07-26 06:37:47', NULL, '0000-00-00 00:00:00'),
(598, 'Finds number card with errors', 150, 2, 1, NULL, '2018-07-26 06:37:47', NULL, '0000-00-00 00:00:00'),
(599, 'Finds number card accurately with some trials ', 150, 3, 1, NULL, '2018-07-26 06:37:47', NULL, '0000-00-00 00:00:00'),
(600, 'Immediately gets correct number cards', 150, 4, 1, NULL, '2018-07-26 06:37:47', NULL, '0000-00-00 00:00:00'),
(601, 'Unable to pronounce/identify', 151, 1, 1, NULL, '2018-07-27 04:41:04', NULL, '0000-00-00 00:00:00'),
(602, 'Identifies and reads words containing ch ', 151, 2, 1, NULL, '2018-07-27 04:41:04', NULL, '0000-00-00 00:00:00'),
(603, 'Able to give words that contain ch', 151, 3, 1, NULL, '2018-07-27 04:41:04', NULL, '0000-00-00 00:00:00'),
(604, 'Hear words containing ch. writes/ spells accurately', 151, 4, 1, NULL, '2018-07-27 04:41:04', NULL, '0000-00-00 00:00:00'),
(605, 'Unable to find qty ', 152, 1, 1, NULL, '2018-07-27 04:42:56', NULL, '0000-00-00 00:00:00'),
(606, 'Finds qty with errors', 152, 2, 1, NULL, '2018-07-27 04:42:56', NULL, '0000-00-00 00:00:00'),
(607, 'Finds qty accurately with some trials ', 152, 3, 1, NULL, '2018-07-27 04:42:56', NULL, '0000-00-00 00:00:00'),
(608, 'Immediately gets correct qty', 152, 4, 1, NULL, '2018-07-27 04:42:56', NULL, '0000-00-00 00:00:00'),
(609, 'Things around the house', 153, 1, 1, NULL, '2018-07-27 04:47:38', NULL, '0000-00-00 00:00:00'),
(610, 'Names a few common ones', 153, 2, 1, NULL, '2018-07-27 04:47:38', NULL, '0000-00-00 00:00:00'),
(611, 'Names many objects around the house ', 153, 3, 1, NULL, '2018-07-27 04:47:38', NULL, '0000-00-00 00:00:00'),
(612, 'WorKsheet', 153, 4, 1, NULL, '2018-07-27 04:47:38', NULL, '0000-00-00 00:00:00'),
(613, 'Holds magnet', 154, 1, 1, NULL, '2018-07-27 04:57:45', NULL, '0000-00-00 00:00:00'),
(614, 'Holds the magnet,observe reaction', 154, 2, 1, NULL, '2018-07-27 04:57:45', NULL, '0000-00-00 00:00:00'),
(615, 'Holds magnet near diff items. observes ', 154, 3, 1, NULL, '2018-07-27 04:57:45', NULL, '0000-00-00 00:00:00'),
(616, 'Identifies magnetic and non-magnetic objects', 154, 4, 1, NULL, '2018-07-27 04:57:45', NULL, '0000-00-00 00:00:00'),
(617, 'L1', 155, 1, 1, NULL, '2018-07-27 04:58:41', NULL, '0000-00-00 00:00:00'),
(618, 'L2', 155, 2, 1, NULL, '2018-07-27 04:58:41', NULL, '0000-00-00 00:00:00'),
(619, 'L3', 155, 3, 1, NULL, '2018-07-27 04:58:41', NULL, '0000-00-00 00:00:00'),
(620, 'L4', 155, 4, 1, NULL, '2018-07-27 04:58:41', NULL, '0000-00-00 00:00:00'),
(621, 'Unable to read the words on the cards and unable to match them to the objects', 156, 1, 1, NULL, '2018-07-27 05:01:03', NULL, '0000-00-00 00:00:00'),
(622, 'Can read the words on the cards after some attempts and can match them to the objects with few errors', 156, 2, 1, NULL, '2018-07-27 05:01:03', NULL, '0000-00-00 00:00:00'),
(623, 'Can read the words on the cards accurately and match them to the objects', 156, 3, 1, NULL, '2018-07-27 05:01:03', NULL, '0000-00-00 00:00:00'),
(624, 'Can read the word cards and match them to the objects.He/she rooks at an object and finds the corresponding cards', 156, 4, 1, NULL, '2018-07-27 05:01:03', NULL, '0000-00-00 00:00:00'),
(625, 'Unable to place the insets ', 157, 1, 1, NULL, '2018-07-27 05:03:51', NULL, '0000-00-00 00:00:00'),
(626, 'Places the insets', 157, 2, 1, NULL, '2018-07-27 05:03:51', NULL, '0000-00-00 00:00:00'),
(627, 'Correctly places the insets', 157, 3, 1, NULL, '2018-07-27 05:03:51', NULL, '0000-00-00 00:00:00'),
(628, 'Places the insets in the correct order', 157, 4, 1, NULL, '2018-07-27 05:03:51', NULL, '0000-00-00 00:00:00'),
(629, 'Unable to comprehend CH', 158, 1, 1, NULL, '2018-07-27 05:12:55', NULL, '0000-00-00 00:00:00'),
(630, 'Identifies common helpers, tools ', 158, 2, 1, NULL, '2018-07-27 05:12:55', NULL, '0000-00-00 00:00:00'),
(631, 'Pairs all CH with tools', 158, 3, 1, NULL, '2018-07-27 05:12:55', NULL, '0000-00-00 00:00:00'),
(632, 'Can talk about how the CH uses his tool', 158, 4, 1, NULL, '2018-07-27 05:12:55', NULL, '0000-00-00 00:00:00'),
(633, 'Does not notice \"points\" on shape ', 159, 1, 1, NULL, '2018-07-27 05:14:21', NULL, '0000-00-00 00:00:00'),
(634, 'Notices different shapes are formed', 159, 2, 1, NULL, '2018-07-27 05:14:21', NULL, '0000-00-00 00:00:00'),
(635, 'Notice some connection btw points, shape ', 159, 3, 1, NULL, '2018-07-27 05:14:21', NULL, '0000-00-00 00:00:00'),
(636, 'Traces each shape joining the 3, 4, 5.. Points', 159, 4, 1, NULL, '2018-07-27 05:14:21', NULL, '0000-00-00 00:00:00'),
(637, 'Unable to read', 160, 1, 1, NULL, '2018-07-27 05:18:48', NULL, '0000-00-00 00:00:00'),
(638, 'Able to read with some errors ', 160, 2, 1, NULL, '2018-07-27 05:18:48', NULL, '0000-00-00 00:00:00'),
(639, 'Able to read all words well', 160, 3, 1, NULL, '2018-07-27 05:18:48', NULL, '0000-00-00 00:00:00'),
(640, 'Reads / words 3 letters -any context', 160, 4, 1, NULL, '2018-07-27 05:18:48', NULL, '0000-00-00 00:00:00'),
(641, 'Unable to understand', 161, 1, 1, NULL, '2018-07-27 05:22:10', NULL, '0000-00-00 00:00:00'),
(642, 'Able to identify land and water', 161, 2, 1, NULL, '2018-07-27 05:22:10', NULL, '0000-00-00 00:00:00'),
(643, 'When pointed, says Ocean/ continent ', 161, 3, 1, NULL, '2018-07-27 05:22:10', NULL, '0000-00-00 00:00:00'),
(644, 'Points out to all continents, oceans', 161, 4, 1, NULL, '2018-07-27 05:22:10', NULL, '0000-00-00 00:00:00'),
(645, 'Unable to match the pictures', 162, 1, 1, NULL, '2018-07-27 05:53:13', NULL, '0000-00-00 00:00:00'),
(646, 'Matches few picture parts ', 162, 2, 1, NULL, '2018-07-27 05:53:13', NULL, '0000-00-00 00:00:00'),
(647, 'Matches all pictures', 162, 3, 1, NULL, '2018-07-27 05:53:13', NULL, '0000-00-00 00:00:00'),
(648, 'Matches pictures and identifies name', 162, 4, 1, NULL, '2018-07-27 05:53:13', NULL, '0000-00-00 00:00:00'),
(649, 'Cannot find the corresponding pair', 163, 1, 1, NULL, '2018-07-27 05:57:10', NULL, '0000-00-00 00:00:00'),
(650, 'Finds corresponding pair with trials', 163, 2, 1, NULL, '2018-07-27 05:57:10', NULL, '0000-00-00 00:00:00'),
(651, 'Finds the pair immediately for all', 163, 3, 1, NULL, '2018-07-27 05:57:10', NULL, '0000-00-00 00:00:00'),
(652, 'Translates on paper', 163, 4, 1, NULL, '2018-07-27 05:57:10', NULL, '0000-00-00 00:00:00'),
(653, 'L1', 164, 1, 1, NULL, '2018-07-27 05:58:41', NULL, '0000-00-00 00:00:00'),
(654, 'L2', 164, 2, 1, NULL, '2018-07-27 05:58:41', NULL, '0000-00-00 00:00:00'),
(655, 'L3', 164, 3, 1, NULL, '2018-07-27 05:58:41', NULL, '0000-00-00 00:00:00'),
(656, 'L4', 164, 4, 1, NULL, '2018-07-27 05:58:41', NULL, '0000-00-00 00:00:00'),
(657, 'Puts pcs on board. identifies 1-2', 165, 1, 1, NULL, '2018-07-27 06:02:26', NULL, '0000-00-00 00:00:00'),
(658, 'Identifies some of the public places ', 165, 2, 1, NULL, '2018-07-27 06:02:26', NULL, '0000-00-00 00:00:00'),
(659, 'Identifies all the public places', 165, 3, 1, NULL, '2018-07-27 06:02:26', NULL, '0000-00-00 00:00:00'),
(660, 'Describes things found in the places from the picture', 165, 4, 1, NULL, '2018-07-27 06:02:26', NULL, '0000-00-00 00:00:00'),
(661, 'Unable to pronounce/identify', 166, 1, 1, NULL, '2018-07-27 06:13:52', NULL, '0000-00-00 00:00:00'),
(662, 'Identifies and reads words containing ph ', 166, 2, 1, NULL, '2018-07-27 06:13:52', NULL, '0000-00-00 00:00:00'),
(663, 'Able to give words that contain ph', 166, 3, 1, NULL, '2018-07-27 06:13:52', NULL, '0000-00-00 00:00:00'),
(664, 'Hear words containing ph writes/ spells accurately', 166, 4, 1, NULL, '2018-07-27 06:13:52', NULL, '0000-00-00 00:00:00'),
(665, 'Unable to pronounce/identify', 167, 1, 1, NULL, '2018-07-27 06:18:48', NULL, '0000-00-00 00:00:00'),
(666, 'Identifies and reads words containing wh ', 167, 2, 1, NULL, '2018-07-27 06:18:48', NULL, '0000-00-00 00:00:00'),
(667, 'Able to give words that contain wh', 167, 3, 1, NULL, '2018-07-27 06:18:48', NULL, '0000-00-00 00:00:00'),
(668, 'Hear words containing wh writes/ spells accurately', 167, 4, 1, NULL, '2018-07-27 06:18:48', NULL, '0000-00-00 00:00:00'),
(669, 'Unable to pronounce/identify', 168, 1, 1, NULL, '2018-07-27 06:35:40', NULL, '0000-00-00 00:00:00'),
(670, 'Identifies and reads words containing sh', 168, 2, 1, NULL, '2018-07-27 06:35:40', NULL, '0000-00-00 00:00:00'),
(671, 'Able to give words that contain sh', 168, 3, 1, NULL, '2018-07-27 06:35:40', NULL, '0000-00-00 00:00:00'),
(672, 'Hear words containing sh.writes/ spells accurately', 168, 4, 1, NULL, '2018-07-27 06:35:40', NULL, '0000-00-00 00:00:00'),
(673, 'Unable to pronounce/identify', 169, 1, 1, NULL, '2018-07-27 06:38:22', NULL, '0000-00-00 00:00:00'),
(674, 'Identifies and reads words containing th', 169, 2, 1, NULL, '2018-07-27 06:38:22', NULL, '0000-00-00 00:00:00'),
(675, 'Able to give words that contain th', 169, 3, 1, NULL, '2018-07-27 06:38:22', NULL, '0000-00-00 00:00:00'),
(676, 'Hear words containing th,writes/ spells accurately', 169, 4, 1, NULL, '2018-07-27 06:38:22', NULL, '0000-00-00 00:00:00'),
(677, 'Unable to pronounce/identify', 170, 1, 1, NULL, '2018-07-27 07:02:48', NULL, '0000-00-00 00:00:00'),
(678, 'Identifies and reads words containing qu ', 170, 2, 1, NULL, '2018-07-27 07:02:48', NULL, '0000-00-00 00:00:00'),
(679, 'Able to give words that contain qu', 170, 3, 1, NULL, '2018-07-27 07:02:48', NULL, '0000-00-00 00:00:00'),
(680, 'Hear words containing qu writes/ spells accurately', 170, 4, 1, NULL, '2018-07-27 07:02:48', NULL, '0000-00-00 00:00:00'),
(681, 'Unable to get the right slab', 171, 1, 1, NULL, '2018-07-27 07:04:57', NULL, '0000-00-00 00:00:00'),
(682, 'Gets right slab With trials ', 171, 2, 1, NULL, '2018-07-27 07:04:57', NULL, '0000-00-00 00:00:00'),
(683, 'Gets the exact right slab', 171, 3, 1, NULL, '2018-07-27 07:04:57', NULL, '0000-00-00 00:00:00'),
(684, 'Gets the right slab from the right location', 171, 4, 1, NULL, '2018-07-27 07:04:57', NULL, '0000-00-00 00:00:00'),
(685, 'Cannot Identify', 172, 1, 1, NULL, '2018-07-27 07:13:47', NULL, '0000-00-00 00:00:00'),
(686, 'Identify N and S ', 172, 2, 1, NULL, '2018-07-27 07:13:47', NULL, '0000-00-00 00:00:00'),
(687, 'Identifies N, s , E, w ', 172, 3, 1, NULL, '2018-07-27 07:13:47', NULL, '0000-00-00 00:00:00'),
(688, 'Identifies all 8 directions', 172, 4, 1, NULL, '2018-07-27 07:13:47', NULL, '0000-00-00 00:00:00'),
(689, 'Cannot split', 173, 1, 1, NULL, '2018-07-27 07:15:26', NULL, '0000-00-00 00:00:00'),
(690, 'Splits With some errors', 173, 2, 1, NULL, '2018-07-27 07:15:26', NULL, '0000-00-00 00:00:00'),
(691, 'Splits number accurately always ', 173, 3, 1, NULL, '2018-07-27 07:15:26', NULL, '0000-00-00 00:00:00'),
(692, 'Identifies place value of the number', 173, 4, 1, NULL, '2018-07-27 07:15:26', NULL, '0000-00-00 00:00:00'),
(693, 'Unable to match the pictures', 174, 1, 1, NULL, '2018-07-27 07:17:24', NULL, '0000-00-00 00:00:00'),
(694, 'Matches few picture parts ', 174, 2, 1, NULL, '2018-07-27 07:17:24', NULL, '0000-00-00 00:00:00'),
(695, 'Matches all pictures', 174, 3, 1, NULL, '2018-07-27 07:17:24', NULL, '0000-00-00 00:00:00'),
(696, 'Matches pictures and identifies name', 174, 4, 1, NULL, '2018-07-27 07:17:24', NULL, '0000-00-00 00:00:00'),
(697, 'Unable to name any', 175, 1, 1, NULL, '2018-07-27 07:18:42', NULL, '0000-00-00 00:00:00'),
(698, 'Names a few birds ', 175, 2, 1, NULL, '2018-07-27 07:18:42', NULL, '0000-00-00 00:00:00'),
(699, 'Names many birds ', 175, 3, 1, NULL, '2018-07-27 07:18:42', NULL, '0000-00-00 00:00:00'),
(700, 'Points to bird and names', 175, 4, 1, NULL, '2018-07-27 07:18:42', NULL, '0000-00-00 00:00:00'),
(701, 'Cannot follow multiple counting processes', 176, 1, 1, NULL, '2018-07-27 07:26:32', NULL, '0000-00-00 00:00:00'),
(702, 'Translates quantity to number with difficulty and errors ', 176, 2, 1, NULL, '2018-07-27 07:26:32', NULL, '0000-00-00 00:00:00'),
(703, 'Translates quantity to 4 digit num fairly well', 176, 3, 1, NULL, '2018-07-27 07:26:32', NULL, '0000-00-00 00:00:00'),
(704, 'Translates a series of quantity to number without errors', 176, 4, 1, NULL, '2018-07-27 07:26:32', NULL, '0000-00-00 00:00:00'),
(705, 'Unable to select the right arrow ', 177, 1, 1, NULL, '2018-07-27 07:28:15', NULL, '0000-00-00 00:00:00'),
(706, 'Selects right arrow for num with trials', 177, 2, 1, NULL, '2018-07-27 07:28:15', NULL, '0000-00-00 00:00:00'),
(707, 'Always selects right arrow given a number ', 177, 3, 1, NULL, '2018-07-27 07:28:15', NULL, '0000-00-00 00:00:00'),
(708, 'Draws an arrow on paper to indicate quantity', 177, 4, 1, NULL, '2018-07-27 07:28:15', NULL, '0000-00-00 00:00:00'),
(709, 'Unable to pronounce', 178, 1, 1, NULL, '2018-07-27 07:31:17', NULL, '0000-00-00 00:00:00'),
(710, 'Identifies and says oo, ee', 178, 2, 1, NULL, '2018-07-27 07:31:17', NULL, '0000-00-00 00:00:00'),
(711, 'Identifies words that contain oo. ee ', 178, 3, 1, NULL, '2018-07-27 07:31:17', NULL, '0000-00-00 00:00:00'),
(712, 'Spells words with oo,ee', 178, 4, 1, NULL, '2018-07-27 07:31:17', NULL, '0000-00-00 00:00:00'),
(713, 'Matches simple ones with objects only', 179, 1, 1, NULL, '2018-07-27 07:33:38', NULL, '0000-00-00 00:00:00'),
(714, 'Matches simple ones with objects and cards. uses few preposttions', 179, 2, 1, NULL, '2018-07-27 07:33:38', NULL, '0000-00-00 00:00:00'),
(715, 'Matches many with objects and cards, uses well in sentences', 179, 3, 1, NULL, '2018-07-27 07:33:38', NULL, '0000-00-00 00:00:00'),
(716, 'Identifies all with objects and cards', 179, 4, 1, NULL, '2018-07-27 07:33:38', NULL, '0000-00-00 00:00:00'),
(717, 'Unable to match the pictures ', 180, 1, 1, NULL, '2018-07-27 07:36:48', NULL, '0000-00-00 00:00:00'),
(718, 'Matches few picture parts ', 180, 2, 1, NULL, '2018-07-27 07:36:48', NULL, '0000-00-00 00:00:00'),
(719, 'Matches all pictures', 180, 3, 1, NULL, '2018-07-27 07:36:48', NULL, '0000-00-00 00:00:00'),
(720, 'Matches pictures and identifies name', 180, 4, 1, NULL, '2018-07-27 07:36:48', NULL, '0000-00-00 00:00:00'),
(721, 'Does not know where to pour', 181, 1, 1, NULL, '2018-07-27 08:40:07', NULL, '0000-00-00 00:00:00'),
(722, 'Fills water in the blue spaces', 181, 2, 1, NULL, '2018-07-27 08:40:07', NULL, '0000-00-00 00:00:00'),
(723, 'Identifies areas as oceans and continents ', 181, 3, 1, NULL, '2018-07-27 08:40:07', NULL, '0000-00-00 00:00:00'),
(724, 'Understands continent island and ocean is water', 181, 4, 1, NULL, '2018-07-27 08:40:07', NULL, '0000-00-00 00:00:00'),
(725, 'Unable to break blend words ', 182, 1, 1, NULL, '2018-07-27 08:42:09', NULL, '0000-00-00 00:00:00'),
(726, 'Breaks some blends into sounds', 182, 2, 1, NULL, '2018-07-27 08:42:09', NULL, '0000-00-00 00:00:00'),
(727, 'Forms some blend words', 182, 3, 1, NULL, '2018-07-27 08:42:09', NULL, '0000-00-00 00:00:00'),
(728, 'Forms many blend words', 182, 4, 1, NULL, '2018-07-27 08:42:09', NULL, '0000-00-00 00:00:00'),
(729, 'L1', 183, 1, 1, NULL, '2018-07-27 08:44:42', NULL, '0000-00-00 00:00:00'),
(730, 'L2', 183, 2, 1, NULL, '2018-07-27 08:44:42', NULL, '0000-00-00 00:00:00'),
(731, 'L3', 183, 3, 1, NULL, '2018-07-27 08:44:42', NULL, '0000-00-00 00:00:00'),
(732, 'L4', 183, 4, 1, NULL, '2018-07-27 08:44:42', NULL, '0000-00-00 00:00:00'),
(733, 'Unable to pronounce identify', 184, 1, 1, NULL, '2018-07-27 08:50:12', NULL, '0000-00-00 00:00:00'),
(734, 'Identifies and reads words containing oo', 184, 2, 1, NULL, '2018-07-27 08:50:12', NULL, '0000-00-00 00:00:00'),
(735, 'Able to give words that contain oo', 184, 3, 1, NULL, '2018-07-27 08:50:12', NULL, '0000-00-00 00:00:00'),
(736, 'Hear words containing oo writes/ spells accurately', 184, 4, 1, NULL, '2018-07-27 08:50:12', NULL, '0000-00-00 00:00:00'),
(737, 'Unable to add', 185, 1, 1, NULL, '2018-07-27 17:08:15', NULL, '0000-00-00 00:00:00'),
(738, 'Adds smaller qty< 5 accurately ', 185, 2, 1, NULL, '2018-07-27 17:08:15', NULL, '0000-00-00 00:00:00'),
(739, 'Add quantities >5 accurately', 185, 3, 1, NULL, '2018-07-27 17:08:15', NULL, '0000-00-00 00:00:00'),
(740, 'Accurately add all qty between 1 and 10', 185, 4, 1, NULL, '2018-07-27 17:08:15', NULL, '0000-00-00 00:00:00'),
(741, 'Unable to understand', 186, 1, 1, NULL, '2018-07-27 17:09:24', NULL, '0000-00-00 00:00:00'),
(742, 'Expresses man was like a monkey ', 186, 2, 1, NULL, '2018-07-27 17:09:24', NULL, '0000-00-00 00:00:00'),
(743, 'Express man had several changes ', 186, 3, 1, NULL, '2018-07-27 17:09:24', NULL, '0000-00-00 00:00:00'),
(744, 'Identifies stages of man\'s evolution  ', 186, 4, 1, NULL, '2018-07-27 17:09:24', NULL, '0000-00-00 00:00:00'),
(745, 'Unable to match the pictures', 187, 1, 1, NULL, '2018-07-27 17:11:41', NULL, '0000-00-00 00:00:00'),
(746, 'Matches few picture parts ', 187, 2, 1, NULL, '2018-07-27 17:11:41', NULL, '0000-00-00 00:00:00'),
(747, 'Matches all pictures', 187, 3, 1, NULL, '2018-07-27 17:11:41', NULL, '0000-00-00 00:00:00'),
(748, 'Matches pictures and identifies name', 187, 4, 1, NULL, '2018-07-27 17:11:41', NULL, '0000-00-00 00:00:00'),
(749, 'Unable to match the pictures', 188, 1, 1, NULL, '2018-07-27 17:13:25', NULL, '0000-00-00 00:00:00'),
(750, 'Matches few picture parts ', 188, 2, 1, NULL, '2018-07-27 17:13:25', NULL, '0000-00-00 00:00:00'),
(751, 'Matches all pictures', 188, 3, 1, NULL, '2018-07-27 17:13:25', NULL, '0000-00-00 00:00:00'),
(752, 'Matches pictures and identifies name', 188, 4, 1, NULL, '2018-07-27 17:13:25', NULL, '0000-00-00 00:00:00'),
(753, 'Unable to do the activity', 189, 1, 1, NULL, '2018-07-27 17:16:40', NULL, '0000-00-00 00:00:00'),
(754, 'Does inside one with 2 shapes', 189, 2, 1, NULL, '2018-07-27 17:16:40', NULL, '0000-00-00 00:00:00'),
(755, 'identifies inside one with 2 shapes perfectly ', 189, 3, 1, NULL, '2018-07-27 17:16:40', NULL, '0000-00-00 00:00:00'),
(756, 'Draw insert concentric of 2 shapes on paper', 189, 4, 1, NULL, '2018-07-27 17:16:40', NULL, '0000-00-00 00:00:00'),
(757, 'Unable to understand', 190, 1, 1, NULL, '2018-07-27 17:19:45', NULL, '0000-00-00 00:00:00'),
(758, 'Identifies names like month and week ', 190, 2, 1, NULL, '2018-07-27 17:19:45', NULL, '0000-00-00 00:00:00'),
(759, 'Count number of days in week/month', 190, 3, 1, NULL, '2018-07-27 17:19:45', NULL, '0000-00-00 00:00:00'),
(760, 'Says how many days in a week, month and the names', 190, 4, 1, NULL, '2018-07-27 17:19:45', NULL, '0000-00-00 00:00:00'),
(761, 'Unable to understand', 191, 1, 1, NULL, '2018-07-27 17:21:35', NULL, '0000-00-00 00:00:00'),
(762, 'Follow words end with same sound ', 191, 2, 1, NULL, '2018-07-27 17:21:35', NULL, '0000-00-00 00:00:00'),
(763, 'Able to match the rhyming words', 191, 3, 1, NULL, '2018-07-27 17:21:35', NULL, '0000-00-00 00:00:00'),
(764, 'Able to match and say the rhyming words', 191, 4, 1, NULL, '2018-07-27 17:21:35', NULL, '0000-00-00 00:00:00'),
(765, 'Unable to match the pictures', 192, 1, 1, NULL, '2018-07-27 17:24:44', NULL, '0000-00-00 00:00:00'),
(766, 'Matches few picture parts ', 192, 2, 1, NULL, '2018-07-27 17:24:44', NULL, '0000-00-00 00:00:00'),
(767, 'Matches all pictures', 192, 3, 1, NULL, '2018-07-27 17:24:44', NULL, '0000-00-00 00:00:00'),
(768, 'Matches pictures and identifies name', 192, 4, 1, NULL, '2018-07-27 17:24:44', NULL, '0000-00-00 00:00:00'),
(769, 'Unable to identify', 193, 1, 1, NULL, '2018-07-27 17:26:35', NULL, '0000-00-00 00:00:00'),
(770, 'Identifies 1-2 names after few attempts ', 193, 2, 1, NULL, '2018-07-27 17:26:35', NULL, '0000-00-00 00:00:00'),
(771, 'Identifies the names after few attempts ', 193, 3, 1, NULL, '2018-07-27 17:26:35', NULL, '0000-00-00 00:00:00'),
(772, 'Identifies all the names', 193, 4, 1, NULL, '2018-07-27 17:26:35', NULL, '0000-00-00 00:00:00'),
(773, 'Unable to identify many food items', 194, 1, 1, NULL, '2018-07-27 17:27:45', NULL, '0000-00-00 00:00:00'),
(774, 'Names few food items other than fruits/veg ', 194, 2, 1, NULL, '2018-07-27 17:27:45', NULL, '0000-00-00 00:00:00'),
(775, 'Draws and names many varieties of food items ', 194, 3, 1, NULL, '2018-07-27 17:27:45', NULL, '0000-00-00 00:00:00'),
(776, 'Describes many food items. taste and colour', 194, 4, 1, NULL, '2018-07-27 17:27:45', NULL, '0000-00-00 00:00:00'),
(777, 'Not able to identify where to pour water', 195, 1, 1, NULL, '2018-07-27 17:31:36', NULL, '0000-00-00 00:00:00'),
(778, 'Identifies where to pour', 195, 2, 1, NULL, '2018-07-27 17:31:36', NULL, '0000-00-00 00:00:00'),
(779, 'Fairly clear about lake and island ', 195, 3, 1, NULL, '2018-07-27 17:31:36', NULL, '0000-00-00 00:00:00'),
(780, 'Can describe a lake and island well', 195, 4, 1, NULL, '2018-07-27 17:31:36', NULL, '0000-00-00 00:00:00'),
(781, 'Unable to pronounce/identify', 196, 1, 1, NULL, '2018-07-27 17:34:10', NULL, '0000-00-00 00:00:00'),
(782, 'Identifies and reads words containing ea ', 196, 2, 1, NULL, '2018-07-27 17:34:10', NULL, '0000-00-00 00:00:00'),
(783, 'Able to give words that contain ea', 196, 3, 1, NULL, '2018-07-27 17:34:10', NULL, '0000-00-00 00:00:00'),
(784, 'Hear words containing ea writes/ spells accurately', 196, 4, 1, NULL, '2018-07-27 17:34:10', NULL, '0000-00-00 00:00:00'),
(785, 'Unable to pronounce/identify', 197, 1, 1, NULL, '2018-07-27 17:36:00', NULL, '0000-00-00 00:00:00'),
(786, 'Read words containing double terminals   ', 197, 2, 1, NULL, '2018-07-27 17:36:00', NULL, '0000-00-00 00:00:00'),
(787, 'Able to say words that have double terminals', 197, 3, 1, NULL, '2018-07-27 17:36:00', NULL, '0000-00-00 00:00:00'),
(788, 'Spells writtes words with double terminals well', 197, 4, 1, NULL, '2018-07-27 17:36:00', NULL, '0000-00-00 00:00:00'),
(789, 'Unable to pronounce/identify', 198, 1, 1, NULL, '2018-07-27 17:37:41', NULL, '0000-00-00 00:00:00'),
(790, 'Identifies and reads words containing ar ', 198, 2, 1, NULL, '2018-07-27 17:37:41', NULL, '0000-00-00 00:00:00'),
(791, 'Able to give words that contain ar', 198, 3, 1, NULL, '2018-07-27 17:37:41', NULL, '0000-00-00 00:00:00'),
(792, 'Hear words containing ar writes/ spells accurately', 198, 4, 1, NULL, '2018-07-27 17:37:41', NULL, '0000-00-00 00:00:00'),
(793, 'Unable to add', 199, 1, 1, NULL, '2018-07-27 17:43:46', NULL, '0000-00-00 00:00:00'),
(794, 'Able to add small numbers ', 199, 2, 1, NULL, '2018-07-27 17:43:46', NULL, '0000-00-00 00:00:00'),
(795, 'Able to add large numbers', 199, 3, 1, NULL, '2018-07-27 17:43:46', NULL, '0000-00-00 00:00:00'),
(796, 'Adds any other loose quantities', 199, 4, 1, NULL, '2018-07-27 17:43:46', NULL, '0000-00-00 00:00:00'),
(797, 'Unable to match the pieces', 200, 1, 1, NULL, '2018-07-27 17:45:45', NULL, '0000-00-00 00:00:00'),
(798, 'Able to make one or 2 easy ones ', 200, 2, 1, NULL, '2018-07-27 17:45:45', NULL, '0000-00-00 00:00:00'),
(799, 'MaKes all the shapes in a given colour', 200, 3, 1, NULL, '2018-07-27 17:45:45', NULL, '0000-00-00 00:00:00'),
(800, 'Create new geo shape with different colours', 200, 4, 1, NULL, '2018-07-27 17:45:45', NULL, '0000-00-00 00:00:00'),
(801, 'Unable to read ', 201, 1, 1, NULL, '2018-07-27 17:47:30', NULL, '0000-00-00 00:00:00'),
(802, 'Can read few', 201, 2, 1, NULL, '2018-07-27 17:47:30', NULL, '0000-00-00 00:00:00'),
(803, 'Can read and match', 201, 3, 1, NULL, '2018-07-27 17:47:30', NULL, '0000-00-00 00:00:00'),
(804, 'Looks at object, finds word card', 201, 4, 1, NULL, '2018-07-27 17:47:30', NULL, '0000-00-00 00:00:00'),
(805, 'Unable to match the pictures', 202, 1, 1, NULL, '2018-07-27 17:49:25', NULL, '0000-00-00 00:00:00'),
(806, 'Matches few picture parts', 202, 2, 1, NULL, '2018-07-27 17:49:25', NULL, '0000-00-00 00:00:00'),
(807, 'Matches all picture,a few word parts ', 202, 3, 1, NULL, '2018-07-27 17:49:25', NULL, '0000-00-00 00:00:00'),
(808, 'Matches all picture and word parts', 202, 4, 1, NULL, '2018-07-27 17:49:25', NULL, '0000-00-00 00:00:00'),
(809, 'Unable to pair', 203, 1, 1, NULL, '2018-07-27 17:51:34', NULL, '0000-00-00 00:00:00'),
(810, 'Able to find few pairs with trials ', 203, 2, 1, NULL, '2018-07-27 17:51:34', NULL, '0000-00-00 00:00:00'),
(811, 'Able to find all pairs With trials ', 203, 3, 1, NULL, '2018-07-27 17:51:34', NULL, '0000-00-00 00:00:00'),
(812, 'Pairs all confidently', 203, 4, 1, NULL, '2018-07-27 17:51:34', NULL, '0000-00-00 00:00:00'),
(813, 'Holds magnet', 204, 1, 1, NULL, '2018-07-27 17:53:06', NULL, '0000-00-00 00:00:00'),
(814, 'Use magnet, watch objects attracted', 204, 2, 1, NULL, '2018-07-27 17:53:06', NULL, '0000-00-00 00:00:00'),
(815, 'Holds magnet near objects and observes ', 204, 3, 1, NULL, '2018-07-27 17:53:06', NULL, '0000-00-00 00:00:00'),
(816, 'Use 2 magnets and observe', 204, 4, 1, NULL, '2018-07-27 17:53:06', NULL, '0000-00-00 00:00:00'),
(817, 'Unable to match the pictures', 205, 1, 1, NULL, '2018-07-27 17:55:25', NULL, '0000-00-00 00:00:00'),
(818, 'Matches few picture parts ', 205, 2, 1, NULL, '2018-07-27 17:55:25', NULL, '0000-00-00 00:00:00'),
(819, 'Matches all pictures', 205, 3, 1, NULL, '2018-07-27 17:55:25', NULL, '0000-00-00 00:00:00'),
(820, 'Matches pictures and identifies name', 205, 4, 1, NULL, '2018-07-27 17:55:25', NULL, '0000-00-00 00:00:00'),
(821, 'L1', 206, 1, 1, NULL, '2018-07-27 17:56:20', NULL, '0000-00-00 00:00:00'),
(822, 'L2', 206, 2, 1, NULL, '2018-07-27 17:56:20', NULL, '0000-00-00 00:00:00'),
(823, 'L3', 206, 3, 1, NULL, '2018-07-27 17:56:20', NULL, '0000-00-00 00:00:00'),
(824, 'L4', 206, 4, 1, NULL, '2018-07-27 17:56:20', NULL, '0000-00-00 00:00:00'),
(825, 'unable to read silently', 207, 1, 1, NULL, '2018-07-27 17:58:39', NULL, '0000-00-00 00:00:00'),
(826, 'Alike to read with some errors', 207, 2, 1, NULL, '2018-07-27 17:58:39', NULL, '0000-00-00 00:00:00'),
(827, 'Alike to read all words silently', 207, 3, 1, NULL, '2018-07-27 17:58:39', NULL, '0000-00-00 00:00:00'),
(828, 'Reads any 3 letter word lmmediately ', 207, 4, 1, NULL, '2018-07-27 17:58:39', NULL, '0000-00-00 00:00:00'),
(829, 'Unable to correlate', 208, 1, 1, NULL, '2018-07-27 18:01:08', NULL, '0000-00-00 00:00:00'),
(830, 'Connects some of the solids ', 208, 2, 1, NULL, '2018-07-27 18:01:08', NULL, '0000-00-00 00:00:00'),
(831, 'Connects most solids', 208, 3, 1, NULL, '2018-07-27 18:01:08', NULL, '0000-00-00 00:00:00'),
(832, 'Starts exploring wherever they see solids', 208, 4, 1, NULL, '2018-07-27 18:01:08', NULL, '0000-00-00 00:00:00'),
(833, 'Unable to exchange ', 209, 1, 1, NULL, '2018-07-27 18:03:11', NULL, '0000-00-00 00:00:00'),
(834, 'Exchanges with some errors ', 209, 2, 1, NULL, '2018-07-27 18:03:12', NULL, '0000-00-00 00:00:00'),
(835, 'Exchanges well', 209, 3, 1, NULL, '2018-07-27 18:03:12', NULL, '0000-00-00 00:00:00'),
(836, 'Exchanges perfectly, understands number translation', 209, 4, 1, NULL, '2018-07-27 18:03:12', NULL, '0000-00-00 00:00:00'),
(837, 'Cannot follow the symbol', 210, 1, 1, NULL, '2018-07-27 18:05:37', NULL, '0000-00-00 00:00:00'),
(838, 'Identifies symbol and adds', 210, 2, 1, NULL, '2018-07-27 18:05:37', NULL, '0000-00-00 00:00:00'),
(839, 'Understands the symbol represents addition ', 210, 3, 1, NULL, '2018-07-27 18:05:37', NULL, '0000-00-00 00:00:00'),
(840, 'Sees a sum. and is able to put the + symbol', 210, 4, 1, NULL, '2018-07-27 18:05:37', NULL, '0000-00-00 00:00:00'),
(841, 'Unable to understand', 211, 1, 1, NULL, '2018-07-27 18:11:01', NULL, '0000-00-00 00:00:00'),
(842, 'Follows some go down, some don\'t ', 211, 2, 1, NULL, '2018-07-27 18:11:01', NULL, '0000-00-00 00:00:00'),
(843, 'Points to objects in water, say- ftoat sink', 211, 3, 1, NULL, '2018-07-27 18:11:01', NULL, '0000-00-00 00:00:00'),
(844, 'Shown pictures,identifies if it will float or sink', 211, 4, 1, NULL, '2018-07-27 18:11:01', NULL, '0000-00-00 00:00:00'),
(845, 'Cannot do', 212, 1, 1, NULL, '2018-07-27 18:12:57', NULL, '0000-00-00 00:00:00'),
(846, 'Counts number of points on each shape', 212, 2, 1, NULL, '2018-07-27 18:12:57', NULL, '0000-00-00 00:00:00'),
(847, 'Given flower shape on paper, counts number of points ', 212, 3, 1, NULL, '2018-07-27 18:12:57', NULL, '0000-00-00 00:00:00'),
(848, 'Identifies shapes within shapes', 212, 4, 1, NULL, '2018-07-27 18:12:57', NULL, '0000-00-00 00:00:00'),
(849, 'Unable to play', 213, 1, 1, NULL, '2018-07-27 18:14:54', NULL, '0000-00-00 00:00:00'),
(850, 'Understands rules,plays with adult ', 213, 2, 1, NULL, '2018-07-27 18:14:54', NULL, '0000-00-00 00:00:00'),
(851, 'Follows rules,play with children', 213, 3, 1, NULL, '2018-07-27 18:14:54', NULL, '0000-00-00 00:00:00'),
(852, 'Follows rules,initiates play with children', 213, 4, 1, NULL, '2018-07-27 18:14:54', NULL, '0000-00-00 00:00:00'),
(853, 'Able to form 2 word sentences', 214, 1, 1, NULL, '2018-07-27 18:16:05', NULL, '0000-00-00 00:00:00'),
(854, 'Able to form 4 word sentences ', 214, 2, 1, NULL, '2018-07-27 18:16:05', NULL, '0000-00-00 00:00:00'),
(855, 'Able to form 6 word sentences ', 214, 3, 1, NULL, '2018-07-27 18:16:05', NULL, '0000-00-00 00:00:00'),
(856, 'Forms complex sentences', 214, 4, 1, NULL, '2018-07-27 18:16:05', NULL, '0000-00-00 00:00:00'),
(857, 'Unable to match the pictures', 215, 1, 1, NULL, '2018-07-27 18:18:25', NULL, '0000-00-00 00:00:00'),
(858, 'Matches few picture parts ', 215, 2, 1, NULL, '2018-07-27 18:18:25', NULL, '0000-00-00 00:00:00'),
(859, 'Matches all pictures well', 215, 3, 1, NULL, '2018-07-27 18:18:25', NULL, '0000-00-00 00:00:00'),
(860, 'Matches pictures and identifies name', 215, 4, 1, NULL, '2018-07-27 18:18:25', NULL, '0000-00-00 00:00:00'),
(861, 'Does not follow', 216, 1, 1, NULL, '2018-07-27 18:19:49', NULL, '0000-00-00 00:00:00'),
(862, 'Know when switch is on,elec is used ', 216, 2, 1, NULL, '2018-07-27 18:19:50', NULL, '0000-00-00 00:00:00'),
(863, 'Point to objects in the room that use elec', 216, 3, 1, NULL, '2018-07-27 18:19:50', NULL, '0000-00-00 00:00:00'),
(864, 'Separates objects that use and do not use elec', 216, 4, 1, NULL, '2018-07-27 18:19:50', NULL, '0000-00-00 00:00:00'),
(865, 'Unable to match the pictures', 217, 1, 1, NULL, '2018-07-27 18:21:02', NULL, '0000-00-00 00:00:00'),
(866, 'Matches few picture parts ', 217, 2, 1, NULL, '2018-07-27 18:21:02', NULL, '0000-00-00 00:00:00'),
(867, 'Matches all pictures', 217, 3, 1, NULL, '2018-07-27 18:21:02', NULL, '0000-00-00 00:00:00'),
(868, 'Matches pictures and identifies name', 217, 4, 1, NULL, '2018-07-27 18:21:02', NULL, '0000-00-00 00:00:00'),
(869, 'Unable to add', 218, 1, 1, NULL, '2018-07-27 18:23:19', NULL, '0000-00-00 00:00:00'),
(870, 'Able to add only with control card ', 218, 2, 1, NULL, '2018-07-27 18:23:19', NULL, '0000-00-00 00:00:00'),
(871, 'Adds small nums w/o control card ', 218, 3, 1, NULL, '2018-07-27 18:23:19', NULL, '0000-00-00 00:00:00'),
(872, 'Adds large numbers w/o control card', 218, 4, 1, NULL, '2018-07-27 18:23:19', NULL, '0000-00-00 00:00:00'),
(873, 'L1', 219, 1, 1, NULL, '2018-07-27 18:24:31', NULL, '0000-00-00 00:00:00'),
(874, 'L2', 219, 2, 1, NULL, '2018-07-27 18:24:31', NULL, '0000-00-00 00:00:00'),
(875, 'L3', 219, 3, 1, NULL, '2018-07-27 18:24:31', NULL, '0000-00-00 00:00:00'),
(876, 'L4', 219, 4, 1, NULL, '2018-07-27 18:24:31', NULL, '0000-00-00 00:00:00'),
(877, 'Unable to pronounce/identify', 220, 1, 1, NULL, '2018-07-27 18:26:52', NULL, '0000-00-00 00:00:00'),
(878, 'Identifies and reads words containing ow ', 220, 2, 1, NULL, '2018-07-27 18:26:52', NULL, '0000-00-00 00:00:00'),
(879, 'Able to give words that contain ow', 220, 3, 1, NULL, '2018-07-27 18:26:52', NULL, '0000-00-00 00:00:00'),
(880, 'Hear words containing ow writes/ spells accurately', 220, 4, 1, NULL, '2018-07-27 18:26:52', NULL, '0000-00-00 00:00:00'),
(881, 'Unable to pronounce/identify', 221, 1, 1, NULL, '2018-07-27 18:29:43', NULL, '0000-00-00 00:00:00'),
(882, 'Identifies and reads words containing oi ', 221, 2, 1, NULL, '2018-07-27 18:29:43', NULL, '0000-00-00 00:00:00'),
(883, 'Able to give words that contain oi', 221, 3, 1, NULL, '2018-07-27 18:29:43', NULL, '0000-00-00 00:00:00'),
(884, 'Hear words containing oi writes/ spells accurately', 221, 4, 1, NULL, '2018-07-27 18:29:43', NULL, '0000-00-00 00:00:00'),
(885, 'Unable to pronounce/identify', 222, 1, 1, NULL, '2018-07-27 18:31:54', NULL, '0000-00-00 00:00:00'),
(886, 'Identifies and reads words containing aw ', 222, 2, 1, NULL, '2018-07-27 18:31:54', NULL, '0000-00-00 00:00:00'),
(887, 'Able to give words that contain aw', 222, 3, 1, NULL, '2018-07-27 18:31:54', NULL, '0000-00-00 00:00:00'),
(888, 'Hear words containing aw writes/ spells accurately', 222, 4, 1, NULL, '2018-07-27 18:31:54', NULL, '0000-00-00 00:00:00'),
(889, 'Unable to pronounce/identify', 223, 1, 1, NULL, '2018-07-27 18:33:25', NULL, '0000-00-00 00:00:00'),
(890, 'Identifies and reads words containing au ', 223, 2, 1, NULL, '2018-07-27 18:33:25', NULL, '0000-00-00 00:00:00'),
(891, 'Able to give words that contain au', 223, 3, 1, NULL, '2018-07-27 18:33:25', NULL, '0000-00-00 00:00:00'),
(892, 'Hear words containing au writes/ spells accurately', 223, 4, 1, NULL, '2018-07-27 18:33:25', NULL, '0000-00-00 00:00:00'),
(893, 'Unable to pronounce/identify', 224, 1, 1, NULL, '2018-07-27 18:35:38', NULL, '0000-00-00 00:00:00'),
(894, 'Identifies and reads words containing ou ', 224, 2, 1, NULL, '2018-07-27 18:35:38', NULL, '0000-00-00 00:00:00'),
(895, 'Able to give words that contain ou', 224, 3, 1, NULL, '2018-07-27 18:35:38', NULL, '0000-00-00 00:00:00'),
(896, 'Hear words containing ou writes/ spells accurately', 224, 4, 1, NULL, '2018-07-27 18:35:38', NULL, '0000-00-00 00:00:00'),
(897, 'Unable to pronounce/identify', 225, 1, 1, NULL, '2018-07-27 18:37:11', NULL, '0000-00-00 00:00:00'),
(898, 'Identifies and reads words containing oy', 225, 2, 1, NULL, '2018-07-27 18:37:11', NULL, '0000-00-00 00:00:00'),
(899, 'Able to give words that contain oy', 225, 3, 1, NULL, '2018-07-27 18:37:11', NULL, '0000-00-00 00:00:00'),
(900, 'Hear words containing oy writes/ spells accurately', 225, 4, 1, NULL, '2018-07-27 18:37:11', NULL, '0000-00-00 00:00:00'),
(901, 'Unable to match the pictures', 226, 1, 1, NULL, '2018-07-28 04:52:15', NULL, '0000-00-00 00:00:00'),
(902, 'Matches few picture parts ', 226, 2, 1, NULL, '2018-07-28 04:52:15', NULL, '0000-00-00 00:00:00'),
(903, 'Matches all pictures', 226, 3, 1, NULL, '2018-07-28 04:52:15', NULL, '0000-00-00 00:00:00'),
(904, 'Matches pictures and identifies name', 226, 4, 1, NULL, '2018-07-28 04:52:15', NULL, '0000-00-00 00:00:00'),
(905, 'Unable to do', 227, 1, 1, NULL, '2018-07-28 04:53:02', NULL, '0000-00-00 00:00:00'),
(906, 'Able to match a few ', 227, 2, 1, NULL, '2018-07-28 04:53:02', NULL, '0000-00-00 00:00:00'),
(907, 'Able to match all letters', 227, 3, 1, NULL, '2018-07-28 04:53:02', NULL, '0000-00-00 00:00:00'),
(908, 'Given a print letter writes capital', 227, 4, 1, NULL, '2018-07-28 04:53:02', NULL, '0000-00-00 00:00:00'),
(909, ' Unable to match ', 228, 1, 1, NULL, '2018-07-28 04:55:19', NULL, '0000-00-00 00:00:00'),
(910, 'Matches only a few ', 228, 2, 1, NULL, '2018-07-28 04:55:19', NULL, '0000-00-00 00:00:00'),
(911, 'Matches all with effort', 228, 3, 1, NULL, '2018-07-28 04:55:19', NULL, '0000-00-00 00:00:00'),
(912, 'Matches all and identifies', 228, 4, 1, NULL, '2018-07-28 04:55:19', NULL, '0000-00-00 00:00:00'),
(913, 'Unable to do inscr/conc with more than 2', 229, 1, 1, NULL, '2018-07-28 04:58:57', NULL, '0000-00-00 00:00:00'),
(914, 'Demonstrates insc/ concentric with > 3 shapes ', 229, 2, 1, NULL, '2018-07-28 04:58:57', NULL, '0000-00-00 00:00:00'),
(915, 'Independently tries different inscr/conc combinations ', 229, 3, 1, NULL, '2018-07-28 04:58:57', NULL, '0000-00-00 00:00:00'),
(916, 'Draws insc/conc combinations on paper', 229, 4, 1, NULL, '2018-07-28 04:58:57', NULL, '0000-00-00 00:00:00'),
(917, 'Unable to follow', 230, 1, 1, NULL, '2018-07-28 05:02:29', NULL, '0000-00-00 00:00:00'),
(918, 'Counts randomly, many wrong answers', 230, 2, 1, NULL, '2018-07-28 05:02:29', NULL, '0000-00-00 00:00:00'),
(919, 'Counts fairly well, gets good answers', 230, 3, 1, NULL, '2018-07-28 05:02:29', NULL, '0000-00-00 00:00:00'),
(920, 'Counts accurately, gets right answers always', 230, 4, 1, NULL, '2018-07-28 05:02:29', NULL, '0000-00-00 00:00:00'),
(921, 'Unable to match the pictures ', 231, 1, 1, NULL, '2018-07-28 05:06:01', NULL, '0000-00-00 00:00:00'),
(922, 'Matches only a few pictures ', 231, 2, 1, NULL, '2018-07-28 05:06:01', NULL, '0000-00-00 00:00:00'),
(923, 'Matches all the pictures', 231, 3, 1, NULL, '2018-07-28 05:06:01', NULL, '0000-00-00 00:00:00'),
(924, 'Matches all the pictures and identifies the highlighted parts', 231, 4, 1, NULL, '2018-07-28 05:06:01', NULL, '0000-00-00 00:00:00'),
(925, 'Unable to do', 232, 1, 1, NULL, '2018-07-28 05:09:14', NULL, '0000-00-00 00:00:00'),
(926, 'Does with many errors ', 232, 2, 1, NULL, '2018-07-28 05:09:14', NULL, '0000-00-00 00:00:00'),
(927, 'Does with few errors', 232, 3, 1, NULL, '2018-07-28 05:09:14', NULL, '0000-00-00 00:00:00'),
(928, 'Independently do complex sequncing', 232, 4, 1, NULL, '2018-07-28 05:09:14', NULL, '0000-00-00 00:00:00'),
(929, 'Unable to follow', 233, 1, 1, NULL, '2018-07-28 05:10:13', NULL, '0000-00-00 00:00:00'),
(930, 'Understands living things ', 233, 2, 1, NULL, '2018-07-28 05:10:13', NULL, '0000-00-00 00:00:00'),
(931, 'Sorts living and non-living well', 233, 3, 1, NULL, '2018-07-28 05:10:13', NULL, '0000-00-00 00:00:00'),
(932, 'Explains what the differences are', 233, 4, 1, NULL, '2018-07-28 05:10:13', NULL, '0000-00-00 00:00:00'),
(933, 'Unable to follow', 234, 1, 1, NULL, '2018-07-28 05:11:28', NULL, '0000-00-00 00:00:00');
INSERT INTO `t_activities_level` (`activity_level_id`, `step_title`, `activity_id`, `level_id`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(934, 'Identifies some carnivores', 234, 2, 1, NULL, '2018-07-28 05:11:28', NULL, '0000-00-00 00:00:00'),
(935, 'Understands difference between carnivores and herbivores ', 234, 3, 1, NULL, '2018-07-28 05:11:28', NULL, '0000-00-00 00:00:00'),
(936, 'lists animals as carnivore or herbivore', 234, 4, 1, NULL, '2018-07-28 05:11:28', NULL, '0000-00-00 00:00:00'),
(937, 'L1', 235, 1, 1, NULL, '2018-07-28 05:12:10', NULL, '0000-00-00 00:00:00'),
(938, 'L2', 235, 2, 1, NULL, '2018-07-28 05:12:10', NULL, '0000-00-00 00:00:00'),
(939, 'L3', 235, 3, 1, NULL, '2018-07-28 05:12:10', NULL, '0000-00-00 00:00:00'),
(940, 'L4', 235, 4, 1, NULL, '2018-07-28 05:12:10', NULL, '0000-00-00 00:00:00'),
(941, 'Unable to comprehend/identify ', 236, 1, 1, NULL, '2018-07-28 05:17:50', NULL, '0000-00-00 00:00:00'),
(942, 'Differentiate long/ short for some', 236, 2, 1, NULL, '2018-07-28 05:17:50', NULL, '0000-00-00 00:00:00'),
(943, 'Easily changes sound, when given short/long (Hat,Hate) ', 236, 3, 1, NULL, '2018-07-28 05:17:50', NULL, '0000-00-00 00:00:00'),
(944, 'Hear words containing silent e writes/ spells accurately', 236, 4, 1, NULL, '2018-07-28 05:17:50', NULL, '0000-00-00 00:00:00'),
(945, 'Unable to comprehend/identify', 237, 1, 1, NULL, '2018-07-28 05:20:01', NULL, '0000-00-00 00:00:00'),
(946, 'Differentiate long/ short for somewhile reading', 237, 2, 1, NULL, '2018-07-28 05:20:01', NULL, '0000-00-00 00:00:00'),
(947, 'Easily changes sound, when given short/long (her, here) ', 237, 3, 1, NULL, '2018-07-28 05:20:01', NULL, '0000-00-00 00:00:00'),
(948, 'Hear words containing silent e writes/ spells accurately', 237, 4, 1, NULL, '2018-07-28 05:20:01', NULL, '0000-00-00 00:00:00'),
(949, 'Unable to comprehend/identify', 238, 1, 1, NULL, '2018-07-28 05:21:53', NULL, '0000-00-00 00:00:00'),
(950, 'Differentiate long/ short for somewhile reading', 238, 2, 1, NULL, '2018-07-28 05:21:54', NULL, '0000-00-00 00:00:00'),
(951, 'Easily changes sound, when given short/long not,note ', 238, 3, 1, NULL, '2018-07-28 05:21:54', NULL, '0000-00-00 00:00:00'),
(952, 'Hear words containing silent e writes/ spells accurately', 238, 4, 1, NULL, '2018-07-28 05:21:54', NULL, '0000-00-00 00:00:00'),
(953, 'Unable to comprehend/identify', 239, 1, 1, NULL, '2018-07-28 05:23:04', NULL, '0000-00-00 00:00:00'),
(954, 'Differentiate long/ short for somewhile reading', 239, 2, 1, NULL, '2018-07-28 05:23:04', NULL, '0000-00-00 00:00:00'),
(955, 'Easily changes sound, when given short/long cut/ cute ', 239, 3, 1, NULL, '2018-07-28 05:23:04', NULL, '0000-00-00 00:00:00'),
(956, 'Hear words containing silent e writes/ spells accurately', 239, 4, 1, NULL, '2018-07-28 05:23:04', NULL, '0000-00-00 00:00:00'),
(957, 'Unable to read ', 240, 1, 1, NULL, '2018-07-28 05:25:47', NULL, '0000-00-00 00:00:00'),
(958, 'Can read few', 240, 2, 1, NULL, '2018-07-28 05:25:47', NULL, '0000-00-00 00:00:00'),
(959, 'Can read and match', 240, 3, 1, NULL, '2018-07-28 05:25:47', NULL, '0000-00-00 00:00:00'),
(960, 'Looks at picture. finds word card', 240, 4, 1, NULL, '2018-07-28 05:25:47', NULL, '0000-00-00 00:00:00'),
(961, 'Unable to do', 241, 1, 1, NULL, '2018-07-28 05:34:33', NULL, '0000-00-00 00:00:00'),
(962, 'Uses the sign with errors ', 241, 2, 1, NULL, '2018-07-28 05:34:33', NULL, '0000-00-00 00:00:00'),
(963, 'Uses the sign fairly well ', 241, 3, 1, NULL, '2018-07-28 05:34:33', NULL, '0000-00-00 00:00:00'),
(964, 'Places sign accurately always', 241, 4, 1, NULL, '2018-07-28 05:34:33', NULL, '0000-00-00 00:00:00'),
(965, 'Unable to identify', 242, 1, 1, NULL, '2018-07-28 05:37:24', NULL, '0000-00-00 00:00:00'),
(966, 'Identifies some continents ', 242, 2, 1, NULL, '2018-07-28 05:37:24', NULL, '0000-00-00 00:00:00'),
(967, 'Identifies many continents. oceans ', 242, 3, 1, NULL, '2018-07-28 05:37:24', NULL, '0000-00-00 00:00:00'),
(968, 'Identifies  all continents,oceans', 242, 4, 1, NULL, '2018-07-28 05:37:24', NULL, '0000-00-00 00:00:00'),
(969, 'Unable to match the pictures', 243, 1, 1, NULL, '2018-07-28 05:39:34', NULL, '0000-00-00 00:00:00'),
(970, 'Matches few picture parts ', 243, 2, 1, NULL, '2018-07-28 05:39:34', NULL, '0000-00-00 00:00:00'),
(971, 'Matches all pictures', 243, 3, 1, NULL, '2018-07-28 05:39:34', NULL, '0000-00-00 00:00:00'),
(972, 'Matches pictures and identifies name', 243, 4, 1, NULL, '2018-07-28 05:39:34', NULL, '0000-00-00 00:00:00'),
(973, 'Unable to do', 244, 1, 1, NULL, '2018-07-28 05:40:32', NULL, '0000-00-00 00:00:00'),
(974, 'Can sort on colour ', 244, 2, 1, NULL, '2018-07-28 05:40:32', NULL, '0000-00-00 00:00:00'),
(975, 'Places counters correctly', 244, 3, 1, NULL, '2018-07-28 05:40:32', NULL, '0000-00-00 00:00:00'),
(976, 'Notes some details', 244, 4, 1, NULL, '2018-07-28 05:40:32', NULL, '0000-00-00 00:00:00'),
(977, 'Unable to understand', 245, 1, 1, NULL, '2018-07-28 05:43:09', NULL, '0000-00-00 00:00:00'),
(978, 'Reads simple time with difficulty ', 245, 2, 1, NULL, '2018-07-28 05:43:09', NULL, '0000-00-00 00:00:00'),
(979, 'Reads simple time well', 245, 3, 1, NULL, '2018-07-28 05:43:09', NULL, '0000-00-00 00:00:00'),
(980, 'Places hour hand correctly', 245, 4, 1, NULL, '2018-07-28 05:43:09', NULL, '0000-00-00 00:00:00'),
(981, 'Cannot place arrows ', 246, 1, 1, NULL, '2018-07-28 05:49:57', NULL, '0000-00-00 00:00:00'),
(982, 'Places arrows fairly well', 246, 2, 1, NULL, '2018-07-28 05:49:57', NULL, '0000-00-00 00:00:00'),
(983, 'Places arrows exactly and gets answer ', 246, 3, 1, NULL, '2018-07-28 05:49:57', NULL, '0000-00-00 00:00:00'),
(984, 'Explains about going forward with addition  ', 246, 4, 1, NULL, '2018-07-28 05:49:57', NULL, '0000-00-00 00:00:00'),
(985, 'Unable to do', 247, 1, 1, NULL, '2018-07-28 05:52:05', NULL, '0000-00-00 00:00:00'),
(986, 'Draws dots, adds with some errors', 247, 2, 1, NULL, '2018-07-28 05:52:05', NULL, '0000-00-00 00:00:00'),
(987, 'Draws dots, adds well, some errors in carry over ', 247, 3, 1, NULL, '2018-07-28 05:52:05', NULL, '0000-00-00 00:00:00'),
(988, 'Draws dots and adds perfectly', 247, 4, 1, NULL, '2018-07-28 05:52:05', NULL, '0000-00-00 00:00:00'),
(989, 'Unable to follow link', 248, 1, 1, NULL, '2018-07-28 05:53:12', NULL, '0000-00-00 00:00:00'),
(990, 'Sequences pieces with the boards ', 248, 2, 1, NULL, '2018-07-28 05:53:12', NULL, '0000-00-00 00:00:00'),
(991, 'Sequences the pieces without the boards ', 248, 3, 1, NULL, '2018-07-28 05:53:12', NULL, '0000-00-00 00:00:00'),
(992, 'Able to explain the process with stage names', 248, 4, 1, NULL, '2018-07-28 05:53:12', NULL, '0000-00-00 00:00:00'),
(993, 'Unable to follow', 249, 1, 1, NULL, '2018-07-28 05:55:22', NULL, '0000-00-00 00:00:00'),
(994, 'Moves the planets', 249, 2, 1, NULL, '2018-07-28 05:55:22', NULL, '0000-00-00 00:00:00'),
(995, 'Understands sun is in the centre . orbit etc', 249, 3, 1, NULL, '2018-07-28 05:55:22', NULL, '0000-00-00 00:00:00'),
(996, 'Knows details lil<e how many planets. red, biggest etc', 249, 4, 1, NULL, '2018-07-28 05:55:22', NULL, '0000-00-00 00:00:00'),
(997, 'Does not arrange strips on square', 250, 1, 1, NULL, '2018-07-28 05:57:13', NULL, '0000-00-00 00:00:00'),
(998, 'Arranges strips on square -trial/error ', 250, 2, 1, NULL, '2018-07-28 05:57:13', NULL, '0000-00-00 00:00:00'),
(999, 'Correctly arranges strips on square', 250, 3, 1, NULL, '2018-07-28 05:57:13', NULL, '0000-00-00 00:00:00'),
(1000, 'Knows exactly how many strips will cover the square', 250, 4, 1, NULL, '2018-07-28 05:57:13', NULL, '0000-00-00 00:00:00'),
(1001, 'Unable to match the pictures', 251, 1, 1, NULL, '2018-07-28 06:00:15', NULL, '0000-00-00 00:00:00'),
(1002, 'Matches few picture parts ', 251, 2, 1, NULL, '2018-07-28 06:00:15', NULL, '0000-00-00 00:00:00'),
(1003, 'Matches all pictures', 251, 3, 1, NULL, '2018-07-28 06:00:15', NULL, '0000-00-00 00:00:00'),
(1004, 'Matches pictures and identifies name', 251, 4, 1, NULL, '2018-07-28 06:00:15', NULL, '0000-00-00 00:00:00'),
(1005, 'Unable to add ', 252, 1, 1, NULL, '2018-07-28 06:01:51', NULL, '0000-00-00 00:00:00'),
(1006, 'Adds with difficulty', 252, 2, 1, NULL, '2018-07-28 06:01:51', NULL, '0000-00-00 00:00:00'),
(1007, 'Adds fairly well with some errors ', 252, 3, 1, NULL, '2018-07-28 06:01:51', NULL, '0000-00-00 00:00:00'),
(1008, 'Adds correctly consistently', 252, 4, 1, NULL, '2018-07-28 06:01:51', NULL, '0000-00-00 00:00:00'),
(1009, 'Unable to correlate', 253, 1, 1, NULL, '2018-07-28 06:04:10', NULL, '0000-00-00 00:00:00'),
(1010, 'Places solids on base with trials', 253, 2, 1, NULL, '2018-07-28 06:04:10', NULL, '0000-00-00 00:00:00'),
(1011, 'Places all solids on right base w/o trials', 253, 3, 1, NULL, '2018-07-28 06:04:10', NULL, '0000-00-00 00:00:00'),
(1012, 'Places all solids on bases and other solids, Knowing its the same', 253, 4, 1, NULL, '2018-07-28 06:04:10', NULL, '0000-00-00 00:00:00'),
(1013, 'Unable to pronounce/identify', 254, 1, 1, NULL, '2018-07-28 06:11:20', NULL, '0000-00-00 00:00:00'),
(1014, 'Identifies and reads words containing ew ', 254, 2, 1, NULL, '2018-07-28 06:11:20', NULL, '0000-00-00 00:00:00'),
(1015, 'Able to give words that contain ew', 254, 3, 1, NULL, '2018-07-28 06:11:20', NULL, '0000-00-00 00:00:00'),
(1016, 'Hear words containing ew writes/ spells accurately', 254, 4, 1, NULL, '2018-07-28 06:11:20', NULL, '0000-00-00 00:00:00'),
(1017, 'Unable to pronounce/identify', 255, 1, 1, NULL, '2018-07-28 06:13:53', NULL, '0000-00-00 00:00:00'),
(1018, 'Identifies and reads words containing oa ', 255, 2, 1, NULL, '2018-07-28 06:13:53', NULL, '0000-00-00 00:00:00'),
(1019, 'Able to give words that contain oa', 255, 3, 1, NULL, '2018-07-28 06:13:53', NULL, '0000-00-00 00:00:00'),
(1020, 'Hear words containing oa writes/ spells accurately', 255, 4, 1, NULL, '2018-07-28 06:13:53', NULL, '0000-00-00 00:00:00'),
(1021, 'Unable to pronounce/identify', 256, 1, 1, NULL, '2018-07-28 06:16:30', NULL, '0000-00-00 00:00:00'),
(1022, 'Identifies and reads words containing oe ', 256, 2, 1, NULL, '2018-07-28 06:16:30', NULL, '0000-00-00 00:00:00'),
(1023, 'Able to give words that contain oe', 256, 3, 1, NULL, '2018-07-28 06:16:30', NULL, '0000-00-00 00:00:00'),
(1024, 'Hear words containing oe writes/ spells accurately', 256, 4, 1, NULL, '2018-07-28 06:16:30', NULL, '0000-00-00 00:00:00'),
(1025, 'Unable to pronounce/identify', 257, 1, 1, NULL, '2018-07-28 06:19:49', NULL, '0000-00-00 00:00:00'),
(1026, 'Identifies and reads words containing ue ', 257, 2, 1, NULL, '2018-07-28 06:19:49', NULL, '0000-00-00 00:00:00'),
(1027, 'Able to give words that contain ue', 257, 3, 1, NULL, '2018-07-28 06:19:49', NULL, '0000-00-00 00:00:00'),
(1028, 'Hear words containing ue writes/ spells accurately', 257, 4, 1, NULL, '2018-07-28 06:19:49', NULL, '0000-00-00 00:00:00'),
(1029, 'Unable to pronounce/identify', 258, 1, 1, NULL, '2018-07-28 06:24:12', NULL, '0000-00-00 00:00:00'),
(1030, 'Identifies and reads words containing ui ', 258, 2, 1, NULL, '2018-07-28 06:24:12', NULL, '0000-00-00 00:00:00'),
(1031, 'Able to give words that contain ui', 258, 3, 1, NULL, '2018-07-28 06:24:12', NULL, '0000-00-00 00:00:00'),
(1032, 'Hear words containing ui writes/ spells accurately', 258, 4, 1, NULL, '2018-07-28 06:24:12', NULL, '0000-00-00 00:00:00'),
(1033, 'Unable to pronounce/identify', 259, 1, 1, NULL, '2018-07-31 05:56:56', NULL, '0000-00-00 00:00:00'),
(1034, 'Identifies and reads words containing ie ', 259, 2, 1, NULL, '2018-07-31 05:56:56', NULL, '0000-00-00 00:00:00'),
(1035, 'Able to give words that contain ie', 259, 3, 1, NULL, '2018-07-31 05:56:56', NULL, '0000-00-00 00:00:00'),
(1036, 'Hear words containing ie writes/ spells accurately', 259, 4, 1, NULL, '2018-07-31 05:56:56', NULL, '0000-00-00 00:00:00'),
(1037, 'Unable to do', 260, 1, 1, NULL, '2018-07-31 05:59:27', NULL, '0000-00-00 00:00:00'),
(1038, 'Uses the sign with errors', 260, 2, 1, NULL, '2018-07-31 05:59:27', NULL, '0000-00-00 00:00:00'),
(1039, 'Uses the sign well with qty and number', 260, 3, 1, NULL, '2018-07-31 05:59:27', NULL, '0000-00-00 00:00:00'),
(1040, 'Puts the sign accurately between only numbers', 260, 4, 1, NULL, '2018-07-31 05:59:27', NULL, '0000-00-00 00:00:00'),
(1041, 'Unable to match w/o control card', 261, 1, 1, NULL, '2018-07-31 06:09:46', NULL, '0000-00-00 00:00:00'),
(1042, 'Matches few pictures and first letters', 261, 2, 1, NULL, '2018-07-31 06:09:46', NULL, '0000-00-00 00:00:00'),
(1043, 'Matches some pictures and words reading with difficulty ', 261, 3, 1, NULL, '2018-07-31 06:09:46', NULL, '0000-00-00 00:00:00'),
(1044, 'Reads the word and finds the picture', 261, 4, 1, NULL, '2018-07-31 06:09:46', NULL, '0000-00-00 00:00:00'),
(1045, 'Unable to identify any', 262, 1, 1, NULL, '2018-07-31 06:11:16', NULL, '0000-00-00 00:00:00'),
(1046, 'Can identify a few ', 262, 2, 1, NULL, '2018-07-31 06:11:16', NULL, '0000-00-00 00:00:00'),
(1047, 'Identifies many ', 262, 3, 1, NULL, '2018-07-31 06:11:16', NULL, '0000-00-00 00:00:00'),
(1048, 'Identifies all the nags', 262, 4, 1, NULL, '2018-07-31 06:11:16', NULL, '0000-00-00 00:00:00'),
(1049, 'Unable to ', 263, 1, 1, NULL, '2018-07-31 06:12:26', NULL, '0000-00-00 00:00:00'),
(1050, 'Measures', 263, 2, 1, NULL, '2018-07-31 06:12:26', NULL, '0000-00-00 00:00:00'),
(1051, 'Measures & gives correct length', 263, 3, 1, NULL, '2018-07-31 06:12:26', NULL, '0000-00-00 00:00:00'),
(1052, 'Meas With diff tools. note length in diff units', 263, 4, 1, NULL, '2018-07-31 06:12:26', NULL, '0000-00-00 00:00:00'),
(1053, 'Unable to read', 264, 1, 1, NULL, '2018-07-31 06:15:05', NULL, '0000-00-00 00:00:00'),
(1054, 'Reads a few ', 264, 2, 1, NULL, '2018-07-31 06:15:05', NULL, '0000-00-00 00:00:00'),
(1055, 'Reads many', 264, 3, 1, NULL, '2018-07-31 06:15:05', NULL, '0000-00-00 00:00:00'),
(1056, 'Reads all sight words on tree', 264, 4, 1, NULL, '2018-07-31 06:15:05', NULL, '0000-00-00 00:00:00'),
(1057, 'Counts num of sides for each', 265, 1, 1, NULL, '2018-07-31 06:21:31', NULL, '0000-00-00 00:00:00'),
(1058, 'Counts and observes all figures have 4 sides each ', 265, 2, 1, NULL, '2018-07-31 06:21:31', NULL, '0000-00-00 00:00:00'),
(1059, 'Knows each shape has 4 sides', 265, 3, 1, NULL, '2018-07-31 06:21:31', NULL, '0000-00-00 00:00:00'),
(1060, 'Can name a list of 4 sided figures', 265, 4, 1, NULL, '2018-07-31 06:21:31', NULL, '0000-00-00 00:00:00'),
(1061, 'Unable to find a rhyming word ', 266, 1, 1, NULL, '2018-07-31 06:27:19', NULL, '0000-00-00 00:00:00'),
(1062, 'Rhymes simple 3 letter words ', 266, 2, 1, NULL, '2018-07-31 06:27:19', NULL, '0000-00-00 00:00:00'),
(1063, 'Rhymes many words', 266, 3, 1, NULL, '2018-07-31 06:27:19', NULL, '0000-00-00 00:00:00'),
(1064, 'Rhymes large words', 266, 4, 1, NULL, '2018-07-31 06:27:19', NULL, '0000-00-00 00:00:00'),
(1065, 'Unable to identify any continents on globe', 267, 1, 1, NULL, '2018-07-31 06:33:48', NULL, '0000-00-00 00:00:00'),
(1066, 'Able to name 1-2 continents ', 267, 2, 1, NULL, '2018-07-31 06:33:48', NULL, '0000-00-00 00:00:00'),
(1067, 'Able to identify all continents', 267, 3, 1, NULL, '2018-07-31 06:33:48', NULL, '0000-00-00 00:00:00'),
(1068, 'Identifies continent on any map/ globe', 267, 4, 1, NULL, '2018-07-31 06:33:48', NULL, '0000-00-00 00:00:00'),
(1069, 'Unable to match w/o control card', 268, 1, 1, NULL, '2018-07-31 06:36:05', NULL, '0000-00-00 00:00:00'),
(1070, 'Matches few pictures and first letters', 268, 2, 1, NULL, '2018-07-31 06:36:05', NULL, '0000-00-00 00:00:00'),
(1071, 'Matches some pictures and words reading with difficulty ', 268, 3, 1, NULL, '2018-07-31 06:36:05', NULL, '0000-00-00 00:00:00'),
(1072, 'Reads the word and finds the picture', 268, 4, 1, NULL, '2018-07-31 06:36:05', NULL, '0000-00-00 00:00:00'),
(1073, 'L1', 269, 1, 1, NULL, '2018-07-31 06:38:14', NULL, '0000-00-00 00:00:00'),
(1074, 'L2', 269, 2, 1, NULL, '2018-07-31 06:38:14', NULL, '0000-00-00 00:00:00'),
(1075, 'L3', 269, 3, 1, NULL, '2018-07-31 06:38:14', NULL, '0000-00-00 00:00:00'),
(1076, 'L4', 269, 4, 1, NULL, '2018-07-31 06:38:14', NULL, '0000-00-00 00:00:00'),
(1077, 'Unable to do the map', 270, 1, 1, NULL, '2018-07-31 06:42:47', NULL, '0000-00-00 00:00:00'),
(1078, 'Puts few on control map With help', 270, 2, 1, NULL, '2018-07-31 06:42:47', NULL, '0000-00-00 00:00:00'),
(1079, 'Places on control map,struggles to put back ', 270, 3, 1, NULL, '2018-07-31 06:42:47', NULL, '0000-00-00 00:00:00'),
(1080, 'Places all pieces and moves them back to puzzle', 270, 4, 1, NULL, '2018-07-31 06:42:47', NULL, '0000-00-00 00:00:00'),
(1081, 'Unable to pronounce/identify', 271, 1, 1, NULL, '2018-07-31 06:44:50', NULL, '0000-00-00 00:00:00'),
(1082, 'Identifies and reads words containing ei ', 271, 2, 1, NULL, '2018-07-31 06:44:50', NULL, '0000-00-00 00:00:00'),
(1083, 'Able to give words that contain ei', 271, 3, 1, NULL, '2018-07-31 06:44:50', NULL, '0000-00-00 00:00:00'),
(1084, 'Hear words containing ei writes/ spells accurately', 271, 4, 1, NULL, '2018-07-31 06:44:50', NULL, '0000-00-00 00:00:00'),
(1085, 'Unable to pronounce/identify', 272, 1, 1, NULL, '2018-07-31 06:46:41', NULL, '0000-00-00 00:00:00'),
(1086, 'Identifies and reads words containing ai ', 272, 2, 1, NULL, '2018-07-31 06:46:41', NULL, '0000-00-00 00:00:00'),
(1087, 'Able to give words that contain ai', 272, 3, 1, NULL, '2018-07-31 06:46:41', NULL, '0000-00-00 00:00:00'),
(1088, 'Hear words containing ai writes/ spells accurately', 272, 4, 1, NULL, '2018-07-31 06:46:41', NULL, '0000-00-00 00:00:00'),
(1089, 'Unable to pronounce/identify', 273, 1, 1, NULL, '2018-07-31 06:48:55', NULL, '0000-00-00 00:00:00'),
(1090, 'Identifies and reads words containing ay ', 273, 2, 1, NULL, '2018-07-31 06:48:55', NULL, '0000-00-00 00:00:00'),
(1091, 'Able to give words that contain ay', 273, 3, 1, NULL, '2018-07-31 06:48:55', NULL, '0000-00-00 00:00:00'),
(1092, 'Hear words containing ay writes/ spells accurately', 273, 4, 1, NULL, '2018-07-31 06:48:55', NULL, '0000-00-00 00:00:00'),
(1093, 'Unable to understand', 274, 1, 1, NULL, '2018-07-31 06:51:52', NULL, '0000-00-00 00:00:00'),
(1094, 'Commits errors in placing insets ', 274, 2, 1, NULL, '2018-07-31 06:51:52', NULL, '0000-00-00 00:00:00'),
(1095, 'Places insets in correct sequence ', 274, 3, 1, NULL, '2018-07-31 06:51:52', NULL, '0000-00-00 00:00:00'),
(1096, 'Names and explains the stages', 274, 4, 1, NULL, '2018-07-31 06:51:52', NULL, '0000-00-00 00:00:00'),
(1097, 'Unable to pronounce/identify', 275, 1, 1, NULL, '2018-07-31 06:56:31', NULL, '0000-00-00 00:00:00'),
(1098, 'Identifies and reads words containing ey', 275, 2, 1, NULL, '2018-07-31 06:56:31', NULL, '0000-00-00 00:00:00'),
(1099, 'Able to give words that contain ey', 275, 3, 1, NULL, '2018-07-31 06:56:31', NULL, '0000-00-00 00:00:00'),
(1100, 'Hear words containing ey writes/ spells accurately', 275, 4, 1, NULL, '2018-07-31 06:56:31', NULL, '0000-00-00 00:00:00'),
(1101, 'Unable to match w/o control card', 276, 1, 1, NULL, '2018-07-31 08:19:56', NULL, '0000-00-00 00:00:00'),
(1102, 'Matches few pictures and first letters', 276, 2, 1, NULL, '2018-07-31 08:19:56', NULL, '0000-00-00 00:00:00'),
(1103, 'Matches some pictures and words reading with difficulty ', 276, 3, 1, NULL, '2018-07-31 08:19:56', NULL, '0000-00-00 00:00:00'),
(1104, 'Reads the word and finds the picture', 276, 4, 1, NULL, '2018-07-31 08:19:56', NULL, '0000-00-00 00:00:00'),
(1105, 'Unable to identify', 277, 1, 1, NULL, '2018-07-31 08:24:22', NULL, '0000-00-00 00:00:00'),
(1106, 'Identify 1-3 solids ', 277, 2, 1, NULL, '2018-07-31 08:24:22', NULL, '0000-00-00 00:00:00'),
(1107, 'Identifies many solids ', 277, 3, 1, NULL, '2018-07-31 08:24:22', NULL, '0000-00-00 00:00:00'),
(1108, 'Identify an solids', 277, 4, 1, NULL, '2018-07-31 08:24:22', NULL, '0000-00-00 00:00:00'),
(1109, 'Unable to read', 278, 1, 1, NULL, '2018-07-31 08:25:29', NULL, '0000-00-00 00:00:00'),
(1110, 'Able to read with some errors ', 278, 2, 1, NULL, '2018-07-31 08:25:29', NULL, '0000-00-00 00:00:00'),
(1111, 'Able to read all words well ', 278, 3, 1, NULL, '2018-07-31 08:25:29', NULL, '0000-00-00 00:00:00'),
(1112, 'Reads all words without context', 278, 4, 1, NULL, '2018-07-31 08:25:29', NULL, '0000-00-00 00:00:00'),
(1113, 'Unable to do', 279, 1, 1, NULL, '2018-07-31 08:27:14', NULL, '0000-00-00 00:00:00'),
(1114, 'Fills the directions sheet With errors ', 279, 2, 1, NULL, '2018-07-31 08:27:14', NULL, '0000-00-00 00:00:00'),
(1115, 'Fills the direction WS correctly ', 279, 3, 1, NULL, '2018-07-31 08:27:14', NULL, '0000-00-00 00:00:00'),
(1116, 'Changes layout and repeats exercise', 279, 4, 1, NULL, '2018-07-31 08:27:14', NULL, '0000-00-00 00:00:00'),
(1117, 'Unable to understand usage', 280, 1, 1, NULL, '2018-07-31 08:28:31', NULL, '0000-00-00 00:00:00'),
(1118, 'Follows concept, notes big/ small when lens moves ', 280, 2, 1, NULL, '2018-07-31 08:28:31', NULL, '0000-00-00 00:00:00'),
(1119, 'Experiments with diff objects, notes changes ', 280, 3, 1, NULL, '2018-07-31 08:28:31', NULL, '0000-00-00 00:00:00'),
(1120, 'Experiments with different lens combinations', 280, 4, 1, NULL, '2018-07-31 08:28:31', NULL, '0000-00-00 00:00:00'),
(1121, 'Unable to understand usage', 281, 1, 1, NULL, '2018-07-31 08:29:54', NULL, '0000-00-00 00:00:00'),
(1122, 'Follows concept, notes big/ small when lens moves ', 281, 2, 1, NULL, '2018-07-31 08:29:54', NULL, '0000-00-00 00:00:00'),
(1123, 'Experiments with diff objects, notes changes ', 281, 3, 1, NULL, '2018-07-31 08:29:54', NULL, '0000-00-00 00:00:00'),
(1124, 'Experiments with different lens combinations', 281, 4, 1, NULL, '2018-07-31 08:29:54', NULL, '0000-00-00 00:00:00'),
(1125, 'Unable to match w/o control card', 282, 1, 1, NULL, '2018-07-31 08:39:21', NULL, '0000-00-00 00:00:00'),
(1126, 'Matches few pictures and first letters', 282, 2, 1, NULL, '2018-07-31 08:39:21', NULL, '0000-00-00 00:00:00'),
(1127, 'Matches some pictures and words reading with difficulty ', 282, 3, 1, NULL, '2018-07-31 08:39:21', NULL, '0000-00-00 00:00:00'),
(1128, 'Reads the word and finds the picture', 282, 4, 1, NULL, '2018-07-31 08:39:21', NULL, '0000-00-00 00:00:00'),
(1129, 'Unable to understand', 283, 1, 1, NULL, '2018-07-31 08:43:14', NULL, '0000-00-00 00:00:00'),
(1130, 'Subtracts with difficulty ', 283, 2, 1, NULL, '2018-07-31 08:43:14', NULL, '0000-00-00 00:00:00'),
(1131, 'Subtracts well with some errors ', 283, 3, 1, NULL, '2018-07-31 08:43:14', NULL, '0000-00-00 00:00:00'),
(1132, 'Subtracts well without errors', 283, 4, 1, NULL, '2018-07-31 08:43:14', NULL, '0000-00-00 00:00:00'),
(1133, 'L1', 284, 1, 1, NULL, '2018-07-31 08:44:12', NULL, '0000-00-00 00:00:00'),
(1134, 'L2', 284, 2, 1, NULL, '2018-07-31 08:44:13', NULL, '0000-00-00 00:00:00'),
(1135, 'L3', 284, 3, 1, NULL, '2018-07-31 08:44:13', NULL, '0000-00-00 00:00:00'),
(1136, 'L4', 284, 4, 1, NULL, '2018-07-31 08:44:13', NULL, '0000-00-00 00:00:00'),
(1137, 'Cannot differentiate', 285, 1, 1, NULL, '2018-07-31 08:45:52', NULL, '0000-00-00 00:00:00'),
(1138, 'Understands they have similar sound- say that rts sounds same ', 285, 2, 1, NULL, '2018-07-31 08:45:52', NULL, '0000-00-00 00:00:00'),
(1139, 'Reads words that contain oi/oy well', 285, 3, 1, NULL, '2018-07-31 08:45:52', NULL, '0000-00-00 00:00:00'),
(1140, 'Hears a word containing oi/ oy, spells accurately (writing/oral)', 285, 4, 1, NULL, '2018-07-31 08:45:52', NULL, '0000-00-00 00:00:00'),
(1141, 'Removes randomly, arrangement is not very neat', 286, 1, 1, NULL, '2018-08-01 07:02:06', NULL, '0000-00-00 00:00:00'),
(1142, 'Removes randomly, arrangement is in line, puts back randomly', 286, 2, 1, NULL, '2018-08-01 07:02:06', NULL, '0000-00-00 00:00:00'),
(1143, 'Removes in order, arranges in line, put back randomly', 286, 3, 1, NULL, '2018-08-01 07:02:06', NULL, '0000-00-00 00:00:00'),
(1144, 'Perfectly removes ion order, arranges in a straight line and put back in orderly manner.', 286, 4, 1, NULL, '2018-08-01 07:02:06', NULL, '0000-00-00 00:00:00'),
(1145, 'Unable to pour into 3 glasses', 287, 1, 1, NULL, '2018-08-01 07:13:35', NULL, '0000-00-00 00:00:00'),
(1146, 'Pours into 3 glasses with spillage', 287, 2, 1, NULL, '2018-08-01 07:13:35', NULL, '0000-00-00 00:00:00'),
(1147, 'Pour into 3 glasses without much spillage ', 287, 3, 1, NULL, '2018-08-01 07:13:35', NULL, '0000-00-00 00:00:00'),
(1148, 'Pours without spillage into 3 glasses exactly', 287, 4, 1, NULL, '2018-08-01 07:13:35', NULL, '0000-00-00 00:00:00'),
(1149, 'Unable to pair correctly ', 288, 1, 1, NULL, '2018-08-04 14:15:51', NULL, '0000-00-00 00:00:00'),
(1150, 'Pairs wttn some difficulty ', 288, 2, 1, NULL, '2018-08-04 14:15:51', NULL, '0000-00-00 00:00:00'),
(1151, 'Pairs all perfectly easily', 288, 3, 1, NULL, '2018-08-04 14:15:51', NULL, '0000-00-00 00:00:00'),
(1152, 'Can pair cards', 288, 4, 1, NULL, '2018-08-04 14:15:51', NULL, '0000-00-00 00:00:00'),
(1153, 'Unable to arrange rods', 289, 1, 1, NULL, '2018-08-04 14:27:54', NULL, '0000-00-00 00:00:00'),
(1154, 'Arranges wrth some trialand error', 289, 2, 1, NULL, '2018-08-04 14:27:54', NULL, '0000-00-00 00:00:00'),
(1155, 'Arranges well taking correct rods in the right order ', 289, 3, 1, NULL, '2018-08-04 14:27:54', NULL, '0000-00-00 00:00:00'),
(1156, 'Arranges spontaneously in neat rows', 289, 4, 1, NULL, '2018-08-04 14:27:54', NULL, '0000-00-00 00:00:00'),
(1157, 'Unable to observe any change', 290, 1, 1, NULL, '2018-08-04 14:31:22', NULL, '0000-00-00 00:00:00'),
(1158, 'Can observe tnat there is a change ', 290, 2, 1, NULL, '2018-08-04 14:31:22', NULL, '0000-00-00 00:00:00'),
(1159, 'Identifies exactly what changes everyday ', 290, 3, 1, NULL, '2018-08-04 14:31:22', NULL, '0000-00-00 00:00:00'),
(1160, 'Changes data by himself', 290, 4, 1, NULL, '2018-08-04 14:31:22', NULL, '0000-00-00 00:00:00'),
(1161, 'Unable to match', 291, 1, 1, NULL, '2018-08-04 14:38:54', NULL, '0000-00-00 00:00:00'),
(1162, 'Matches 1-2 pairs', 291, 2, 1, NULL, '2018-08-04 14:38:54', NULL, '0000-00-00 00:00:00'),
(1163, 'Matches majority of the pictures ', 291, 3, 1, NULL, '2018-08-04 14:38:54', NULL, '0000-00-00 00:00:00'),
(1164, 'Matches all pictures confidently', 291, 4, 1, NULL, '2018-08-04 14:38:54', NULL, '0000-00-00 00:00:00'),
(1165, 'Unable to grade', 292, 1, 1, NULL, '2018-08-04 14:45:59', NULL, '0000-00-00 00:00:00'),
(1166, 'Grades with lot of trial and error ', 292, 2, 1, NULL, '2018-08-04 14:45:59', NULL, '0000-00-00 00:00:00'),
(1167, 'Grades all easily', 292, 3, 1, NULL, '2018-08-04 14:45:59', NULL, '0000-00-00 00:00:00'),
(1168, 'Grades circles on paper', 292, 4, 1, NULL, '2018-08-04 14:45:59', NULL, '0000-00-00 00:00:00'),
(1169, 'Unable to use the forceps ', 293, 1, 1, NULL, '2018-08-04 14:49:57', NULL, '0000-00-00 00:00:00'),
(1170, 'Transfer 1 with great difficulty ', 293, 2, 1, NULL, '2018-08-04 14:49:57', NULL, '0000-00-00 00:00:00'),
(1171, 'Transfer 3-4 balls with difficulty ', 293, 3, 1, NULL, '2018-08-04 14:49:57', NULL, '0000-00-00 00:00:00'),
(1172, 'Comfortably transfers 1O balls', 293, 4, 1, NULL, '2018-08-04 14:49:57', NULL, '0000-00-00 00:00:00'),
(1173, 'Unable to get tne first sound', 294, 1, 1, NULL, '2018-08-04 14:55:21', NULL, '0000-00-00 00:00:00'),
(1174, 'Gets the first sound with errors', 294, 2, 1, NULL, '2018-08-04 14:55:21', NULL, '0000-00-00 00:00:00'),
(1175, 'Gets first sound with some trials ', 294, 3, 1, NULL, '2018-08-04 14:55:21', NULL, '0000-00-00 00:00:00'),
(1176, 'Gets the first sound perfectly', 294, 4, 1, NULL, '2018-08-04 14:55:21', NULL, '0000-00-00 00:00:00'),
(1177, 'Holds the pieces, unable to pair', 295, 1, 1, NULL, '2018-08-04 15:00:56', NULL, '0000-00-00 00:00:00'),
(1178, 'Pairs by seeing and feeling ', 295, 2, 1, NULL, '2018-08-04 15:00:56', NULL, '0000-00-00 00:00:00'),
(1179, 'Pairs all visually', 295, 3, 1, NULL, '2018-08-04 15:00:56', NULL, '0000-00-00 00:00:00'),
(1180, 'Perfectly pairs all 6 blindfolded', 295, 4, 1, NULL, '2018-08-04 15:00:56', NULL, '0000-00-00 00:00:00'),
(1181, 'L1', 296, 1, 1, NULL, '2018-08-04 15:08:30', NULL, '0000-00-00 00:00:00'),
(1182, 'L2', 296, 2, 1, NULL, '2018-08-04 15:08:30', NULL, '0000-00-00 00:00:00'),
(1183, 'L3', 296, 3, 1, NULL, '2018-08-04 15:08:30', NULL, '0000-00-00 00:00:00'),
(1184, 'L4', 296, 4, 1, NULL, '2018-08-04 15:08:30', NULL, '0000-00-00 00:00:00'),
(1189, 'Unable toidentify succeeding sound', 298, 1, 1, NULL, '2018-08-04 15:18:04', NULL, '0000-00-00 00:00:00'),
(1190, 'Identifies first sound and 1 succeeding sound ', 298, 2, 1, NULL, '2018-08-04 15:18:04', NULL, '0000-00-00 00:00:00'),
(1191, 'Identifies more than one succeeding sound ', 298, 3, 1, NULL, '2018-08-04 15:18:04', NULL, '0000-00-00 00:00:00'),
(1192, 'Identifies all sounds in sequence', 298, 4, 1, NULL, '2018-08-04 15:18:04', NULL, '0000-00-00 00:00:00'),
(1193, 'Unable to match insets with cards', 299, 1, 1, NULL, '2018-08-04 15:34:31', NULL, '0000-00-00 00:00:00'),
(1194, 'Matches full and thick outlines with trials ', 299, 2, 1, NULL, '2018-08-04 15:34:31', NULL, '0000-00-00 00:00:00'),
(1195, 'Matches thin outlines with trials', 299, 3, 1, NULL, '2018-08-04 15:34:31', NULL, '0000-00-00 00:00:00'),
(1196, 'Matches all shapes easily without trials', 299, 4, 1, NULL, '2018-08-04 15:34:31', NULL, '0000-00-00 00:00:00'),
(1197, 'Arranges wrth some errors', 300, 1, 1, NULL, '2018-08-04 16:52:47', NULL, '0000-00-00 00:00:00'),
(1198, 'Arranges wrth display support with trials ', 300, 2, 1, NULL, '2018-08-04 16:52:47', NULL, '0000-00-00 00:00:00'),
(1199, 'Arranges well wrth display support ', 300, 3, 1, NULL, '2018-08-04 16:52:47', NULL, '0000-00-00 00:00:00'),
(1200, 'Arranges perfectly without display', 300, 4, 1, NULL, '2018-08-04 16:52:47', NULL, '0000-00-00 00:00:00'),
(1201, 'Unable to grade', 301, 1, 1, NULL, '2018-08-04 16:55:05', NULL, '0000-00-00 00:00:00'),
(1202, 'Grades with lot of trial and error ', 301, 2, 1, NULL, '2018-08-04 16:55:05', NULL, '0000-00-00 00:00:00'),
(1203, 'Grades all easily', 301, 3, 1, NULL, '2018-08-04 16:55:05', NULL, '0000-00-00 00:00:00'),
(1204, 'Grades rectangles on paper', 301, 4, 1, NULL, '2018-08-04 16:55:05', NULL, '0000-00-00 00:00:00'),
(1205, 'Unable to tie', 302, 1, 1, NULL, '2018-08-04 16:59:44', NULL, '0000-00-00 00:00:00'),
(1206, 'Laces with help and with difficulty ', 302, 2, 1, NULL, '2018-08-04 16:59:44', NULL, '0000-00-00 00:00:00'),
(1207, 'Laces fairly well taking time ', 302, 3, 1, NULL, '2018-08-04 16:59:44', NULL, '0000-00-00 00:00:00'),
(1208, 'Laces easily and comfortably', 302, 4, 1, NULL, '2018-08-04 16:59:44', NULL, '0000-00-00 00:00:00'),
(1209, 'Cannot pair', 303, 1, 1, NULL, '2018-08-04 17:02:04', NULL, '0000-00-00 00:00:00'),
(1210, 'Pairloudest and softest accurately ', 303, 2, 1, NULL, '2018-08-04 17:02:04', NULL, '0000-00-00 00:00:00'),
(1211, 'Pair all 4 boxes accurately ', 303, 3, 1, NULL, '2018-08-04 17:02:04', NULL, '0000-00-00 00:00:00'),
(1212, 'Identifies loud and soft', 303, 4, 1, NULL, '2018-08-04 17:02:04', NULL, '0000-00-00 00:00:00'),
(1213, 'Unable to match', 304, 1, 1, NULL, '2018-08-04 17:05:51', NULL, '0000-00-00 00:00:00'),
(1214, 'Matches 1-2 pairs', 304, 2, 1, NULL, '2018-08-04 17:05:51', NULL, '0000-00-00 00:00:00'),
(1215, 'Matches majority of the pictures ', 304, 3, 1, NULL, '2018-08-04 17:05:51', NULL, '0000-00-00 00:00:00'),
(1216, 'Matches pictures confidently', 304, 4, 1, NULL, '2018-08-04 17:05:51', NULL, '0000-00-00 00:00:00'),
(1217, 'Cannot understand', 305, 1, 1, NULL, '2018-08-04 17:11:06', NULL, '0000-00-00 00:00:00'),
(1218, 'Picks 2 right ones out of 5 ', 305, 2, 1, NULL, '2018-08-04 17:11:06', NULL, '0000-00-00 00:00:00'),
(1219, 'Complete 1 sheet accurately ', 305, 3, 1, NULL, '2018-08-04 17:11:06', NULL, '0000-00-00 00:00:00'),
(1220, 'Completes both sheets perfectly', 305, 4, 1, NULL, '2018-08-04 17:11:06', NULL, '0000-00-00 00:00:00'),
(1221, 'Unable to follow zero', 306, 1, 1, NULL, '2018-08-04 17:14:56', NULL, '0000-00-00 00:00:00'),
(1222, 'Understands zero means nothing ', 306, 2, 1, NULL, '2018-08-04 17:14:56', NULL, '0000-00-00 00:00:00'),
(1223, 'Applies concept of zero to real life ', 306, 3, 1, NULL, '2018-08-04 17:14:56', NULL, '0000-00-00 00:00:00'),
(1224, 'Application of zero in decimal system', 306, 4, 1, NULL, '2018-08-04 17:14:56', NULL, '0000-00-00 00:00:00'),
(1229, 'Unable to hold the pencil', 308, 1, 1, NULL, '2018-08-04 17:20:31', NULL, '0000-00-00 00:00:00'),
(1230, 'Holds the pencil , moves unsteadily ', 308, 2, 1, NULL, '2018-08-04 17:20:31', NULL, '0000-00-00 00:00:00'),
(1231, 'Move pencil fairly steadily ', 308, 3, 1, NULL, '2018-08-04 17:20:31', NULL, '0000-00-00 00:00:00'),
(1232, 'Accurately moves pencil non- stop', 308, 4, 1, NULL, '2018-08-04 17:20:31', NULL, '0000-00-00 00:00:00'),
(1233, 'Unable to sequence', 309, 1, 1, NULL, '2018-08-04 17:24:09', NULL, '0000-00-00 00:00:00'),
(1234, 'Sequences 1-2 patterns', 309, 2, 1, NULL, '2018-08-04 17:24:09', NULL, '0000-00-00 00:00:00'),
(1235, ' Sequences all patterns correctly taking a little time ', 309, 3, 1, NULL, '2018-08-04 17:24:09', NULL, '0000-00-00 00:00:00'),
(1236, 'Sequences all patterns instantly', 309, 4, 1, NULL, '2018-08-04 17:24:09', NULL, '0000-00-00 00:00:00'),
(1237, 'Cannot match pictures ', 310, 1, 1, NULL, '2018-08-04 17:28:07', NULL, '0000-00-00 00:00:00'),
(1238, 'Matches 1-2 sequences ', 310, 2, 1, NULL, '2018-08-04 17:28:07', NULL, '0000-00-00 00:00:00'),
(1239, 'Matches 3-4 patterns', 310, 3, 1, NULL, '2018-08-04 17:28:07', NULL, '0000-00-00 00:00:00'),
(1240, 'Select. place all 6 picts accurately', 310, 4, 1, NULL, '2018-08-04 17:28:07', NULL, '0000-00-00 00:00:00'),
(1245, 'Arranges with some errors', 312, 1, 1, NULL, '2018-08-04 17:35:25', NULL, '0000-00-00 00:00:00'),
(1246, 'Visually examine. stack largest to small horizontally ', 312, 2, 1, NULL, '2018-08-04 17:35:25', NULL, '0000-00-00 00:00:00'),
(1247, 'Finds the largest or smallest on paper', 312, 3, 1, NULL, '2018-08-04 17:35:25', NULL, '0000-00-00 00:00:00'),
(1248, 'Grades abstract trapezoids on paper', 312, 4, 1, NULL, '2018-08-04 17:35:25', NULL, '0000-00-00 00:00:00'),
(1249, 'Unable to pair sterognostically', 313, 1, 1, NULL, '2018-08-04 17:37:30', NULL, '0000-00-00 00:00:00'),
(1250, 'Pairs 1-2 with great difficulty ', 313, 2, 1, NULL, '2018-08-04 17:37:30', NULL, '0000-00-00 00:00:00'),
(1251, 'Pairs at least 3 easily', 313, 3, 1, NULL, '2018-08-04 17:37:30', NULL, '0000-00-00 00:00:00'),
(1252, 'Pairs all 5 with ease', 313, 4, 1, NULL, '2018-08-04 17:37:30', NULL, '0000-00-00 00:00:00'),
(1253, 'L1', 314, 1, 1, NULL, '2018-08-04 17:40:07', NULL, '0000-00-00 00:00:00'),
(1254, 'L2', 314, 2, 1, NULL, '2018-08-04 17:40:07', NULL, '0000-00-00 00:00:00'),
(1255, 'L3', 314, 3, 1, NULL, '2018-08-04 17:40:07', NULL, '0000-00-00 00:00:00'),
(1256, 'L4', 314, 4, 1, NULL, '2018-08-04 17:40:07', NULL, '0000-00-00 00:00:00'),
(1257, 'Draws dots, adds well, some errors in carry over ', 315, 1, 1, NULL, '2018-08-05 08:42:34', NULL, '0000-00-00 00:00:00'),
(1258, 'Draws dots and adds perfectly', 315, 2, 1, NULL, '2018-08-05 08:42:34', NULL, '0000-00-00 00:00:00'),
(1259, 'Understands addition is same in every column ', 315, 3, 1, NULL, '2018-08-05 08:42:34', NULL, '0000-00-00 00:00:00'),
(1260, 'Follows abstraction of carryover', 315, 4, 1, NULL, '2018-08-05 08:42:34', NULL, '0000-00-00 00:00:00'),
(1261, 'Unable to do', 316, 1, 1, NULL, '2018-08-05 08:45:41', NULL, '0000-00-00 00:00:00'),
(1262, 'Understands that there is a pattern to repeat numbers ', 316, 2, 1, NULL, '2018-08-05 08:45:41', NULL, '0000-00-00 00:00:00'),
(1263, 'Able to record the table fairly well', 316, 3, 1, NULL, '2018-08-05 08:45:41', NULL, '0000-00-00 00:00:00'),
(1264, 'Can record and read the multiplication tables easily', 316, 4, 1, NULL, '2018-08-05 08:45:41', NULL, '0000-00-00 00:00:00'),
(1265, 'Unable to assemble', 317, 1, 1, NULL, '2018-08-05 08:47:38', NULL, '0000-00-00 00:00:00'),
(1266, 'Assembles parts of the arch ', 317, 2, 1, NULL, '2018-08-05 08:47:38', NULL, '0000-00-00 00:00:00'),
(1267, 'Assembles with help from adult ', 317, 3, 1, NULL, '2018-08-05 08:47:38', NULL, '0000-00-00 00:00:00'),
(1268, 'Assembles Independently', 317, 4, 1, NULL, '2018-08-05 08:47:38', NULL, '0000-00-00 00:00:00'),
(1269, 'Unable to match number with qty ', 318, 1, 1, NULL, '2018-08-05 09:49:04', NULL, '0000-00-00 00:00:00'),
(1270, 'Matches at least 5 out 10 easily ', 318, 2, 1, NULL, '2018-08-05 09:49:04', NULL, '0000-00-00 00:00:00'),
(1271, 'Matches all 10 pieces easily ', 318, 3, 1, NULL, '2018-08-05 09:49:04', NULL, '0000-00-00 00:00:00'),
(1272, 'Counts and writes on paper', 318, 4, 1, NULL, '2018-08-05 09:49:04', NULL, '0000-00-00 00:00:00'),
(1273, 'Cannot match any ', 319, 1, 1, NULL, '2018-08-05 09:54:06', NULL, '0000-00-00 00:00:00'),
(1274, 'Matches 1-2 sequences ', 319, 2, 1, NULL, '2018-08-05 09:54:06', NULL, '0000-00-00 00:00:00'),
(1275, 'Matches 3-4 patterns', 319, 3, 1, NULL, '2018-08-05 09:54:06', NULL, '0000-00-00 00:00:00'),
(1276, 'Selects. accurately place all 6 pictures', 319, 4, 1, NULL, '2018-08-05 09:54:06', NULL, '0000-00-00 00:00:00'),
(1277, 'Unable to get corresponding pair correctly', 320, 1, 1, NULL, '2018-08-05 09:55:50', NULL, '0000-00-00 00:00:00'),
(1278, 'Brings the exact inset', 320, 2, 1, NULL, '2018-08-05 09:55:50', NULL, '0000-00-00 00:00:00'),
(1279, 'Able to find some in different places ', 320, 3, 1, NULL, '2018-08-05 09:55:50', NULL, '0000-00-00 00:00:00'),
(1280, 'Brings the exact one from the right place', 320, 4, 1, NULL, '2018-08-05 09:55:50', NULL, '0000-00-00 00:00:00'),
(1281, 'Unable to count ', 321, 1, 1, NULL, '2018-08-05 09:58:16', NULL, '0000-00-00 00:00:00'),
(1282, 'Counts fairly well ', 321, 2, 1, NULL, '2018-08-05 09:58:16', NULL, '0000-00-00 00:00:00'),
(1283, 'Counts 1 to 10 easily', 321, 3, 1, NULL, '2018-08-05 09:58:16', NULL, '0000-00-00 00:00:00'),
(1284, 'Counts and writes on paper', 321, 4, 1, NULL, '2018-08-05 09:58:16', NULL, '0000-00-00 00:00:00'),
(1285, 'Unable to match number to quantity', 322, 1, 1, NULL, '2018-08-05 09:59:57', NULL, '0000-00-00 00:00:00'),
(1286, 'Match number to quantity for some ', 322, 2, 1, NULL, '2018-08-05 09:59:57', NULL, '0000-00-00 00:00:00'),
(1287, 'Matches number to quantity for all ', 322, 3, 1, NULL, '2018-08-05 09:59:57', NULL, '0000-00-00 00:00:00'),
(1288, 'Given 5 rods, able to pick number 5', 322, 4, 1, NULL, '2018-08-05 09:59:57', NULL, '0000-00-00 00:00:00'),
(1289, 'Unable to count accurately ', 323, 1, 1, NULL, '2018-08-05 10:01:49', NULL, '0000-00-00 00:00:00'),
(1290, 'Counts fairly well', 323, 2, 1, NULL, '2018-08-05 10:01:49', NULL, '0000-00-00 00:00:00'),
(1291, 'Counts exactly very easily ', 323, 3, 1, NULL, '2018-08-05 10:01:49', NULL, '0000-00-00 00:00:00'),
(1292, 'Identifies quantity without counters', 323, 4, 1, NULL, '2018-08-05 10:01:50', NULL, '0000-00-00 00:00:00'),
(1297, 'Cannot identify starting sound', 325, 1, 1, NULL, '2018-08-05 10:07:39', NULL, '0000-00-00 00:00:00'),
(1298, 'Identifies many starting sounds ', 325, 2, 1, NULL, '2018-08-05 10:07:39', NULL, '0000-00-00 00:00:00'),
(1299, 'Identifies all starting sound', 325, 3, 1, NULL, '2018-08-05 10:07:39', NULL, '0000-00-00 00:00:00'),
(1300, 'Identifies starting sound in worksheets', 325, 4, 1, NULL, '2018-08-05 10:07:39', NULL, '0000-00-00 00:00:00'),
(1301, 'Unable to grade', 326, 1, 1, NULL, '2018-08-05 10:11:33', NULL, '0000-00-00 00:00:00'),
(1302, 'Grades few alternate shades', 326, 2, 1, NULL, '2018-08-05 10:11:33', NULL, '0000-00-00 00:00:00'),
(1303, 'Grades all shades with trial and error ', 326, 3, 1, NULL, '2018-08-05 10:11:33', NULL, '0000-00-00 00:00:00'),
(1304, 'Grades all shades easily', 326, 4, 1, NULL, '2018-08-05 10:11:33', NULL, '0000-00-00 00:00:00'),
(1305, 'Places randomly', 327, 1, 1, NULL, '2018-08-05 10:14:13', NULL, '0000-00-00 00:00:00'),
(1306, 'Stacks diameter cylinders well ', 327, 2, 1, NULL, '2018-08-05 10:14:13', NULL, '0000-00-00 00:00:00'),
(1307, 'Stacks height cylinders with falls ', 327, 3, 1, NULL, '2018-08-05 10:14:13', NULL, '0000-00-00 00:00:00'),
(1308, 'Stacks height perfectly', 327, 4, 1, NULL, '2018-08-05 10:14:13', NULL, '0000-00-00 00:00:00'),
(1309, 'Cannot identify at all', 328, 1, 1, NULL, '2018-08-05 10:17:51', NULL, '0000-00-00 00:00:00'),
(1310, 'Estimates with a lot of trial and error ', 328, 2, 1, NULL, '2018-08-05 10:17:51', NULL, '0000-00-00 00:00:00'),
(1311, 'Estimates fairly well', 328, 3, 1, NULL, '2018-08-05 10:17:51', NULL, '0000-00-00 00:00:00'),
(1312, 'Able to exactly identify the next size', 328, 4, 1, NULL, '2018-08-05 10:17:51', NULL, '0000-00-00 00:00:00'),
(1313, 'Unable to hold the pencil', 329, 1, 1, NULL, '2018-08-05 10:26:25', NULL, '0000-00-00 00:00:00'),
(1314, 'Holds pencil and moves unsteadily ', 329, 2, 1, NULL, '2018-08-05 10:26:25', NULL, '0000-00-00 00:00:00'),
(1315, 'Moves pencil fairly steadily ', 329, 3, 1, NULL, '2018-08-05 10:26:25', NULL, '0000-00-00 00:00:00'),
(1316, 'Accurately moves pencil non-stop', 329, 4, 1, NULL, '2018-08-05 10:26:25', NULL, '0000-00-00 00:00:00'),
(1317, 'Unable to match w/o control card ', 330, 1, 1, NULL, '2018-08-05 10:28:11', NULL, '0000-00-00 00:00:00'),
(1318, 'Matches few pictures and first letters', 330, 2, 1, NULL, '2018-08-05 10:28:11', NULL, '0000-00-00 00:00:00'),
(1319, 'Matches some pictures and words reading with difficulty ', 330, 3, 1, NULL, '2018-08-05 10:28:11', NULL, '0000-00-00 00:00:00'),
(1320, 'Reads the word and finds the picture', 330, 4, 1, NULL, '2018-08-05 10:28:11', NULL, '0000-00-00 00:00:00'),
(1321, 'Unable to create', 331, 1, 1, NULL, '2018-08-05 10:30:09', NULL, '0000-00-00 00:00:00'),
(1322, 'Creates 1-2 simple patterns ', 331, 2, 1, NULL, '2018-08-05 10:30:09', NULL, '0000-00-00 00:00:00'),
(1323, 'Creates many simple patterns', 331, 3, 1, NULL, '2018-08-05 10:30:09', NULL, '0000-00-00 00:00:00'),
(1324, 'Creates variety of tiling/ patterns', 331, 4, 1, NULL, '2018-08-05 10:30:09', NULL, '0000-00-00 00:00:00'),
(1325, 'Unable to get both sounds', 332, 1, 1, NULL, '2018-08-05 10:32:25', NULL, '0000-00-00 00:00:00'),
(1326, 'Gets the first and last sound with errors ', 332, 2, 1, NULL, '2018-08-05 10:32:25', NULL, '0000-00-00 00:00:00'),
(1327, 'Gets first and last sound with some trials ', 332, 3, 1, NULL, '2018-08-05 10:32:25', NULL, '0000-00-00 00:00:00'),
(1328, 'Gets the first and last sound perfectly', 332, 4, 1, NULL, '2018-08-05 10:32:25', NULL, '0000-00-00 00:00:00'),
(1329, 'L1', 333, 1, 1, NULL, '2018-08-05 10:34:11', NULL, '0000-00-00 00:00:00'),
(1330, 'L2', 333, 2, 1, NULL, '2018-08-05 10:34:11', NULL, '0000-00-00 00:00:00'),
(1331, 'L3', 333, 3, 1, NULL, '2018-08-05 10:34:11', NULL, '0000-00-00 00:00:00'),
(1332, 'L4', 333, 4, 1, NULL, '2018-08-05 10:34:11', NULL, '0000-00-00 00:00:00'),
(1341, 'Randomly brings any piece', 336, 1, 1, NULL, '2018-08-05 10:40:25', NULL, '0000-00-00 00:00:00'),
(1342, 'Brings piece approximately in the range ', 336, 2, 1, NULL, '2018-08-05 10:40:25', NULL, '0000-00-00 00:00:00'),
(1343, 'Counts and brings exact piece', 336, 3, 1, NULL, '2018-08-05 10:40:25', NULL, '0000-00-00 00:00:00'),
(1344, 'Brings exact piece by examining', 336, 4, 1, NULL, '2018-08-05 10:40:25', NULL, '0000-00-00 00:00:00'),
(1345, 'Randomly brings any piece', 337, 1, 1, NULL, '2018-08-05 10:41:24', NULL, '0000-00-00 00:00:00'),
(1346, 'Brings piece approximately in the rang', 337, 2, 1, NULL, '2018-08-05 10:41:24', NULL, '0000-00-00 00:00:00'),
(1347, 'Counts and brings exact piece', 337, 3, 1, NULL, '2018-08-05 10:41:24', NULL, '0000-00-00 00:00:00'),
(1348, 'Brings exact piece by examining', 337, 4, 1, NULL, '2018-08-05 10:41:24', NULL, '0000-00-00 00:00:00'),
(1349, 'Unable to name any', 338, 1, 1, NULL, '2018-08-05 10:42:26', NULL, '0000-00-00 00:00:00'),
(1350, 'Names some', 338, 2, 1, NULL, '2018-08-05 10:42:26', NULL, '0000-00-00 00:00:00'),
(1351, 'Identifies and names all', 338, 3, 1, NULL, '2018-08-05 10:42:26', NULL, '0000-00-00 00:00:00'),
(1352, 'Starts identifying many 30 shapes around', 338, 4, 1, NULL, '2018-08-05 10:42:26', NULL, '0000-00-00 00:00:00'),
(1353, 'Unable to bring back the pair', 339, 1, 1, NULL, '2018-08-05 10:44:15', NULL, '0000-00-00 00:00:00'),
(1354, 'Brings back with errors', 339, 2, 1, NULL, '2018-08-05 10:44:15', NULL, '0000-00-00 00:00:00'),
(1355, 'Brings back fairly fast and accurately ', 339, 3, 1, NULL, '2018-08-05 10:44:15', NULL, '0000-00-00 00:00:00'),
(1356, 'Always brings back accurately and quickly', 339, 4, 1, NULL, '2018-08-05 10:44:15', NULL, '0000-00-00 00:00:00'),
(1357, 'Unable to match w/o control card', 340, 1, 1, NULL, '2018-08-05 10:50:36', NULL, '0000-00-00 00:00:00'),
(1358, 'Matches few pictures and first letters', 340, 2, 1, NULL, '2018-08-05 10:50:36', NULL, '0000-00-00 00:00:00'),
(1359, 'Matches some pictures and words reading with difficulty ', 340, 3, 1, NULL, '2018-08-05 10:50:36', NULL, '0000-00-00 00:00:00'),
(1360, 'Reads the word and finds the picture', 340, 4, 1, NULL, '2018-08-05 10:50:36', NULL, '0000-00-00 00:00:00'),
(1361, 'Unable to weave', 341, 1, 1, NULL, '2018-08-05 10:51:51', NULL, '0000-00-00 00:00:00'),
(1362, 'Weaves one row with help ', 341, 2, 1, NULL, '2018-08-05 10:51:51', NULL, '0000-00-00 00:00:00'),
(1363, 'Weaves one row without help ', 341, 3, 1, NULL, '2018-08-05 10:51:51', NULL, '0000-00-00 00:00:00'),
(1364, 'Weaves a few rows', 341, 4, 1, NULL, '2018-08-05 10:51:51', NULL, '0000-00-00 00:00:00'),
(1365, 'Unable to name any', 342, 1, 1, NULL, '2018-08-05 10:54:01', NULL, '0000-00-00 00:00:00'),
(1366, 'Able to identify few states on map ', 342, 2, 1, NULL, '2018-08-05 10:54:01', NULL, '0000-00-00 00:00:00'),
(1367, 'Able to identify most states on map ', 342, 3, 1, NULL, '2018-08-05 10:54:01', NULL, '0000-00-00 00:00:00'),
(1368, 'Sees shape and identifies', 342, 4, 1, NULL, '2018-08-05 10:54:01', NULL, '0000-00-00 00:00:00'),
(1369, 'Unable to identify landforms ', 343, 1, 1, NULL, '2018-08-05 10:55:14', NULL, '0000-00-00 00:00:00'),
(1370, 'Able to identify a few', 343, 2, 1, NULL, '2018-08-05 10:55:14', NULL, '0000-00-00 00:00:00'),
(1371, 'Able to identify all the landforms', 343, 3, 1, NULL, '2018-08-05 10:55:14', NULL, '0000-00-00 00:00:00'),
(1372, 'Pairs - follows relation between land-water', 343, 4, 1, NULL, '2018-08-05 10:55:14', NULL, '0000-00-00 00:00:00'),
(1373, 'Unable to understand', 344, 1, 1, NULL, '2018-08-05 10:57:13', NULL, '0000-00-00 00:00:00'),
(1374, 'Finds the difference with difficult', 344, 2, 1, NULL, '2018-08-05 10:57:13', NULL, '0000-00-00 00:00:00'),
(1375, 'Finds the difference well with some errors ', 344, 3, 1, NULL, '2018-08-05 10:57:13', NULL, '0000-00-00 00:00:00'),
(1376, 'Subtracts well without errors', 344, 4, 1, NULL, '2018-08-05 10:57:13', NULL, '0000-00-00 00:00:00'),
(1377, 'Can identfy oneself and family ', 345, 1, 1, NULL, '2018-08-05 11:00:18', NULL, '0000-00-00 00:00:00'),
(1378, 'Understands concept of family', 345, 2, 1, NULL, '2018-08-05 11:00:18', NULL, '0000-00-00 00:00:00'),
(1379, 'Draws pies, describes family in depth, self awareness  ', 345, 3, 1, NULL, '2018-08-05 11:00:18', NULL, '0000-00-00 00:00:00'),
(1380, 'Applies Maths. Lang, Geography to My family', 345, 4, 1, NULL, '2018-08-05 11:00:18', NULL, '0000-00-00 00:00:00'),
(1381, 'Unable to name any ', 346, 1, 1, NULL, '2018-08-05 11:01:51', NULL, '0000-00-00 00:00:00'),
(1382, 'Names a few', 346, 2, 1, NULL, '2018-08-05 11:01:51', NULL, '0000-00-00 00:00:00'),
(1383, 'Identifies any perfectly and randomly ', 346, 3, 1, NULL, '2018-08-05 11:01:51', NULL, '0000-00-00 00:00:00'),
(1384, 'Knows details like position, size etc', 346, 4, 1, NULL, '2018-08-05 11:01:51', NULL, '0000-00-00 00:00:00'),
(1385, 'Unable to pronounce/identify', 347, 1, 1, NULL, '2018-08-05 11:03:55', NULL, '0000-00-00 00:00:00'),
(1386, 'Understands oo can be said in 2 ways ', 347, 2, 1, NULL, '2018-08-05 11:03:55', NULL, '0000-00-00 00:00:00'),
(1387, 'Reads oo words with the right pronunciation', 347, 3, 1, NULL, '2018-08-05 11:03:55', NULL, '0000-00-00 00:00:00'),
(1388, 'Hear words containing oo writes/ spells accurately', 347, 4, 1, NULL, '2018-08-05 11:03:55', NULL, '0000-00-00 00:00:00'),
(1389, 'Unable to pronounce/identify', 348, 1, 1, NULL, '2018-08-05 11:05:50', NULL, '0000-00-00 00:00:00'),
(1390, 'Understands ui /an be said in 2 ways ', 348, 2, 1, NULL, '2018-08-05 11:05:50', NULL, '0000-00-00 00:00:00'),
(1391, 'Reads ui words with the right pronunciation', 348, 3, 1, NULL, '2018-08-05 11:05:50', NULL, '0000-00-00 00:00:00'),
(1392, 'Hear words containing ui writes/ spells accurately', 348, 4, 1, NULL, '2018-08-05 11:05:50', NULL, '0000-00-00 00:00:00'),
(1393, 'Cannot pronounce/ differentiate', 349, 1, 1, NULL, '2018-08-05 11:07:43', NULL, '0000-00-00 00:00:00'),
(1394, 'Understands ea can be said in 2 ways', 349, 2, 1, NULL, '2018-08-05 11:07:43', NULL, '0000-00-00 00:00:00'),
(1395, 'Reads words with ea with right pronunciation', 349, 3, 1, NULL, '2018-08-05 11:07:43', NULL, '0000-00-00 00:00:00'),
(1396, 'Hear words containing ea,writes/spells accurately', 349, 4, 1, NULL, '2018-08-05 11:07:43', NULL, '0000-00-00 00:00:00'),
(1397, 'Unable to pronounce/ identify', 350, 1, 1, NULL, '2018-08-05 11:09:19', NULL, '0000-00-00 00:00:00'),
(1398, 'Identifies and reads words containing sion ', 350, 2, 1, NULL, '2018-08-05 11:09:19', NULL, '0000-00-00 00:00:00'),
(1399, 'Able to give words that contain sion', 350, 3, 1, NULL, '2018-08-05 11:09:19', NULL, '0000-00-00 00:00:00'),
(1400, 'Hear words containing sion. writes/ spells accurately', 350, 4, 1, NULL, '2018-08-05 11:09:19', NULL, '0000-00-00 00:00:00'),
(1401, 'Unable to pronounce/ identify', 351, 1, 1, NULL, '2018-08-05 11:11:00', NULL, '0000-00-00 00:00:00'),
(1402, 'Identifies and reads words containing tion ', 351, 2, 1, NULL, '2018-08-05 11:11:00', NULL, '0000-00-00 00:00:00'),
(1403, 'Able to give words that contain tion', 351, 3, 1, NULL, '2018-08-05 11:11:00', NULL, '0000-00-00 00:00:00'),
(1404, 'Hear words containing lion,writes/ spells accurately', 351, 4, 1, NULL, '2018-08-05 11:11:00', NULL, '0000-00-00 00:00:00'),
(1405, 'Unable to pronounce/ identify', 352, 1, 1, NULL, '2018-08-05 11:12:31', NULL, '0000-00-00 00:00:00'),
(1406, 'Identifies and reads words containing ture ', 352, 2, 1, NULL, '2018-08-05 11:12:31', NULL, '0000-00-00 00:00:00'),
(1407, 'Able to give words that contain ture', 352, 3, 1, NULL, '2018-08-05 11:12:31', NULL, '0000-00-00 00:00:00'),
(1408, 'Hear words containing ture, writes/ spells accurately', 352, 4, 1, NULL, '2018-08-05 11:12:31', NULL, '0000-00-00 00:00:00'),
(1409, 'Unable to comprehend weight', 353, 1, 1, NULL, '2018-08-05 11:15:26', NULL, '0000-00-00 00:00:00'),
(1410, 'Note some change in balance When object is placed ', 353, 2, 1, NULL, '2018-08-05 11:15:26', NULL, '0000-00-00 00:00:00');
INSERT INTO `t_activities_level` (`activity_level_id`, `step_title`, `activity_id`, `level_id`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1411, 'Follows that side goes down when object is placed ', 353, 3, 1, NULL, '2018-08-05 11:15:26', NULL, '0000-00-00 00:00:00'),
(1412, 'Identify heavy and light', 353, 4, 1, NULL, '2018-08-05 11:15:26', NULL, '0000-00-00 00:00:00'),
(1413, 'Cannot pronounce/ differentiate', 354, 1, 1, NULL, '2018-08-05 11:17:46', NULL, '0000-00-00 00:00:00'),
(1414, 'Understands ie can be said in 3 ways', 354, 2, 1, NULL, '2018-08-05 11:17:46', NULL, '0000-00-00 00:00:00'),
(1415, 'Reads words with ie with right pronunciation', 354, 3, 1, NULL, '2018-08-05 11:17:46', NULL, '0000-00-00 00:00:00'),
(1416, 'Hear words containing ie, writes/spells accurately', 354, 4, 1, NULL, '2018-08-05 11:17:46', NULL, '0000-00-00 00:00:00'),
(1417, 'Unable to pronounce/ identify', 355, 1, 1, NULL, '2018-08-05 11:20:08', NULL, '0000-00-00 00:00:00'),
(1418, 'Identifies and reads words ending with all ', 355, 2, 1, NULL, '2018-08-05 11:20:08', NULL, '0000-00-00 00:00:00'),
(1419, 'Able to give words that end with all', 355, 3, 1, NULL, '2018-08-05 11:20:08', NULL, '0000-00-00 00:00:00'),
(1420, 'Hear words ending with all, writes/ spells accurately', 355, 4, 1, NULL, '2018-08-05 11:20:08', NULL, '0000-00-00 00:00:00'),
(1425, 'Unable to sequence ', 357, 1, 1, NULL, '2018-08-05 11:25:26', NULL, '0000-00-00 00:00:00'),
(1426, 'Sequences 1-2 patterns', 357, 2, 1, NULL, '2018-08-05 11:25:26', NULL, '0000-00-00 00:00:00'),
(1427, 'Sequences all patterns correctly talking a little time', 357, 3, 1, NULL, '2018-08-05 11:25:26', NULL, '0000-00-00 00:00:00'),
(1428, 'Sequences all patterns instantly', 357, 4, 1, NULL, '2018-08-05 11:25:26', NULL, '0000-00-00 00:00:00'),
(1429, 'Cannot pair any of the cards', 358, 1, 1, NULL, '2018-08-05 11:27:16', NULL, '0000-00-00 00:00:00'),
(1430, 'Pair a few simple ones ', 358, 2, 1, NULL, '2018-08-05 11:27:16', NULL, '0000-00-00 00:00:00'),
(1431, 'Pair at least 7', 358, 3, 1, NULL, '2018-08-05 11:27:16', NULL, '0000-00-00 00:00:00'),
(1432, 'Pair all easily', 358, 4, 1, NULL, '2018-08-05 11:27:16', NULL, '0000-00-00 00:00:00'),
(1441, 'Unable to get corresponding pair correctly', 361, 1, 1, NULL, '2018-08-05 11:32:34', NULL, '0000-00-00 00:00:00'),
(1442, 'Brings the exact inset', 361, 2, 1, NULL, '2018-08-05 11:32:34', NULL, '0000-00-00 00:00:00'),
(1443, 'Able to find some in different places ', 361, 3, 1, NULL, '2018-08-05 11:32:34', NULL, '0000-00-00 00:00:00'),
(1444, 'Brings the exact one from the right place', 361, 4, 1, NULL, '2018-08-05 11:32:34', NULL, '0000-00-00 00:00:00'),
(1445, 'Unable to match any ', 362, 1, 1, NULL, '2018-08-05 11:34:45', NULL, '0000-00-00 00:00:00'),
(1446, 'Matches only a few simple ones ', 362, 2, 1, NULL, '2018-08-05 11:34:45', NULL, '0000-00-00 00:00:00'),
(1447, 'Matches all', 362, 3, 1, NULL, '2018-08-05 11:34:45', NULL, '0000-00-00 00:00:00'),
(1448, 'Able to match any pictures shown', 362, 4, 1, NULL, '2018-08-05 11:34:45', NULL, '0000-00-00 00:00:00'),
(1449, 'Unable to follow game ', 363, 1, 1, NULL, '2018-08-05 11:36:39', NULL, '0000-00-00 00:00:00'),
(1450, 'Follows with instructions ', 363, 2, 1, NULL, '2018-08-05 11:36:39', NULL, '0000-00-00 00:00:00'),
(1451, 'Participates independently ', 363, 3, 1, NULL, '2018-08-05 11:36:39', NULL, '0000-00-00 00:00:00'),
(1452, 'Can count in real life', 363, 4, 1, NULL, '2018-08-05 11:36:39', NULL, '0000-00-00 00:00:00'),
(1457, 'Unable to match the pictures ', 365, 1, 1, NULL, '2018-08-05 11:39:08', NULL, '0000-00-00 00:00:00'),
(1458, 'Matches few picture parts ', 365, 2, 1, NULL, '2018-08-05 11:39:08', NULL, '0000-00-00 00:00:00'),
(1459, 'Matches all pictures', 365, 3, 1, NULL, '2018-08-05 11:39:08', NULL, '0000-00-00 00:00:00'),
(1460, 'Matches pictures and identifies name', 365, 4, 1, NULL, '2018-08-05 11:39:08', NULL, '0000-00-00 00:00:00'),
(1461, 'Cannot turn after one arm without falling', 366, 1, 1, NULL, '2018-08-05 11:39:22', NULL, '0000-00-00 00:00:00'),
(1462, 'WalK at least 2 arms of the square with 1 - 2 slips ', 366, 2, 1, NULL, '2018-08-05 11:39:22', NULL, '0000-00-00 00:00:00'),
(1463, 'WalK a complete round with 1-2 slips', 366, 3, 1, NULL, '2018-08-05 11:39:22', NULL, '0000-00-00 00:00:00'),
(1464, 'Completes a square without fall', 366, 4, 1, NULL, '2018-08-05 11:39:22', NULL, '0000-00-00 00:00:00'),
(1465, 'Unable to match w/o control card', 367, 1, 1, NULL, '2018-08-05 11:40:45', NULL, '0000-00-00 00:00:00'),
(1466, 'Matches few pictures and first letters', 367, 2, 1, NULL, '2018-08-05 11:40:45', NULL, '0000-00-00 00:00:00'),
(1467, 'Matches some pictures and words reading with difficulty ', 367, 3, 1, NULL, '2018-08-05 11:40:45', NULL, '0000-00-00 00:00:00'),
(1468, 'Reads the word and finds the picture', 367, 4, 1, NULL, '2018-08-05 11:40:45', NULL, '0000-00-00 00:00:00'),
(1469, 'Unable to sequence ', 368, 1, 1, NULL, '2018-08-05 11:40:58', NULL, '0000-00-00 00:00:00'),
(1470, 'Sequences 1-2 patterns', 368, 2, 1, NULL, '2018-08-05 11:40:58', NULL, '0000-00-00 00:00:00'),
(1471, 'Sequences all patterns correctly taking a little time', 368, 3, 1, NULL, '2018-08-05 11:40:58', NULL, '0000-00-00 00:00:00'),
(1472, 'Sequences all patterns instantly', 368, 4, 1, NULL, '2018-08-05 11:40:58', NULL, '0000-00-00 00:00:00'),
(1473, 'Unable to identify', 369, 1, 1, NULL, '2018-08-05 11:42:37', NULL, '0000-00-00 00:00:00'),
(1474, 'Identifies', 369, 2, 1, NULL, '2018-08-05 11:42:37', NULL, '0000-00-00 00:00:00'),
(1475, 'Identifies all', 369, 3, 1, NULL, '2018-08-05 11:42:37', NULL, '0000-00-00 00:00:00'),
(1476, 'Identifies all on paper', 369, 4, 1, NULL, '2018-08-05 11:42:37', NULL, '0000-00-00 00:00:00'),
(1477, 'Unable to match w/o control card', 370, 1, 1, NULL, '2018-08-05 11:43:38', NULL, '0000-00-00 00:00:00'),
(1478, 'Matches few pictures and first letters', 370, 2, 1, NULL, '2018-08-05 11:43:38', NULL, '0000-00-00 00:00:00'),
(1479, 'Matches some pictures and words reading with difficulty ', 370, 3, 1, NULL, '2018-08-05 11:43:38', NULL, '0000-00-00 00:00:00'),
(1480, 'Reads the word and finds the picture', 370, 4, 1, NULL, '2018-08-05 11:43:38', NULL, '0000-00-00 00:00:00'),
(1481, 'Unable to do', 371, 1, 1, NULL, '2018-08-05 11:44:49', NULL, '0000-00-00 00:00:00'),
(1482, 'Uses the sign with errors ', 371, 2, 1, NULL, '2018-08-05 11:44:49', NULL, '0000-00-00 00:00:00'),
(1483, 'Uses the sign fairly wen', 371, 3, 1, NULL, '2018-08-05 11:44:49', NULL, '0000-00-00 00:00:00'),
(1484, 'Puts the sign accurately between only numbers', 371, 4, 1, NULL, '2018-08-05 11:44:49', NULL, '0000-00-00 00:00:00'),
(1485, 'Unable to sequence', 372, 1, 1, NULL, '2018-08-05 11:44:55', NULL, '0000-00-00 00:00:00'),
(1486, 'Arranges in order but with errors ', 372, 2, 1, NULL, '2018-08-05 11:44:55', NULL, '0000-00-00 00:00:00'),
(1487, 'Arranges in order, with many trials ', 372, 3, 1, NULL, '2018-08-05 11:44:55', NULL, '0000-00-00 00:00:00'),
(1488, 'Arranges in perfect order', 372, 4, 1, NULL, '2018-08-05 11:44:55', NULL, '0000-00-00 00:00:00'),
(1489, 'L1', 373, 1, 1, NULL, '2018-08-05 11:47:35', NULL, '0000-00-00 00:00:00'),
(1490, 'L2', 373, 2, 1, NULL, '2018-08-05 11:47:35', NULL, '0000-00-00 00:00:00'),
(1491, 'L3', 373, 3, 1, NULL, '2018-08-05 11:47:35', NULL, '0000-00-00 00:00:00'),
(1492, 'L4', 373, 4, 1, NULL, '2018-08-05 11:47:35', NULL, '0000-00-00 00:00:00'),
(1493, 'unable to follow square 1s multiple', 374, 1, 1, NULL, '2018-08-05 11:50:27', NULL, '0000-00-00 00:00:00'),
(1494, 'Interchange strips in both directions. notice same result ', 374, 2, 1, NULL, '2018-08-05 11:50:27', NULL, '0000-00-00 00:00:00'),
(1495, 'Identify that square is part of the multipllcation table ', 374, 3, 1, NULL, '2018-08-05 11:50:27', NULL, '0000-00-00 00:00:00'),
(1496, 'Able to say \" Ineed 6 steps of 6 to make 36\"', 374, 4, 1, NULL, '2018-08-05 11:50:27', NULL, '0000-00-00 00:00:00'),
(1497, 'Matches pictures', 375, 1, 1, NULL, '2018-08-05 11:52:20', NULL, '0000-00-00 00:00:00'),
(1498, 'Names a few common ones ', 375, 2, 1, NULL, '2018-08-05 11:52:20', NULL, '0000-00-00 00:00:00'),
(1499, 'Identifies most vertebrates ', 375, 3, 1, NULL, '2018-08-05 11:52:20', NULL, '0000-00-00 00:00:00'),
(1500, 'Identifies most animals', 375, 4, 1, NULL, '2018-08-05 11:52:20', NULL, '0000-00-00 00:00:00'),
(1501, 'Unable to form sentences', 376, 1, 1, NULL, '2018-08-05 11:53:11', NULL, '0000-00-00 00:00:00'),
(1502, 'Forms 3 word sentences ', 376, 2, 1, NULL, '2018-08-05 11:53:11', NULL, '0000-00-00 00:00:00'),
(1503, 'Forms simple sentences ', 376, 3, 1, NULL, '2018-08-05 11:53:11', NULL, '0000-00-00 00:00:00'),
(1504, 'Forms complex sentences', 376, 4, 1, NULL, '2018-08-05 11:53:11', NULL, '0000-00-00 00:00:00'),
(1505, 'Cannot follow the symbol', 377, 1, 1, NULL, '2018-08-05 11:55:25', NULL, '0000-00-00 00:00:00'),
(1506, 'Identifies symbol and multiples', 377, 2, 1, NULL, '2018-08-05 11:55:25', NULL, '0000-00-00 00:00:00'),
(1507, 'Understands the symbol represents multiplication ', 377, 3, 1, NULL, '2018-08-05 11:55:25', NULL, '0000-00-00 00:00:00'),
(1508, 'Sees a sum. and is able to put the x symbol', 377, 4, 1, NULL, '2018-08-05 11:55:25', NULL, '0000-00-00 00:00:00'),
(1509, 'Unable to subtract', 378, 1, 1, NULL, '2018-08-05 11:56:42', NULL, '0000-00-00 00:00:00'),
(1510, 'Subtracts small numbers with difficulty ', 378, 2, 1, NULL, '2018-08-05 11:56:42', NULL, '0000-00-00 00:00:00'),
(1511, 'Subtracts small numbers well', 378, 3, 1, NULL, '2018-08-05 11:56:42', NULL, '0000-00-00 00:00:00'),
(1512, 'Able to subtract all numbers', 378, 4, 1, NULL, '2018-08-05 11:56:42', NULL, '0000-00-00 00:00:00'),
(1513, 'Unable to multiply', 379, 1, 1, NULL, '2018-08-05 11:57:51', NULL, '0000-00-00 00:00:00'),
(1514, 'Multiplies only with control card', 379, 2, 1, NULL, '2018-08-05 11:57:51', NULL, '0000-00-00 00:00:00'),
(1515, 'Multiplies small nums with control card ', 379, 3, 1, NULL, '2018-08-05 11:57:51', NULL, '0000-00-00 00:00:00'),
(1516, 'Multiplies large numbers w/o control card', 379, 4, 1, NULL, '2018-08-05 11:57:51', NULL, '0000-00-00 00:00:00'),
(1517, 'Unable to pronounce/ identify', 380, 1, 1, NULL, '2018-08-05 12:00:11', NULL, '0000-00-00 00:00:00'),
(1518, 'Identifies and reads words containing ous ', 380, 2, 1, NULL, '2018-08-05 12:00:11', NULL, '0000-00-00 00:00:00'),
(1519, 'Able to give words that contain ous', 380, 3, 1, NULL, '2018-08-05 12:00:11', NULL, '0000-00-00 00:00:00'),
(1520, 'Hear words containing ous,writes/ spells accurately', 380, 4, 1, NULL, '2018-08-05 12:00:11', NULL, '0000-00-00 00:00:00'),
(1521, 'Unable to pronounce/ identify', 381, 1, 1, NULL, '2018-08-05 12:01:24', NULL, '0000-00-00 00:00:00'),
(1522, 'Identifies and reads words containing our ', 381, 2, 1, NULL, '2018-08-05 12:01:24', NULL, '0000-00-00 00:00:00'),
(1523, 'Able to give words that contain our', 381, 3, 1, NULL, '2018-08-05 12:01:24', NULL, '0000-00-00 00:00:00'),
(1524, 'Hear words containing our,writes/ spells accurately', 381, 4, 1, NULL, '2018-08-05 12:01:24', NULL, '0000-00-00 00:00:00'),
(1525, 'Cannot pronounce/ differentiate', 382, 1, 1, NULL, '2018-08-05 12:03:16', NULL, '0000-00-00 00:00:00'),
(1526, 'Understands ei can be said in 2 ways', 382, 2, 1, NULL, '2018-08-05 12:03:16', NULL, '0000-00-00 00:00:00'),
(1527, 'Reads words with ei with right pronunciation ', 382, 3, 1, NULL, '2018-08-05 12:03:16', NULL, '0000-00-00 00:00:00'),
(1528, 'Hears a word containing ei,and spells accurately', 382, 4, 1, NULL, '2018-08-05 12:03:16', NULL, '0000-00-00 00:00:00'),
(1529, 'Cannot pronounce/ differentiate', 383, 1, 1, NULL, '2018-08-05 12:04:36', NULL, '0000-00-00 00:00:00'),
(1530, 'Understands ew can be said in 2 ways', 383, 2, 1, NULL, '2018-08-05 12:04:36', NULL, '0000-00-00 00:00:00'),
(1531, 'Reads words with ew with right pronunciation', 383, 3, 1, NULL, '2018-08-05 12:04:36', NULL, '0000-00-00 00:00:00'),
(1532, 'Hear words containing ew writes/ spells accurately', 383, 4, 1, NULL, '2018-08-05 12:04:36', NULL, '0000-00-00 00:00:00'),
(1533, 'Cannot pronounce/ differentiate', 384, 1, 1, NULL, '2018-08-05 12:06:05', NULL, '0000-00-00 00:00:00'),
(1534, 'Understands ey can be said in 2 ways', 384, 2, 1, NULL, '2018-08-05 12:06:05', NULL, '0000-00-00 00:00:00'),
(1535, 'Reads words with ey with right pronunciation ', 384, 3, 1, NULL, '2018-08-05 12:06:05', NULL, '0000-00-00 00:00:00'),
(1536, 'Hears a word containing ey,and spells accurately', 384, 4, 1, NULL, '2018-08-05 12:06:05', NULL, '0000-00-00 00:00:00'),
(1537, 'Unable to comprehend', 385, 1, 1, NULL, '2018-08-05 12:07:31', NULL, '0000-00-00 00:00:00'),
(1538, 'Understands ue can be said in several ways ', 385, 2, 1, NULL, '2018-08-05 12:07:31', NULL, '0000-00-00 00:00:00'),
(1539, 'Reads ue words with the right pronunciation', 385, 3, 1, NULL, '2018-08-05 12:07:31', NULL, '0000-00-00 00:00:00'),
(1540, 'Hear words containing ue,writes/ spells accurately', 385, 4, 1, NULL, '2018-08-05 12:07:31', NULL, '0000-00-00 00:00:00'),
(1541, 'Unable to comprehend', 386, 1, 1, NULL, '2018-08-05 12:09:01', NULL, '0000-00-00 00:00:00'),
(1542, 'Understands ew can be said in 2 ways ', 386, 2, 1, NULL, '2018-08-05 12:09:01', NULL, '0000-00-00 00:00:00'),
(1543, 'Reads ow words with the right pronunciation', 386, 3, 1, NULL, '2018-08-05 12:09:01', NULL, '0000-00-00 00:00:00'),
(1544, 'Hear words containing ow writes/ spells accurately', 386, 4, 1, NULL, '2018-08-05 12:09:01', NULL, '0000-00-00 00:00:00'),
(1545, 'Cannot recognize any letters', 387, 1, 1, NULL, '2018-08-05 12:11:16', NULL, '0000-00-00 00:00:00'),
(1546, 'Recognizes few letters ', 387, 2, 1, NULL, '2018-08-05 12:11:16', NULL, '0000-00-00 00:00:00'),
(1547, 'Recognizes many letters ', 387, 3, 1, NULL, '2018-08-05 12:11:16', NULL, '0000-00-00 00:00:00'),
(1548, 'Recognizes all letters', 387, 4, 1, NULL, '2018-08-05 12:11:16', NULL, '0000-00-00 00:00:00'),
(1549, 'Unable to give any example ', 388, 1, 1, NULL, '2018-08-05 12:12:37', NULL, '0000-00-00 00:00:00'),
(1550, 'Gives examples', 388, 2, 1, NULL, '2018-08-05 12:12:37', NULL, '0000-00-00 00:00:00'),
(1551, 'Selects the nouns with some errors', 388, 3, 1, NULL, '2018-08-05 12:12:37', NULL, '0000-00-00 00:00:00'),
(1552, 'Gives many examples and selects all nouns perfectly', 388, 4, 1, NULL, '2018-08-05 12:12:37', NULL, '0000-00-00 00:00:00'),
(1553, 'Unable to give any example ', 389, 1, 1, NULL, '2018-08-05 12:13:56', NULL, '0000-00-00 00:00:00'),
(1554, 'Gives examples', 389, 2, 1, NULL, '2018-08-05 12:13:56', NULL, '0000-00-00 00:00:00'),
(1555, 'Selects the verbs with some errors', 389, 3, 1, NULL, '2018-08-05 12:13:56', NULL, '0000-00-00 00:00:00'),
(1556, 'Gives many examples and selects all verbs perfectly', 389, 4, 1, NULL, '2018-08-05 12:13:56', NULL, '0000-00-00 00:00:00'),
(1557, 'Unable to identify objects', 390, 1, 1, NULL, '2018-08-05 12:16:30', NULL, '0000-00-00 00:00:00'),
(1558, 'Identifies objects, does not follow concept of nouns ', 390, 2, 1, NULL, '2018-08-05 12:16:30', NULL, '0000-00-00 00:00:00'),
(1559, 'Understands we are looking for objects as nouns ', 390, 3, 1, NULL, '2018-08-05 12:16:30', NULL, '0000-00-00 00:00:00'),
(1560, 'Sees object pictures & identifies as nouns', 390, 4, 1, NULL, '2018-08-05 12:16:30', NULL, '0000-00-00 00:00:00'),
(1561, 'Unable to align the compass', 391, 1, 1, NULL, '2018-08-05 12:18:40', NULL, '0000-00-00 00:00:00'),
(1562, 'Aligns compass to N,identify North ', 391, 2, 1, NULL, '2018-08-05 12:18:40', NULL, '0000-00-00 00:00:00'),
(1563, 'Aligns compass,identify all 4 directions ', 391, 3, 1, NULL, '2018-08-05 12:18:40', NULL, '0000-00-00 00:00:00'),
(1564, 'Knows the directions in school', 391, 4, 1, NULL, '2018-08-05 12:18:40', NULL, '0000-00-00 00:00:00'),
(1565, 'Unable to match w/o control card', 392, 1, 1, NULL, '2018-08-05 12:20:16', NULL, '0000-00-00 00:00:00'),
(1566, 'Matches few pictures and first letters', 392, 2, 1, NULL, '2018-08-05 12:20:16', NULL, '0000-00-00 00:00:00'),
(1567, 'Matches some pictures and words reading with difficulty ', 392, 3, 1, NULL, '2018-08-05 12:20:16', NULL, '0000-00-00 00:00:00'),
(1568, 'Reads the word and finds the picture', 392, 4, 1, NULL, '2018-08-05 12:20:16', NULL, '0000-00-00 00:00:00'),
(1569, 'Unable to subtract', 393, 1, 1, NULL, '2018-08-05 12:21:41', NULL, '0000-00-00 00:00:00'),
(1570, 'Subtracts With difficulty Without borrowing ', 393, 2, 1, NULL, '2018-08-05 12:21:41', NULL, '0000-00-00 00:00:00'),
(1571, 'Subtracts well Without borrowing ', 393, 3, 1, NULL, '2018-08-05 12:21:41', NULL, '0000-00-00 00:00:00'),
(1572, 'Subtracts perfectly with borrowing', 393, 4, 1, NULL, '2018-08-05 12:21:41', NULL, '0000-00-00 00:00:00'),
(1573, 'Able to match a few', 394, 1, 1, NULL, '2018-08-05 12:22:44', NULL, '0000-00-00 00:00:00'),
(1574, 'Able to match all letters', 394, 2, 1, NULL, '2018-08-05 12:22:44', NULL, '0000-00-00 00:00:00'),
(1575, 'Given a print letter,writes the cursive ', 394, 3, 1, NULL, '2018-08-05 12:22:44', NULL, '0000-00-00 00:00:00'),
(1576, 'Given a sentence in print.writes in cursive', 394, 4, 1, NULL, '2018-08-05 12:22:44', NULL, '0000-00-00 00:00:00'),
(1577, 'Unable to describe', 395, 1, 1, NULL, '2018-08-05 12:23:26', NULL, '0000-00-00 00:00:00'),
(1578, '1-2 sentences on common ones', 395, 2, 1, NULL, '2018-08-05 12:23:26', NULL, '0000-00-00 00:00:00'),
(1579, 'Can describe many details about few ', 395, 3, 1, NULL, '2018-08-05 12:23:26', NULL, '0000-00-00 00:00:00'),
(1580, 'Tall<s comfortably about all pub places', 395, 4, 1, NULL, '2018-08-05 12:23:26', NULL, '0000-00-00 00:00:00'),
(1581, 'Unable to match w/o control card', 396, 1, 1, NULL, '2018-08-05 12:25:18', NULL, '0000-00-00 00:00:00'),
(1582, 'Matches few pictures and first letters', 396, 2, 1, NULL, '2018-08-05 12:25:18', NULL, '0000-00-00 00:00:00'),
(1583, 'Matches some pictures and words reading with difficulty ', 396, 3, 1, NULL, '2018-08-05 12:25:18', NULL, '0000-00-00 00:00:00'),
(1584, 'Reads the word and finds the picture', 396, 4, 1, NULL, '2018-08-05 12:25:18', NULL, '0000-00-00 00:00:00'),
(1585, 'Unable to name', 397, 1, 1, NULL, '2018-08-05 12:26:21', NULL, '0000-00-00 00:00:00'),
(1586, 'Identifies if the object belongs to the kitchen ', 397, 2, 1, NULL, '2018-08-05 12:26:21', NULL, '0000-00-00 00:00:00'),
(1587, 'Names a few things', 397, 3, 1, NULL, '2018-08-05 12:26:21', NULL, '0000-00-00 00:00:00'),
(1588, 'Names many things', 397, 4, 1, NULL, '2018-08-05 12:26:21', NULL, '0000-00-00 00:00:00'),
(1589, 'Unable to do', 398, 1, 1, NULL, '2018-08-05 12:29:20', NULL, '0000-00-00 00:00:00'),
(1590, 'Individual & joint meaning to few ', 398, 2, 1, NULL, '2018-08-05 12:29:20', NULL, '0000-00-00 00:00:00'),
(1591, 'Gives individual& joint meaning to all', 398, 3, 1, NULL, '2018-08-05 12:29:20', NULL, '0000-00-00 00:00:00'),
(1592, 'Forms many words Eg Tooth- paste/brush', 398, 4, 1, NULL, '2018-08-05 12:29:20', NULL, '0000-00-00 00:00:00'),
(1593, 'Does not follow concept', 399, 1, 1, NULL, '2018-08-05 12:30:42', NULL, '0000-00-00 00:00:00'),
(1594, 'Follow concept, see different colours ', 399, 2, 1, NULL, '2018-08-05 12:30:42', NULL, '0000-00-00 00:00:00'),
(1595, 'Experiments in various positions I angles ', 399, 3, 1, NULL, '2018-08-05 12:30:42', NULL, '0000-00-00 00:00:00'),
(1596, 'Understands a prism splits light', 399, 4, 1, NULL, '2018-08-05 12:30:42', NULL, '0000-00-00 00:00:00'),
(1597, 'L1', 400, 1, 1, NULL, '2018-08-05 12:32:26', NULL, '0000-00-00 00:00:00'),
(1598, 'L2', 400, 2, 1, NULL, '2018-08-05 12:32:26', NULL, '0000-00-00 00:00:00'),
(1599, 'L3', 400, 3, 1, NULL, '2018-08-05 12:32:26', NULL, '0000-00-00 00:00:00'),
(1600, 'L4', 400, 4, 1, NULL, '2018-08-05 12:32:26', NULL, '0000-00-00 00:00:00'),
(1601, 'Unable to fill the blank ', 401, 1, 1, NULL, '2018-08-05 12:40:03', NULL, '0000-00-00 00:00:00'),
(1602, 'Fills few simple ones', 401, 2, 1, NULL, '2018-08-05 12:40:03', NULL, '0000-00-00 00:00:00'),
(1603, 'Most times fills the right preposition ', 401, 3, 1, NULL, '2018-08-05 12:40:03', NULL, '0000-00-00 00:00:00'),
(1604, 'Fills the right preposition all times', 401, 4, 1, NULL, '2018-08-05 12:40:03', NULL, '0000-00-00 00:00:00'),
(1605, 'Unable to pronounce/ identify', 402, 1, 1, NULL, '2018-08-05 12:41:22', NULL, '0000-00-00 00:00:00'),
(1606, 'Identifies and reads words containing are ', 402, 2, 1, NULL, '2018-08-05 12:41:22', NULL, '0000-00-00 00:00:00'),
(1607, 'Able to give words that contain are', 402, 3, 1, NULL, '2018-08-05 12:41:22', NULL, '0000-00-00 00:00:00'),
(1608, 'Hear words containing are, writes/ spells accurately', 402, 4, 1, NULL, '2018-08-05 12:41:22', NULL, '0000-00-00 00:00:00'),
(1609, 'Unable to comprehend', 403, 1, 1, NULL, '2018-08-05 12:43:09', NULL, '0000-00-00 00:00:00'),
(1610, 'Understands c can be said in 2 ways ', 403, 2, 1, NULL, '2018-08-05 12:43:09', NULL, '0000-00-00 00:00:00'),
(1611, 'Reads c words with the right pronunciation', 403, 3, 1, NULL, '2018-08-05 12:43:09', NULL, '0000-00-00 00:00:00'),
(1612, 'Hear words containing c wrttes/ spells accurately', 403, 4, 1, NULL, '2018-08-05 12:43:09', NULL, '0000-00-00 00:00:00'),
(1613, 'Unable to comprehend', 404, 1, 1, NULL, '2018-08-05 12:44:39', NULL, '0000-00-00 00:00:00'),
(1614, 'Understands g can be said in 2 ways ', 404, 2, 1, NULL, '2018-08-05 12:44:39', NULL, '0000-00-00 00:00:00'),
(1615, 'Reads g words with the right pronunciation', 404, 3, 1, NULL, '2018-08-05 12:44:39', NULL, '0000-00-00 00:00:00'),
(1616, 'Hear words containing g writes/ spells accurately', 404, 4, 1, NULL, '2018-08-05 12:44:39', NULL, '0000-00-00 00:00:00'),
(1617, 'Unable to pronounce/ identify', 405, 1, 1, NULL, '2018-08-05 12:46:15', NULL, '0000-00-00 00:00:00'),
(1618, 'Identifies and reads words ending with y', 405, 2, 1, NULL, '2018-08-05 12:46:15', NULL, '0000-00-00 00:00:00'),
(1619, 'Able to give words that end with y', 405, 3, 1, NULL, '2018-08-05 12:46:15', NULL, '0000-00-00 00:00:00'),
(1620, 'Hear words containing y writes/ spells accurately', 405, 4, 1, NULL, '2018-08-05 12:46:15', NULL, '0000-00-00 00:00:00'),
(1621, 'Unable to pronounce/ identify', 406, 1, 1, NULL, '2018-08-05 12:50:18', NULL, '0000-00-00 00:00:00'),
(1622, 'Identifies and reads words containing dge ', 406, 2, 1, NULL, '2018-08-05 12:50:18', NULL, '0000-00-00 00:00:00'),
(1623, 'Able to give words that contain dge', 406, 3, 1, NULL, '2018-08-05 12:50:18', NULL, '0000-00-00 00:00:00'),
(1624, 'Hear words containing dge,writes/ spells accurately', 406, 4, 1, NULL, '2018-08-05 12:50:18', NULL, '0000-00-00 00:00:00'),
(1625, 'Unable to pronounce/ identify', 407, 1, 1, NULL, '2018-08-05 12:52:03', NULL, '0000-00-00 00:00:00'),
(1626, 'Identifies and reads words containing sch ', 407, 2, 1, NULL, '2018-08-05 12:52:03', NULL, '0000-00-00 00:00:00'),
(1627, 'Able to give words that contain sch', 407, 3, 1, NULL, '2018-08-05 12:52:03', NULL, '0000-00-00 00:00:00'),
(1628, 'Hear words containing sch.writes/ spells accurately', 407, 4, 1, NULL, '2018-08-05 12:52:03', NULL, '0000-00-00 00:00:00'),
(1629, 'Gives very simple examples ', 408, 1, 1, NULL, '2018-08-05 12:53:47', NULL, '0000-00-00 00:00:00'),
(1630, 'Gives complex examples ', 408, 2, 1, NULL, '2018-08-05 12:53:47', NULL, '0000-00-00 00:00:00'),
(1631, 'Selects the verbs in sentences', 408, 3, 1, NULL, '2018-08-05 12:53:47', NULL, '0000-00-00 00:00:00'),
(1632, 'Gives many examples and selects all verbs perfectly', 408, 4, 1, NULL, '2018-08-05 12:53:47', NULL, '0000-00-00 00:00:00'),
(1633, 'Unable to place letters on the mat', 409, 1, 1, NULL, '2018-08-06 13:16:08', NULL, '0000-00-00 00:00:00'),
(1634, 'Places randomly on the mat', 409, 2, 1, NULL, '2018-08-06 13:16:08', NULL, '0000-00-00 00:00:00'),
(1635, 'Places letters properly like a 4 line book ', 409, 3, 1, NULL, '2018-08-06 13:16:08', NULL, '0000-00-00 00:00:00'),
(1636, 'Places them well together like words', 409, 4, 1, NULL, '2018-08-06 13:16:08', NULL, '0000-00-00 00:00:00'),
(1637, 'Pairs a few ', 410, 1, 1, NULL, '2018-08-06 13:18:35', NULL, '0000-00-00 00:00:00'),
(1638, 'Pairs all ', 410, 2, 1, NULL, '2018-08-06 13:18:35', NULL, '0000-00-00 00:00:00'),
(1639, 'Identifies well', 410, 3, 1, NULL, '2018-08-06 13:18:35', NULL, '0000-00-00 00:00:00'),
(1640, 'Feels other cloth and says its like \"silk\" or gauze', 410, 4, 1, NULL, '2018-08-06 13:18:35', NULL, '0000-00-00 00:00:00'),
(1641, 'Unable to sequence ', 411, 1, 1, NULL, '2018-08-06 13:22:09', NULL, '0000-00-00 00:00:00'),
(1642, 'Sequences 1-2 patterns ', 411, 2, 1, NULL, '2018-08-06 13:22:09', NULL, '0000-00-00 00:00:00'),
(1643, 'Sequences 3-4 patterns', 411, 3, 1, NULL, '2018-08-06 13:22:09', NULL, '0000-00-00 00:00:00'),
(1644, 'Sequences all patterns instantly', 411, 4, 1, NULL, '2018-08-06 13:22:09', NULL, '0000-00-00 00:00:00'),
(1645, 'Does not notice change with combinations', 412, 1, 1, NULL, '2018-08-06 13:25:11', NULL, '0000-00-00 00:00:00'),
(1646, 'Notices colour change with combinations', 412, 2, 1, NULL, '2018-08-06 13:25:11', NULL, '0000-00-00 00:00:00'),
(1647, 'Takes 2 colour viewers together,identifies colour ', 412, 3, 1, NULL, '2018-08-06 13:25:11', NULL, '0000-00-00 00:00:00'),
(1648, 'Experiments with different combinations', 412, 4, 1, NULL, '2018-08-06 13:25:11', NULL, '0000-00-00 00:00:00'),
(1649, 'Not able to identify where to pour water', 413, 1, 1, NULL, '2018-08-06 13:26:44', NULL, '0000-00-00 00:00:00'),
(1650, 'Identifies where to pour,pour with a lot of spillage ', 413, 2, 1, NULL, '2018-08-06 13:26:44', NULL, '0000-00-00 00:00:00'),
(1651, 'Pours with no spillage into the water form', 413, 3, 1, NULL, '2018-08-06 13:26:44', NULL, '0000-00-00 00:00:00'),
(1652, 'Can drain water out of the mould without spillage', 413, 4, 1, NULL, '2018-08-06 13:26:44', NULL, '0000-00-00 00:00:00'),
(1653, 'Unable to understand', 414, 1, 1, NULL, '2018-08-06 13:31:05', NULL, '0000-00-00 00:00:00'),
(1654, 'Names some parts ', 414, 2, 1, NULL, '2018-08-06 13:31:05', NULL, '0000-00-00 00:00:00'),
(1655, 'Identifies all parts of a tree', 414, 3, 1, NULL, '2018-08-06 13:31:05', NULL, '0000-00-00 00:00:00'),
(1656, 'Explains different parts of a tree', 414, 4, 1, NULL, '2018-08-06 13:31:05', NULL, '0000-00-00 00:00:00'),
(1657, 'L1', 415, 1, 1, NULL, '2018-08-06 13:34:08', NULL, '0000-00-00 00:00:00'),
(1658, 'L2', 415, 2, 1, NULL, '2018-08-06 13:34:08', NULL, '0000-00-00 00:00:00'),
(1659, 'L3', 415, 3, 1, NULL, '2018-08-06 13:34:08', NULL, '0000-00-00 00:00:00'),
(1660, 'L4', 415, 4, 1, NULL, '2018-08-06 13:34:08', NULL, '0000-00-00 00:00:00'),
(1661, 'Unable to read any', 416, 1, 1, NULL, '2018-08-06 13:39:18', NULL, '0000-00-00 00:00:00'),
(1662, 'Identifies a few words ', 416, 2, 1, NULL, '2018-08-06 13:39:18', NULL, '0000-00-00 00:00:00'),
(1663, 'Identifies many words', 416, 3, 1, NULL, '2018-08-06 13:39:18', NULL, '0000-00-00 00:00:00'),
(1664, 'Identifies most words with ease', 416, 4, 1, NULL, '2018-08-06 13:39:18', NULL, '0000-00-00 00:00:00'),
(1665, 'Grades with some mix up', 417, 1, 1, NULL, '2018-08-06 13:41:26', NULL, '0000-00-00 00:00:00'),
(1666, 'Grades all perfectly ', 417, 2, 1, NULL, '2018-08-06 13:41:26', NULL, '0000-00-00 00:00:00'),
(1667, 'Identifies louder, softest etc ', 417, 3, 1, NULL, '2018-08-06 13:41:26', NULL, '0000-00-00 00:00:00'),
(1668, 'Grades any other sounds', 417, 4, 1, NULL, '2018-08-06 13:41:26', NULL, '0000-00-00 00:00:00'),
(1669, 'Unable to find the pair ', 418, 1, 1, NULL, '2018-08-06 13:51:37', NULL, '0000-00-00 00:00:00'),
(1670, 'Finds the pair', 418, 2, 1, NULL, '2018-08-06 13:51:37', NULL, '0000-00-00 00:00:00'),
(1671, 'Finds tne pair fairly well in diff places ', 418, 3, 1, NULL, '2018-08-06 13:51:37', NULL, '0000-00-00 00:00:00'),
(1672, 'Finds the pair perfectly when in diff places', 418, 4, 1, NULL, '2018-08-06 13:51:37', NULL, '0000-00-00 00:00:00'),
(1673, 'Cannot identify at all', 419, 1, 1, NULL, '2018-08-06 13:52:56', NULL, '0000-00-00 00:00:00'),
(1674, 'Estimates with a lot of trial and error ', 419, 2, 1, NULL, '2018-08-06 13:52:56', NULL, '0000-00-00 00:00:00'),
(1675, 'Estimates fairly well', 419, 3, 1, NULL, '2018-08-06 13:52:56', NULL, '0000-00-00 00:00:00'),
(1676, 'Able to exactly identify the next size', 419, 4, 1, NULL, '2018-08-06 13:52:56', NULL, '0000-00-00 00:00:00'),
(1677, 'Unable to group', 420, 1, 1, NULL, '2018-08-06 13:54:49', NULL, '0000-00-00 00:00:00'),
(1678, 'Can group some cards ', 420, 2, 1, NULL, '2018-08-06 13:54:49', NULL, '0000-00-00 00:00:00'),
(1679, 'Groups all', 420, 3, 1, NULL, '2018-08-06 13:54:49', NULL, '0000-00-00 00:00:00'),
(1680, 'Groups any other set of pictures', 420, 4, 1, NULL, '2018-08-06 13:54:49', NULL, '0000-00-00 00:00:00'),
(1681, 'Unable to name any', 421, 1, 1, NULL, '2018-08-06 13:58:10', NULL, '0000-00-00 00:00:00'),
(1682, 'Names atleast 2', 421, 2, 1, NULL, '2018-08-06 13:58:10', NULL, '0000-00-00 00:00:00'),
(1683, 'identifies and names 4 triangles ', 421, 3, 1, NULL, '2018-08-06 13:58:10', NULL, '0000-00-00 00:00:00'),
(1684, 'Identifies and names any triangle', 421, 4, 1, NULL, '2018-08-06 13:58:10', NULL, '0000-00-00 00:00:00'),
(1685, 'Unable to understand ', 422, 1, 1, NULL, '2018-08-06 14:01:50', NULL, '0000-00-00 00:00:00'),
(1686, 'Understand there are 4 diff types', 422, 2, 1, NULL, '2018-08-06 14:01:50', NULL, '0000-00-00 00:00:00'),
(1687, 'Understand Partially', 422, 3, 1, NULL, '2018-08-06 14:01:50', NULL, '0000-00-00 00:00:00'),
(1688, 'Identify  unit,ten. hundred.thousand perfectly', 422, 4, 1, NULL, '2018-08-06 14:01:50', NULL, '0000-00-00 00:00:00'),
(1689, 'Unable to sequence', 423, 1, 1, NULL, '2018-08-06 14:04:48', NULL, '0000-00-00 00:00:00'),
(1690, 'Sequences 1-2 patterns', 423, 2, 1, NULL, '2018-08-06 14:04:48', NULL, '0000-00-00 00:00:00'),
(1691, 'Sequences all patterns correctly taking a little time', 423, 3, 1, NULL, '2018-08-06 14:04:48', NULL, '0000-00-00 00:00:00'),
(1692, 'Sequences all patterns instantly', 423, 4, 1, NULL, '2018-08-06 14:04:48', NULL, '0000-00-00 00:00:00'),
(1693, 'Unable to visualize animals ', 424, 1, 1, NULL, '2018-08-06 14:06:33', NULL, '0000-00-00 00:00:00'),
(1694, 'Remembers 8 farm animals ', 424, 2, 1, NULL, '2018-08-06 14:06:33', NULL, '0000-00-00 00:00:00'),
(1695, 'Can talk for 2 min about a farm ', 424, 3, 1, NULL, '2018-08-06 14:06:33', NULL, '0000-00-00 00:00:00'),
(1696, 'Talks for 5 min about a farm', 424, 4, 1, NULL, '2018-08-06 14:06:33', NULL, '0000-00-00 00:00:00'),
(1697, 'When given a word, unable to identify its pair', 425, 1, 1, NULL, '2018-08-06 14:07:56', NULL, '0000-00-00 00:00:00'),
(1698, 'When given a word, finds its pair for some words ', 425, 2, 1, NULL, '2018-08-06 14:07:56', NULL, '0000-00-00 00:00:00'),
(1699, 'When given a word, finds its pair for all', 425, 3, 1, NULL, '2018-08-06 14:07:56', NULL, '0000-00-00 00:00:00'),
(1700, 'Says associated word wen given a word verbally', 425, 4, 1, NULL, '2018-08-06 14:07:56', NULL, '0000-00-00 00:00:00'),
(1701, 'Unable to play ', 426, 1, 1, NULL, '2018-08-06 14:09:52', NULL, '0000-00-00 00:00:00'),
(1702, 'Follows game', 426, 2, 1, NULL, '2018-08-06 14:09:52', NULL, '0000-00-00 00:00:00'),
(1703, 'Finds at least 3 pairs ', 426, 3, 1, NULL, '2018-08-06 14:09:52', NULL, '0000-00-00 00:00:00'),
(1704, 'Finds many pairs', 426, 4, 1, NULL, '2018-08-06 14:09:52', NULL, '0000-00-00 00:00:00'),
(1705, 'Cannot name any ', 427, 1, 1, NULL, '2018-08-06 14:11:02', NULL, '0000-00-00 00:00:00'),
(1706, 'Identifies few ', 427, 2, 1, NULL, '2018-08-06 14:11:02', NULL, '0000-00-00 00:00:00'),
(1707, 'Identifies all', 427, 3, 1, NULL, '2018-08-06 14:11:02', NULL, '0000-00-00 00:00:00'),
(1708, 'Identifies other aqua animals', 427, 4, 1, NULL, '2018-08-06 14:11:02', NULL, '0000-00-00 00:00:00'),
(1709, 'L1', 428, 1, 1, NULL, '2018-08-06 14:13:18', NULL, '0000-00-00 00:00:00'),
(1710, 'L2', 428, 2, 1, NULL, '2018-08-06 14:13:18', NULL, '0000-00-00 00:00:00'),
(1711, 'L3', 428, 3, 1, NULL, '2018-08-06 14:13:18', NULL, '0000-00-00 00:00:00'),
(1712, 'L4', 428, 4, 1, NULL, '2018-08-06 14:13:18', NULL, '0000-00-00 00:00:00'),
(1713, 'Unable to arrange ', 429, 1, 1, NULL, '2018-08-08 07:03:18', NULL, '0000-00-00 00:00:00'),
(1714, 'Arranges wrth difficulty', 429, 2, 1, NULL, '2018-08-08 07:03:18', NULL, '0000-00-00 00:00:00'),
(1715, 'Arranges most numbers easily ', 429, 3, 1, NULL, '2018-08-08 07:03:18', NULL, '0000-00-00 00:00:00'),
(1716, 'Arranges complex ascending numbers', 429, 4, 1, NULL, '2018-08-08 07:03:18', NULL, '0000-00-00 00:00:00'),
(1717, 'Unable to do the map', 430, 1, 1, NULL, '2018-08-08 07:06:01', NULL, '0000-00-00 00:00:00'),
(1718, 'Does some pieces of the map with help', 430, 2, 1, NULL, '2018-08-08 07:06:01', NULL, '0000-00-00 00:00:00'),
(1719, 'Shifts all pieces to control map, finds it tough to move back ', 430, 3, 1, NULL, '2018-08-08 07:06:01', NULL, '0000-00-00 00:00:00'),
(1720, 'Moves all pieces to control map, moves them back well', 430, 4, 1, NULL, '2018-08-08 07:06:01', NULL, '0000-00-00 00:00:00'),
(1721, 'Unable to say any', 431, 1, 1, NULL, '2018-08-08 07:11:54', NULL, '0000-00-00 00:00:00'),
(1722, 'Identify many With control map', 431, 2, 1, NULL, '2018-08-08 07:11:54', NULL, '0000-00-00 00:00:00'),
(1723, 'With control map identify some', 431, 3, 1, NULL, '2018-08-08 07:11:54', NULL, '0000-00-00 00:00:00'),
(1724, 'Without control map, identify many', 431, 4, 1, NULL, '2018-08-08 07:11:54', NULL, '0000-00-00 00:00:00'),
(1725, 'Unable to follow', 432, 1, 1, NULL, '2018-08-08 07:13:14', NULL, '0000-00-00 00:00:00'),
(1726, 'Knows they are found in Dr shop ', 432, 2, 1, NULL, '2018-08-08 07:13:15', NULL, '0000-00-00 00:00:00'),
(1727, 'Identifies few', 432, 3, 1, NULL, '2018-08-08 07:13:15', NULL, '0000-00-00 00:00:00'),
(1728, 'Identifies many', 432, 4, 1, NULL, '2018-08-08 07:13:15', NULL, '0000-00-00 00:00:00'),
(1729, 'Unable to follow', 433, 1, 1, NULL, '2018-08-08 07:14:29', NULL, '0000-00-00 00:00:00'),
(1730, 'Identifies common places of worship ', 433, 2, 1, NULL, '2018-08-08 07:14:29', NULL, '0000-00-00 00:00:00'),
(1731, 'Identifies many places of worship ', 433, 3, 1, NULL, '2018-08-08 07:14:29', NULL, '0000-00-00 00:00:00'),
(1732, 'Follows dill people pray in dill places', 433, 4, 1, NULL, '2018-08-08 07:14:29', NULL, '0000-00-00 00:00:00'),
(1733, 'Unable to judge speed of moving objects', 434, 1, 1, NULL, '2018-08-08 07:16:11', NULL, '0000-00-00 00:00:00'),
(1734, 'Identify fast slow when there is a large difference ', 434, 2, 1, NULL, '2018-08-08 07:16:11', NULL, '0000-00-00 00:00:00'),
(1735, 'Able to identify fast and slow for varying objects ', 434, 3, 1, NULL, '2018-08-08 07:16:11', NULL, '0000-00-00 00:00:00'),
(1736, 'Experiments with different objects and checks speed', 434, 4, 1, NULL, '2018-08-08 07:16:11', NULL, '0000-00-00 00:00:00'),
(1737, 'Unable to follow a transaction', 435, 1, 1, NULL, '2018-08-08 07:20:27', NULL, '0000-00-00 00:00:00'),
(1738, 'Follows play when started by others ', 435, 2, 1, NULL, '2018-08-08 07:20:27', NULL, '0000-00-00 00:00:00'),
(1739, 'Initiates play - You are seller,I am buyer ', 435, 3, 1, NULL, '2018-08-08 07:20:27', NULL, '0000-00-00 00:00:00'),
(1740, 'Understands terms like buy/sell', 435, 4, 1, NULL, '2018-08-08 07:20:27', NULL, '0000-00-00 00:00:00'),
(1741, 'Unable to match w/o control card ', 436, 1, 1, NULL, '2018-08-08 07:22:36', NULL, '0000-00-00 00:00:00'),
(1742, 'Matches few pictures and first letters', 436, 2, 1, NULL, '2018-08-08 07:22:36', NULL, '0000-00-00 00:00:00'),
(1743, 'Matches some pictures and words reading with difficulty ', 436, 3, 1, NULL, '2018-08-08 07:22:36', NULL, '0000-00-00 00:00:00'),
(1744, 'Reads the word and finds the picture', 436, 4, 1, NULL, '2018-08-08 07:22:36', NULL, '0000-00-00 00:00:00'),
(1745, 'Unable to match the pictures', 437, 1, 1, NULL, '2018-08-08 07:27:38', NULL, '0000-00-00 00:00:00'),
(1746, 'Matches few picture parts ', 437, 2, 1, NULL, '2018-08-08 07:27:38', NULL, '0000-00-00 00:00:00'),
(1747, 'Matches all pictures', 437, 3, 1, NULL, '2018-08-08 07:27:38', NULL, '0000-00-00 00:00:00'),
(1748, 'Matches pictures and identifies name', 437, 4, 1, NULL, '2018-08-08 07:27:38', NULL, '0000-00-00 00:00:00'),
(1749, 'L1', 438, 1, 1, NULL, '2018-08-08 07:29:39', NULL, '0000-00-00 00:00:00'),
(1750, 'L2', 438, 2, 1, NULL, '2018-08-08 07:29:39', NULL, '0000-00-00 00:00:00'),
(1751, 'L3', 438, 3, 1, NULL, '2018-08-08 07:29:39', NULL, '0000-00-00 00:00:00'),
(1752, 'L4', 438, 4, 1, NULL, '2018-08-08 07:29:39', NULL, '0000-00-00 00:00:00'),
(1753, 'Unable to comprehend', 439, 1, 1, NULL, '2018-08-08 07:31:58', NULL, '0000-00-00 00:00:00'),
(1754, 'Understands ed can be said in 2 ways ', 439, 2, 1, NULL, '2018-08-08 07:31:58', NULL, '0000-00-00 00:00:00'),
(1755, 'Reads ed words with the right pronunciation', 439, 3, 1, NULL, '2018-08-08 07:31:58', NULL, '0000-00-00 00:00:00'),
(1756, 'Hear words containing ed writes/ spells accurately', 439, 4, 1, NULL, '2018-08-08 07:31:58', NULL, '0000-00-00 00:00:00'),
(1757, 'Unable to comprehend', 440, 1, 1, NULL, '2018-08-08 07:33:47', NULL, '0000-00-00 00:00:00'),
(1758, 'Understands s can be said in 2 ways ', 440, 2, 1, NULL, '2018-08-08 07:33:47', NULL, '0000-00-00 00:00:00'),
(1759, 'Reads s words with the right pronunciation', 440, 3, 1, NULL, '2018-08-08 07:33:47', NULL, '0000-00-00 00:00:00'),
(1760, 'Hear words containing s writes/ spells accurately', 440, 4, 1, NULL, '2018-08-08 07:33:47', NULL, '0000-00-00 00:00:00'),
(1761, 'L1', 441, 1, 1, NULL, '2018-08-08 07:35:11', NULL, '0000-00-00 00:00:00'),
(1762, 'L2', 441, 2, 1, NULL, '2018-08-08 07:35:11', NULL, '0000-00-00 00:00:00'),
(1763, 'L3', 441, 3, 1, NULL, '2018-08-08 07:35:11', NULL, '0000-00-00 00:00:00'),
(1764, 'L4', 441, 4, 1, NULL, '2018-08-08 07:35:11', NULL, '0000-00-00 00:00:00'),
(1765, 'Unable to understand', 442, 1, 1, NULL, '2018-08-08 07:51:26', NULL, '0000-00-00 00:00:00'),
(1766, 'Understands opposites ', 442, 2, 1, NULL, '2018-08-08 07:51:26', NULL, '0000-00-00 00:00:00'),
(1767, 'Can match opposites', 442, 3, 1, NULL, '2018-08-08 07:51:26', NULL, '0000-00-00 00:00:00'),
(1768, 'Can give the opposite for a given word', 442, 4, 1, NULL, '2018-08-08 07:51:26', NULL, '0000-00-00 00:00:00'),
(1769, 'Unable to break the word into syllables', 443, 1, 1, NULL, '2018-08-14 09:11:04', NULL, '0000-00-00 00:00:00'),
(1770, 'Breaks with some difficulty ', 443, 2, 1, NULL, '2018-08-14 09:11:04', NULL, '0000-00-00 00:00:00'),
(1771, 'Breaks all the words well ', 443, 3, 1, NULL, '2018-08-14 09:11:04', NULL, '0000-00-00 00:00:00'),
(1772, 'Reads all 3 letter words', 443, 4, 1, NULL, '2018-08-14 09:11:04', NULL, '0000-00-00 00:00:00'),
(1773, 'Unable to notice any change', 444, 1, 1, NULL, '2018-08-14 09:12:20', NULL, '0000-00-00 00:00:00'),
(1774, 'Notes change when slope varies ', 444, 2, 1, NULL, '2018-08-14 09:12:20', NULL, '0000-00-00 00:00:00'),
(1775, 'Notes ball moves fast on steep slope ', 444, 3, 1, NULL, '2018-08-14 09:12:20', NULL, '0000-00-00 00:00:00'),
(1776, 'Changes slope and experiments', 444, 4, 1, NULL, '2018-08-14 09:12:20', NULL, '0000-00-00 00:00:00'),
(1777, 'L1', 445, 1, 1, NULL, '2018-08-14 09:22:24', NULL, '0000-00-00 00:00:00'),
(1778, 'L2', 445, 2, 1, NULL, '2018-08-14 09:22:24', NULL, '0000-00-00 00:00:00'),
(1779, 'L3', 445, 3, 1, NULL, '2018-08-14 09:22:24', NULL, '0000-00-00 00:00:00'),
(1780, 'L4', 445, 4, 1, NULL, '2018-08-14 09:22:24', NULL, '0000-00-00 00:00:00'),
(1781, 'Unable to break the word into syllables ', 446, 1, 1, NULL, '2018-08-14 09:26:27', NULL, '0000-00-00 00:00:00'),
(1782, 'Breaks with some difficulty', 446, 2, 1, NULL, '2018-08-14 09:26:27', NULL, '0000-00-00 00:00:00'),
(1783, 'Breaks all the words well ', 446, 3, 1, NULL, '2018-08-14 09:26:27', NULL, '0000-00-00 00:00:00'),
(1784, 'Reads all 3 letter words', 446, 4, 1, NULL, '2018-08-14 09:26:27', NULL, '0000-00-00 00:00:00'),
(1785, 'Unable to arrange the cards in the correct hierarchies', 447, 1, 1, NULL, '2018-08-14 09:32:15', NULL, '0000-00-00 00:00:00'),
(1786, 'Arranges the cards in the correct hierarchies after many attempts !Jut is unable to count them', 447, 2, 1, NULL, '2018-08-14 09:32:15', NULL, '0000-00-00 00:00:00'),
(1787, 'Arranges the cards in the correct hierarchies and counts many of them. He/she commits errors in counting larger numbers ', 447, 3, 1, NULL, '2018-08-14 09:32:15', NULL, '0000-00-00 00:00:00'),
(1788, 'Arranges the cards in the correct hierarchies and counts them accurately', 447, 4, 1, NULL, '2018-08-14 09:32:15', NULL, '0000-00-00 00:00:00'),
(1789, 'Unable to arrange ', 448, 1, 1, NULL, '2018-08-14 09:34:10', NULL, '0000-00-00 00:00:00'),
(1790, 'Arranges wrth some errors', 448, 2, 1, NULL, '2018-08-14 09:34:10', NULL, '0000-00-00 00:00:00'),
(1791, 'Arranges well and counts most of them ', 448, 3, 1, NULL, '2018-08-14 09:34:10', NULL, '0000-00-00 00:00:00'),
(1792, 'Arranges and counts perfectly', 448, 4, 1, NULL, '2018-08-14 09:34:10', NULL, '0000-00-00 00:00:00'),
(1793, 'Unable to find the corresponding cylinder', 449, 1, 1, NULL, '2018-08-14 09:36:12', NULL, '0000-00-00 00:00:00'),
(1794, 'Gets the exact, + or -2 after multiple visual inspection ', 449, 2, 1, NULL, '2018-08-14 09:36:12', NULL, '0000-00-00 00:00:00'),
(1795, 'Gets exact. bigger, smaller cylinder after inspection ', 449, 3, 1, NULL, '2018-08-14 09:36:12', NULL, '0000-00-00 00:00:00'),
(1796, 'Gets the exact cylinder immediately', 449, 4, 1, NULL, '2018-08-14 09:36:12', NULL, '0000-00-00 00:00:00'),
(1797, 'Gets some cylinders correctly', 450, 1, 1, NULL, '2018-08-14 09:37:26', NULL, '0000-00-00 00:00:00'),
(1798, 'Gets all cylinders correctly from tray ', 450, 2, 1, NULL, '2018-08-14 09:37:26', NULL, '0000-00-00 00:00:00'),
(1799, 'Gets some correctly from diff places', 450, 3, 1, NULL, '2018-08-14 09:37:26', NULL, '0000-00-00 00:00:00'),
(1800, 'Gets the exact cylinder from the right place', 450, 4, 1, NULL, '2018-08-14 09:37:26', NULL, '0000-00-00 00:00:00'),
(1801, 'Unable to arrange the blocks and cards in the correct hierarchies ', 451, 1, 1, NULL, '2018-08-14 09:41:45', NULL, '0000-00-00 00:00:00'),
(1802, 'Arranges the blocks and cards in the correct hierarchies and counts them after a few attempts. He/she is unable to correlate', 451, 2, 1, NULL, '2018-08-14 09:41:45', NULL, '0000-00-00 00:00:00'),
(1803, 'Arranges the blocks and cards in the correct hierarchies and counts them after a few attempts and able to correlate', 451, 3, 1, NULL, '2018-08-14 09:41:45', NULL, '0000-00-00 00:00:00'),
(1804, 'Arranges the blocks and cards in the correct hierarchies and counts them in first attempt and correlates', 451, 4, 1, NULL, '2018-08-14 09:41:45', NULL, '0000-00-00 00:00:00'),
(1805, 'L1', 452, 1, 1, NULL, '2018-08-17 06:51:24', NULL, '0000-00-00 00:00:00'),
(1806, 'L2', 452, 2, 1, NULL, '2018-08-17 06:51:24', NULL, '0000-00-00 00:00:00'),
(1807, 'L3', 452, 3, 1, NULL, '2018-08-17 06:51:24', NULL, '0000-00-00 00:00:00'),
(1808, 'L4', 452, 4, 1, NULL, '2018-08-17 06:51:24', NULL, '0000-00-00 00:00:00'),
(1809, 'L1', 453, 1, 1, NULL, '2018-08-17 06:52:15', NULL, '0000-00-00 00:00:00'),
(1810, 'L2', 453, 2, 1, NULL, '2018-08-17 06:52:15', NULL, '0000-00-00 00:00:00'),
(1811, 'L3', 453, 3, 1, NULL, '2018-08-17 06:52:15', NULL, '0000-00-00 00:00:00'),
(1812, 'L4', 453, 4, 1, NULL, '2018-08-17 06:52:15', NULL, '0000-00-00 00:00:00'),
(1813, 'L1', 454, 1, 1, NULL, '2018-08-17 06:52:57', NULL, '0000-00-00 00:00:00'),
(1814, 'L2', 454, 2, 1, NULL, '2018-08-17 06:52:57', NULL, '0000-00-00 00:00:00'),
(1815, 'L3', 454, 3, 1, NULL, '2018-08-17 06:52:57', NULL, '0000-00-00 00:00:00'),
(1816, 'L4', 454, 4, 1, NULL, '2018-08-17 06:52:57', NULL, '0000-00-00 00:00:00'),
(1817, 'L1', 455, 1, 1, NULL, '2018-08-17 06:54:10', NULL, '0000-00-00 00:00:00'),
(1818, 'L2', 455, 2, 1, NULL, '2018-08-17 06:54:10', NULL, '0000-00-00 00:00:00'),
(1819, 'L3', 455, 3, 1, NULL, '2018-08-17 06:54:10', NULL, '0000-00-00 00:00:00'),
(1820, 'L4', 455, 4, 1, NULL, '2018-08-17 06:54:10', NULL, '0000-00-00 00:00:00'),
(1821, 'L1', 456, 1, 1, NULL, '2018-08-17 06:54:51', NULL, '0000-00-00 00:00:00'),
(1822, 'L2', 456, 2, 1, NULL, '2018-08-17 06:54:51', NULL, '0000-00-00 00:00:00'),
(1823, 'L3', 456, 3, 1, NULL, '2018-08-17 06:54:51', NULL, '0000-00-00 00:00:00'),
(1824, 'L4', 456, 4, 1, NULL, '2018-08-17 06:54:51', NULL, '0000-00-00 00:00:00'),
(1825, 'L1', 457, 1, 1, NULL, '2018-08-17 07:14:48', NULL, '0000-00-00 00:00:00'),
(1826, 'L2', 457, 2, 1, NULL, '2018-08-17 07:14:49', NULL, '0000-00-00 00:00:00'),
(1827, 'L3', 457, 3, 1, NULL, '2018-08-17 07:14:49', NULL, '0000-00-00 00:00:00'),
(1828, 'L4', 457, 4, 1, NULL, '2018-08-17 07:14:49', NULL, '0000-00-00 00:00:00'),
(1829, 'L1', 458, 1, 1, NULL, '2018-08-17 07:16:04', NULL, '0000-00-00 00:00:00'),
(1830, 'L2', 458, 2, 1, NULL, '2018-08-17 07:16:04', NULL, '0000-00-00 00:00:00'),
(1831, 'L3', 458, 3, 1, NULL, '2018-08-17 07:16:04', NULL, '0000-00-00 00:00:00'),
(1832, 'L4', 458, 4, 1, NULL, '2018-08-17 07:16:04', NULL, '0000-00-00 00:00:00'),
(1833, 'L1', 459, 1, 1, NULL, '2018-08-17 07:17:47', NULL, '0000-00-00 00:00:00'),
(1834, 'L2', 459, 2, 1, NULL, '2018-08-17 07:17:47', NULL, '0000-00-00 00:00:00'),
(1835, 'L3', 459, 3, 1, NULL, '2018-08-17 07:17:47', NULL, '0000-00-00 00:00:00'),
(1836, 'L4', 459, 4, 1, NULL, '2018-08-17 07:17:47', NULL, '0000-00-00 00:00:00'),
(1837, 'L1', 460, 1, 1, NULL, '2018-08-17 07:18:48', NULL, '0000-00-00 00:00:00'),
(1838, 'L2', 460, 2, 1, NULL, '2018-08-17 07:18:48', NULL, '0000-00-00 00:00:00'),
(1839, 'L3', 460, 3, 1, NULL, '2018-08-17 07:18:48', NULL, '0000-00-00 00:00:00'),
(1840, 'L4', 460, 4, 1, NULL, '2018-08-17 07:18:48', NULL, '0000-00-00 00:00:00'),
(1841, 'L1', 461, 1, 1, NULL, '2018-08-17 07:19:41', NULL, '0000-00-00 00:00:00'),
(1842, 'L2', 461, 2, 1, NULL, '2018-08-17 07:19:41', NULL, '0000-00-00 00:00:00'),
(1843, 'L3', 461, 3, 1, NULL, '2018-08-17 07:19:41', NULL, '0000-00-00 00:00:00'),
(1844, 'L4', 461, 4, 1, NULL, '2018-08-17 07:19:41', NULL, '0000-00-00 00:00:00'),
(1845, 'L1', 462, 1, 1, NULL, '2018-08-17 07:20:39', NULL, '0000-00-00 00:00:00'),
(1846, 'L2', 462, 2, 1, NULL, '2018-08-17 07:20:39', NULL, '0000-00-00 00:00:00'),
(1847, 'L3', 462, 3, 1, NULL, '2018-08-17 07:20:39', NULL, '0000-00-00 00:00:00'),
(1848, 'L4', 462, 4, 1, NULL, '2018-08-17 07:20:39', NULL, '0000-00-00 00:00:00'),
(1849, 'L1', 463, 1, 1, NULL, '2018-08-17 07:34:41', NULL, '0000-00-00 00:00:00'),
(1850, 'L2', 463, 2, 1, NULL, '2018-08-17 07:34:41', NULL, '0000-00-00 00:00:00'),
(1851, 'L3', 463, 3, 1, NULL, '2018-08-17 07:34:41', NULL, '0000-00-00 00:00:00'),
(1852, 'L4', 463, 4, 1, NULL, '2018-08-17 07:34:41', NULL, '0000-00-00 00:00:00'),
(1853, 'L1', 464, 1, 1, NULL, '2018-08-17 07:35:25', NULL, '0000-00-00 00:00:00'),
(1854, 'L2', 464, 2, 1, NULL, '2018-08-17 07:35:25', NULL, '0000-00-00 00:00:00'),
(1855, 'L3', 464, 3, 1, NULL, '2018-08-17 07:35:25', NULL, '0000-00-00 00:00:00'),
(1856, 'L4', 464, 4, 1, NULL, '2018-08-17 07:35:25', NULL, '0000-00-00 00:00:00'),
(1857, 'L1', 465, 1, 1, NULL, '2018-08-17 07:36:22', NULL, '0000-00-00 00:00:00'),
(1858, 'L2', 465, 2, 1, NULL, '2018-08-17 07:36:22', NULL, '0000-00-00 00:00:00'),
(1859, 'L3', 465, 3, 1, NULL, '2018-08-17 07:36:22', NULL, '0000-00-00 00:00:00'),
(1860, 'L4', 465, 4, 1, NULL, '2018-08-17 07:36:22', NULL, '0000-00-00 00:00:00'),
(1861, 'L1', 466, 1, 1, NULL, '2018-08-17 07:37:10', NULL, '0000-00-00 00:00:00'),
(1862, 'L2', 466, 2, 1, NULL, '2018-08-17 07:37:10', NULL, '0000-00-00 00:00:00'),
(1863, 'L3', 466, 3, 1, NULL, '2018-08-17 07:37:10', NULL, '0000-00-00 00:00:00'),
(1864, 'L4', 466, 4, 1, NULL, '2018-08-17 07:37:10', NULL, '0000-00-00 00:00:00'),
(1865, 'L1', 467, 1, 1, NULL, '2018-08-17 07:40:35', NULL, '0000-00-00 00:00:00'),
(1866, 'L2', 467, 2, 1, NULL, '2018-08-17 07:40:35', NULL, '0000-00-00 00:00:00'),
(1867, 'L3', 467, 3, 1, NULL, '2018-08-17 07:40:35', NULL, '0000-00-00 00:00:00'),
(1868, 'L4', 467, 4, 1, NULL, '2018-08-17 07:40:35', NULL, '0000-00-00 00:00:00'),
(1869, 'L1', 468, 1, 1, NULL, '2018-08-17 07:44:04', NULL, '0000-00-00 00:00:00'),
(1870, 'L2', 468, 2, 1, NULL, '2018-08-17 07:44:04', NULL, '0000-00-00 00:00:00'),
(1871, 'L3', 468, 3, 1, NULL, '2018-08-17 07:44:04', NULL, '0000-00-00 00:00:00'),
(1872, 'L4', 468, 4, 1, NULL, '2018-08-17 07:44:04', NULL, '0000-00-00 00:00:00'),
(1873, 'L1', 469, 1, 1, NULL, '2018-08-17 07:45:04', NULL, '0000-00-00 00:00:00'),
(1874, 'L2', 469, 2, 1, NULL, '2018-08-17 07:45:04', NULL, '0000-00-00 00:00:00'),
(1875, 'L3', 469, 3, 1, NULL, '2018-08-17 07:45:04', NULL, '0000-00-00 00:00:00'),
(1876, 'L4', 469, 4, 1, NULL, '2018-08-17 07:45:04', NULL, '0000-00-00 00:00:00'),
(1877, 'L1', 470, 1, 1, NULL, '2018-08-17 07:52:54', NULL, '0000-00-00 00:00:00'),
(1878, 'L2', 470, 2, 1, NULL, '2018-08-17 07:52:54', NULL, '0000-00-00 00:00:00'),
(1879, 'L3', 470, 3, 1, NULL, '2018-08-17 07:52:54', NULL, '0000-00-00 00:00:00'),
(1880, 'L4', 470, 4, 1, NULL, '2018-08-17 07:52:54', NULL, '0000-00-00 00:00:00'),
(1881, 'L1', 471, 1, 1, NULL, '2018-08-17 07:53:34', NULL, '0000-00-00 00:00:00'),
(1882, 'L2', 471, 2, 1, NULL, '2018-08-17 07:53:34', NULL, '0000-00-00 00:00:00'),
(1883, 'L3', 471, 3, 1, NULL, '2018-08-17 07:53:34', NULL, '0000-00-00 00:00:00'),
(1884, 'L4', 471, 4, 1, NULL, '2018-08-17 07:53:34', NULL, '0000-00-00 00:00:00'),
(1885, 'L1', 472, 1, 1, NULL, '2018-08-17 07:54:20', NULL, '0000-00-00 00:00:00'),
(1886, 'L2', 472, 2, 1, NULL, '2018-08-17 07:54:21', NULL, '0000-00-00 00:00:00'),
(1887, 'L3', 472, 3, 1, NULL, '2018-08-17 07:54:21', NULL, '0000-00-00 00:00:00'),
(1888, 'L4', 472, 4, 1, NULL, '2018-08-17 07:54:21', NULL, '0000-00-00 00:00:00'),
(1889, 'Unable to name any', 473, 1, 1, NULL, '2018-08-18 05:16:34', NULL, '0000-00-00 00:00:00'),
(1890, 'Names at least 2', 473, 2, 1, NULL, '2018-08-18 05:16:34', NULL, '0000-00-00 00:00:00'),
(1891, 'Identifies and names 3-5 quadrilaterals ', 473, 3, 1, NULL, '2018-08-18 05:16:34', NULL, '0000-00-00 00:00:00'),
(1892, 'Identifies and names more than 6 quadrilaterals', 473, 4, 1, NULL, '2018-08-18 05:16:34', NULL, '0000-00-00 00:00:00'),
(1893, 'Unable to identify the correct hierarchies on the number cards ', 474, 1, 1, NULL, '2018-08-18 05:19:38', NULL, '0000-00-00 00:00:00'),
(1894, 'Able to identify and count the hierarchies on the number cards. He / she commits errors in bringing the correct quantity from the place value system', 474, 2, 1, NULL, '2018-08-18 05:19:38', NULL, '0000-00-00 00:00:00'),
(1895, 'Able to count the correct hierarchies on the number cards. He/she brings the correct quantity and correlates them to the number cards after a few trials', 474, 3, 1, NULL, '2018-08-18 05:19:38', NULL, '0000-00-00 00:00:00'),
(1896, 'Able to count the correct hierarchies on the number cards', 474, 4, 1, NULL, '2018-08-18 05:19:38', NULL, '0000-00-00 00:00:00');
INSERT INTO `t_activities_level` (`activity_level_id`, `step_title`, `activity_id`, `level_id`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1897, 'Unable to find the pair', 475, 1, 1, NULL, '2018-08-18 05:24:18', NULL, '0000-00-00 00:00:00'),
(1898, 'Finds the pair', 475, 2, 1, NULL, '2018-08-18 05:24:19', NULL, '0000-00-00 00:00:00'),
(1899, 'Finds the pair fairly well in diff places ', 475, 3, 1, NULL, '2018-08-18 05:24:19', NULL, '0000-00-00 00:00:00'),
(1900, 'Finds the pair fairly well in diff places Finds the pair perfectly when in diff places', 475, 4, 1, NULL, '2018-08-18 05:24:19', NULL, '0000-00-00 00:00:00'),
(1901, 'Unable to sequence ', 476, 1, 1, NULL, '2018-08-18 05:26:30', NULL, '0000-00-00 00:00:00'),
(1902, 'Sequences 1-2 patterns  ', 476, 2, 1, NULL, '2018-08-18 05:26:31', NULL, '0000-00-00 00:00:00'),
(1903, 'Sequences all patterns correctly taking a little time', 476, 3, 1, NULL, '2018-08-18 05:26:31', NULL, '0000-00-00 00:00:00'),
(1904, 'Sequences all patterns instantly', 476, 4, 1, NULL, '2018-08-18 05:26:31', NULL, '0000-00-00 00:00:00'),
(1905, 'Unable to understand', 477, 1, 1, NULL, '2018-08-18 05:33:53', NULL, '0000-00-00 00:00:00'),
(1906, 'Expresses whether it is a hot day or cold day', 477, 2, 1, NULL, '2018-08-18 05:33:53', NULL, '0000-00-00 00:00:00'),
(1907, 'Is clear about summer,winter and rainy season ', 477, 3, 1, NULL, '2018-08-18 05:33:53', NULL, '0000-00-00 00:00:00'),
(1908, 'Can talk for 5 min about the weather /seasons etc', 477, 4, 1, NULL, '2018-08-18 05:33:53', NULL, '0000-00-00 00:00:00'),
(1909, 'L1', 478, 1, 1, NULL, '2018-08-18 05:36:04', NULL, '0000-00-00 00:00:00'),
(1910, 'L2', 478, 2, 1, NULL, '2018-08-18 05:36:04', NULL, '0000-00-00 00:00:00'),
(1911, 'L3', 478, 3, 1, NULL, '2018-08-18 05:36:04', NULL, '0000-00-00 00:00:00'),
(1912, 'L4', 478, 4, 1, NULL, '2018-08-18 05:36:04', NULL, '0000-00-00 00:00:00'),
(1913, 'Unable to count the correct hierarchies of the place value system ', 479, 1, 1, NULL, '2018-08-18 05:41:17', NULL, '0000-00-00 00:00:00'),
(1914, 'Able to count the correct hierarchies of the place value system. He/she commits errors in bringing the correct number cards ', 479, 2, 1, NULL, '2018-08-18 05:41:17', NULL, '0000-00-00 00:00:00'),
(1915, 'Able to count the correct hierarchies of the place value system. He/she brings the correct number cards and correlates them after a few trials.', 479, 3, 1, NULL, '2018-08-18 05:41:17', NULL, '0000-00-00 00:00:00'),
(1916, 'Able to count the correct hierarchies of the place value system. He/she brings the correct number cards and correlates them accurately.', 479, 4, 1, NULL, '2018-08-18 05:41:17', NULL, '0000-00-00 00:00:00'),
(1917, 'Unable to identify ', 480, 1, 1, NULL, '2018-08-18 05:45:37', NULL, '0000-00-00 00:00:00'),
(1918, 'Identifies a few of the names of the tens and commits errors while placing the number cards ', 480, 2, 1, NULL, '2018-08-18 05:45:37', NULL, '0000-00-00 00:00:00'),
(1919, 'Identifies all the names of the tens and places few of  the number cards correctly ', 480, 3, 1, NULL, '2018-08-18 05:45:37', NULL, '0000-00-00 00:00:00'),
(1920, 'Identifies, places and names all the names of the tens', 480, 4, 1, NULL, '2018-08-18 05:45:37', NULL, '0000-00-00 00:00:00'),
(1921, 'L1', 481, 1, 1, NULL, '2018-08-18 05:47:55', NULL, '0000-00-00 00:00:00'),
(1922, 'L2', 481, 2, 1, NULL, '2018-08-18 05:47:55', NULL, '0000-00-00 00:00:00'),
(1923, 'L3', 481, 3, 1, NULL, '2018-08-18 05:47:55', NULL, '0000-00-00 00:00:00'),
(1924, 'L4', 481, 4, 1, NULL, '2018-08-18 05:47:55', NULL, '0000-00-00 00:00:00'),
(1925, 'Unable to find the odd one', 482, 1, 1, NULL, '2018-08-18 05:55:01', NULL, '0000-00-00 00:00:00'),
(1926, 'Finds the odd one out inconsistently ', 482, 2, 1, NULL, '2018-08-18 05:55:01', NULL, '0000-00-00 00:00:00'),
(1927, 'Consistently finds the odd one ', 482, 3, 1, NULL, '2018-08-18 05:55:01', NULL, '0000-00-00 00:00:00'),
(1928, 'Finds odd one in any geo shapes', 482, 4, 1, NULL, '2018-08-18 05:55:01', NULL, '0000-00-00 00:00:00'),
(1929, 'Unable to comprehend ', 483, 1, 1, NULL, '2018-08-18 05:56:46', NULL, '0000-00-00 00:00:00'),
(1930, 'Identifies odd, even fairly well', 483, 2, 1, NULL, '2018-08-18 05:56:46', NULL, '0000-00-00 00:00:00'),
(1931, 'Identifies all odd, even from 1 to 10', 483, 3, 1, NULL, '2018-08-18 05:56:46', NULL, '0000-00-00 00:00:00'),
(1932, 'Identifies odd and even on worksheet', 483, 4, 1, NULL, '2018-08-18 05:56:46', NULL, '0000-00-00 00:00:00'),
(1933, 'Unable to match w/o controlcard', 484, 1, 1, NULL, '2018-08-18 06:02:42', NULL, '0000-00-00 00:00:00'),
(1934, 'Matches few pictures and first letters', 484, 2, 1, NULL, '2018-08-18 06:02:42', NULL, '0000-00-00 00:00:00'),
(1935, 'Matches some pictures and words reading with difficulty ', 484, 3, 1, NULL, '2018-08-18 06:02:42', NULL, '0000-00-00 00:00:00'),
(1936, 'Reads the word and finds the picture', 484, 4, 1, NULL, '2018-08-18 06:02:42', NULL, '0000-00-00 00:00:00'),
(1937, 'Unable to add', 485, 1, 1, NULL, '2018-08-18 06:04:08', NULL, '0000-00-00 00:00:00'),
(1938, 'Can add numbers up to 5', 485, 2, 1, NULL, '2018-08-18 06:04:08', NULL, '0000-00-00 00:00:00'),
(1939, 'Adds any 2 numbers with some difficulty ', 485, 3, 1, NULL, '2018-08-18 06:04:08', NULL, '0000-00-00 00:00:00'),
(1940, 'Adds all single digit easily', 485, 4, 1, NULL, '2018-08-18 06:04:08', NULL, '0000-00-00 00:00:00'),
(1941, 'Does not play', 486, 1, 1, NULL, '2018-08-18 06:07:28', NULL, '0000-00-00 00:00:00'),
(1942, 'Plays but does not know when a line is formed ', 486, 2, 1, NULL, '2018-08-18 06:07:28', NULL, '0000-00-00 00:00:00'),
(1943, 'Knows when horizontal or vertical line is formed ', 486, 3, 1, NULL, '2018-08-18 06:07:28', NULL, '0000-00-00 00:00:00'),
(1944, 'knows when Horizontal/ vertical/ diagonal lines', 486, 4, 1, NULL, '2018-08-18 06:07:28', NULL, '0000-00-00 00:00:00'),
(1945, 'Unable to read complex time', 487, 1, 1, NULL, '2018-08-18 06:08:42', NULL, '0000-00-00 00:00:00'),
(1946, 'Reads the time With some errors ', 487, 2, 1, NULL, '2018-08-18 06:08:42', NULL, '0000-00-00 00:00:00'),
(1947, 'Reads time well', 487, 3, 1, NULL, '2018-08-18 06:08:42', NULL, '0000-00-00 00:00:00'),
(1948, 'Places hour and minute hand', 487, 4, 1, NULL, '2018-08-18 06:08:42', NULL, '0000-00-00 00:00:00'),
(1949, 'Unable to match w/o control card', 488, 1, 1, NULL, '2018-08-18 06:10:24', NULL, '0000-00-00 00:00:00'),
(1950, 'Matches few pictures and first letters', 488, 2, 1, NULL, '2018-08-18 06:10:24', NULL, '0000-00-00 00:00:00'),
(1951, 'Matches some pictures and words reading with difficulty ', 488, 3, 1, NULL, '2018-08-18 06:10:24', NULL, '0000-00-00 00:00:00'),
(1952, 'Reads the word and finds the picture', 488, 4, 1, NULL, '2018-08-18 06:10:24', NULL, '0000-00-00 00:00:00'),
(1953, 'Cannot follow the symbol ', 489, 1, 1, NULL, '2018-08-18 06:11:27', NULL, '0000-00-00 00:00:00'),
(1954, 'Identifies symbol and subtracts', 489, 2, 1, NULL, '2018-08-18 06:11:27', NULL, '0000-00-00 00:00:00'),
(1955, 'Understands the symbol represents subtraction ', 489, 3, 1, NULL, '2018-08-18 06:11:27', NULL, '0000-00-00 00:00:00'),
(1956, 'Sees a sum. and is able to put the sub symbol    ', 489, 4, 1, NULL, '2018-08-18 06:11:27', NULL, '0000-00-00 00:00:00'),
(1957, 'Unable toidentify hierarchy', 490, 1, 1, NULL, '2018-08-18 06:13:59', NULL, '0000-00-00 00:00:00'),
(1958, 'Identify hierarchy,unable to read the Whole number  ', 490, 2, 1, NULL, '2018-08-18 06:13:59', NULL, '0000-00-00 00:00:00'),
(1959, 'Identify hierarchy,reads whole number With some difficulty', 490, 3, 1, NULL, '2018-08-18 06:13:59', NULL, '0000-00-00 00:00:00'),
(1960, 'identify and read any number accurately', 490, 4, 1, NULL, '2018-08-18 06:13:59', NULL, '0000-00-00 00:00:00'),
(1961, 'Unable to follow', 491, 1, 1, NULL, '2018-08-18 06:16:36', NULL, '0000-00-00 00:00:00'),
(1962, 'Adds simple adjectives to nouns ', 491, 2, 1, NULL, '2018-08-18 06:16:36', NULL, '0000-00-00 00:00:00'),
(1963, 'Find adjectives in a sentence ', 491, 3, 1, NULL, '2018-08-18 06:16:36', NULL, '0000-00-00 00:00:00'),
(1964, 'Uses many varieties of adjectives', 491, 4, 1, NULL, '2018-08-18 06:16:36', NULL, '0000-00-00 00:00:00'),
(1965, 'Unable to sequence', 492, 1, 1, NULL, '2018-08-18 06:17:27', NULL, '0000-00-00 00:00:00'),
(1966, 'Sequences 1-2 patterns', 492, 2, 1, NULL, '2018-08-18 06:17:27', NULL, '0000-00-00 00:00:00'),
(1967, 'Sequences all patterns correctly taking a little time', 492, 3, 1, NULL, '2018-08-18 06:17:27', NULL, '0000-00-00 00:00:00'),
(1968, 'Sequences all patterns instantly', 492, 4, 1, NULL, '2018-08-18 06:17:27', NULL, '0000-00-00 00:00:00'),
(1969, 'Struggles With arrows ', 493, 1, 1, NULL, '2018-08-18 06:18:54', NULL, '0000-00-00 00:00:00'),
(1970, 'Places both arrows wen', 493, 2, 1, NULL, '2018-08-18 06:18:54', NULL, '0000-00-00 00:00:00'),
(1971, 'Subtracts 1 to 10 wen, gets answer', 493, 3, 1, NULL, '2018-08-18 06:18:54', NULL, '0000-00-00 00:00:00'),
(1972, 'Subtracts 1- 20 well. explains going back with subtraction', 493, 4, 1, NULL, '2018-08-18 06:18:54', NULL, '0000-00-00 00:00:00'),
(1973, 'Unable to sequence', 494, 1, 1, NULL, '2018-08-18 06:24:47', NULL, '0000-00-00 00:00:00'),
(1974, 'Able to sequence 1-2 pieces', 494, 2, 1, NULL, '2018-08-18 06:24:47', NULL, '0000-00-00 00:00:00'),
(1975, 'Sequences 1-2 patterns fully', 494, 3, 1, NULL, '2018-08-18 06:24:47', NULL, '0000-00-00 00:00:00'),
(1976, 'Sequence all colour and shape sequences', 494, 4, 1, NULL, '2018-08-18 06:24:47', NULL, '0000-00-00 00:00:00'),
(1977, 'Unable to follow', 495, 1, 1, NULL, '2018-08-18 06:26:22', NULL, '0000-00-00 00:00:00'),
(1978, 'Identify common matrls- glass.wood', 495, 2, 1, NULL, '2018-08-18 06:26:22', NULL, '0000-00-00 00:00:00'),
(1979, 'Knows many types of materials -rubber.wood ', 495, 3, 1, NULL, '2018-08-18 06:26:22', NULL, '0000-00-00 00:00:00'),
(1980, 'Identifies material when shown an object', 495, 4, 1, NULL, '2018-08-18 06:26:22', NULL, '0000-00-00 00:00:00'),
(1981, 'Unable to understand', 496, 1, 1, NULL, '2018-08-18 06:27:47', NULL, '0000-00-00 00:00:00'),
(1982, 'Understands water and sun are needed ', 496, 2, 1, NULL, '2018-08-18 06:27:47', NULL, '0000-00-00 00:00:00'),
(1983, 'Identifies factors to grow a plant ', 496, 3, 1, NULL, '2018-08-18 06:27:47', NULL, '0000-00-00 00:00:00'),
(1984, 'Explains in detail how plant grows', 496, 4, 1, NULL, '2018-08-18 06:27:47', NULL, '0000-00-00 00:00:00'),
(1985, 'Unable to play', 497, 1, 1, NULL, '2018-08-18 06:30:02', NULL, '0000-00-00 00:00:00'),
(1986, 'Able to sequence 2 pieces correctly ', 497, 2, 1, NULL, '2018-08-18 06:30:02', NULL, '0000-00-00 00:00:00'),
(1987, 'Plays the game with help', 497, 3, 1, NULL, '2018-08-18 06:30:02', NULL, '0000-00-00 00:00:00'),
(1988, 'Can play independently', 497, 4, 1, NULL, '2018-08-18 06:30:02', NULL, '0000-00-00 00:00:00'),
(1989, 'Unable to subtract', 498, 1, 1, NULL, '2018-08-18 06:30:56', NULL, '0000-00-00 00:00:00'),
(1990, 'Subtracts only with control card ', 498, 2, 1, NULL, '2018-08-18 06:30:56', NULL, '0000-00-00 00:00:00'),
(1991, 'Subtracts small nums w/o control card', 498, 3, 1, NULL, '2018-08-18 06:30:56', NULL, '0000-00-00 00:00:00'),
(1992, 'Subtract all numbers', 498, 4, 1, NULL, '2018-08-18 06:30:56', NULL, '0000-00-00 00:00:00'),
(1993, 'L1', 499, 1, 1, NULL, '2018-08-18 06:31:45', NULL, '0000-00-00 00:00:00'),
(1994, 'L2', 499, 2, 1, NULL, '2018-08-18 06:31:45', NULL, '0000-00-00 00:00:00'),
(1995, 'L3', 499, 3, 1, NULL, '2018-08-18 06:31:45', NULL, '0000-00-00 00:00:00'),
(1996, 'L4', 499, 4, 1, NULL, '2018-08-18 06:31:45', NULL, '0000-00-00 00:00:00'),
(1997, 'L1', 500, 1, 1, NULL, '2018-08-18 06:36:15', NULL, '0000-00-00 00:00:00'),
(1998, 'L2', 500, 2, 1, NULL, '2018-08-18 06:36:15', NULL, '0000-00-00 00:00:00'),
(1999, 'L3', 500, 3, 1, NULL, '2018-08-18 06:36:15', NULL, '0000-00-00 00:00:00'),
(2000, 'L4', 500, 4, 1, NULL, '2018-08-18 06:36:15', NULL, '0000-00-00 00:00:00'),
(2001, 'Unable to pronounce/ identify', 501, 1, 1, NULL, '2018-08-18 06:37:59', NULL, '0000-00-00 00:00:00'),
(2002, 'Identifies and reads words containing tch ', 501, 2, 1, NULL, '2018-08-18 06:37:59', NULL, '0000-00-00 00:00:00'),
(2003, 'Able to give words that contain tch', 501, 3, 1, NULL, '2018-08-18 06:37:59', NULL, '0000-00-00 00:00:00'),
(2004, 'Hear words containing tch.writes/ spells accurately', 501, 4, 1, NULL, '2018-08-18 06:37:59', NULL, '0000-00-00 00:00:00'),
(2005, 'Unable to pronounce/ identify', 502, 1, 1, NULL, '2018-08-18 06:40:33', NULL, '0000-00-00 00:00:00'),
(2006, 'Identifies and reads words ending with le ', 502, 2, 1, NULL, '2018-08-18 06:40:33', NULL, '0000-00-00 00:00:00'),
(2007, 'Able to give words that end with le', 502, 3, 1, NULL, '2018-08-18 06:40:33', NULL, '0000-00-00 00:00:00'),
(2008, 'Hear words ending with le, writes/ spells accurately', 502, 4, 1, NULL, '2018-08-18 06:40:33', NULL, '0000-00-00 00:00:00'),
(2009, 'Unable to pronounce/ identify', 503, 1, 1, NULL, '2018-08-18 06:41:49', NULL, '0000-00-00 00:00:00'),
(2010, 'Identifies and reads words containing ear ', 503, 2, 1, NULL, '2018-08-18 06:41:49', NULL, '0000-00-00 00:00:00'),
(2011, 'Able to give words that contain ear', 503, 3, 1, NULL, '2018-08-18 06:41:49', NULL, '0000-00-00 00:00:00'),
(2012, 'Hear words containing ear writes/ spells accurately', 503, 4, 1, NULL, '2018-08-18 06:41:49', NULL, '0000-00-00 00:00:00'),
(2013, 'Unable to pair correctly', 504, 1, 1, NULL, '2018-08-18 06:45:00', NULL, '0000-00-00 00:00:00'),
(2014, 'Pairs with some difficulty ', 504, 2, 1, NULL, '2018-08-18 06:45:00', NULL, '0000-00-00 00:00:00'),
(2015, 'Pairs all perfectly easily', 504, 3, 1, NULL, '2018-08-18 06:45:00', NULL, '0000-00-00 00:00:00'),
(2016, 'Matches 2 images- same not on paper', 504, 4, 1, NULL, '2018-08-18 06:45:00', NULL, '0000-00-00 00:00:00'),
(2017, 'Unable to follow', 505, 1, 1, NULL, '2018-08-18 06:47:05', NULL, '0000-00-00 00:00:00'),
(2018, 'Identifies pronouns in a sentence', 505, 2, 1, NULL, '2018-08-18 06:47:05', NULL, '0000-00-00 00:00:00'),
(2019, 'Replaces with pronouns with some difficulty ', 505, 3, 1, NULL, '2018-08-18 06:47:05', NULL, '0000-00-00 00:00:00'),
(2020, 'Replaces nouns with pronouns well', 505, 4, 1, NULL, '2018-08-18 06:47:05', NULL, '0000-00-00 00:00:00'),
(2021, 'Unable to form words', 506, 1, 1, NULL, '2018-08-18 06:47:20', NULL, '0000-00-00 00:00:00'),
(2022, 'Struggles to forms 4 letter words ', 506, 2, 1, NULL, '2018-08-18 06:47:20', NULL, '0000-00-00 00:00:00'),
(2023, 'Forms 4 letter words easily ', 506, 3, 1, NULL, '2018-08-18 06:47:20', NULL, '0000-00-00 00:00:00'),
(2024, 'Forms large words also easily', 506, 4, 1, NULL, '2018-08-18 06:47:20', NULL, '0000-00-00 00:00:00'),
(2025, 'Unable to correlate pieces with cards', 507, 1, 1, NULL, '2018-08-18 06:50:16', NULL, '0000-00-00 00:00:00'),
(2026, 'Able to match some pieces with a card ', 507, 2, 1, NULL, '2018-08-18 06:50:16', NULL, '0000-00-00 00:00:00'),
(2027, 'Matches all 30 with 20 card ', 507, 3, 1, NULL, '2018-08-18 06:50:16', NULL, '0000-00-00 00:00:00'),
(2028, 'Worksheet', 507, 4, 1, NULL, '2018-08-18 06:50:16', NULL, '0000-00-00 00:00:00'),
(2029, 'Unable to do', 508, 1, 1, NULL, '2018-08-18 06:52:24', NULL, '0000-00-00 00:00:00'),
(2030, 'Transfer 1-2 balls with difficulty ', 508, 2, 1, NULL, '2018-08-18 06:52:24', NULL, '0000-00-00 00:00:00'),
(2031, 'Transfers 3-4 balls with some spillage', 508, 3, 1, NULL, '2018-08-18 06:52:24', NULL, '0000-00-00 00:00:00'),
(2032, 'Comfortably transfers 10 balls without much spillage', 508, 4, 1, NULL, '2018-08-18 06:52:24', NULL, '0000-00-00 00:00:00'),
(2033, 'Unable to understand', 509, 1, 1, NULL, '2018-08-18 06:53:41', NULL, '0000-00-00 00:00:00'),
(2034, 'Identifies names like month and week ', 509, 2, 1, NULL, '2018-08-18 06:53:41', NULL, '0000-00-00 00:00:00'),
(2035, 'Count number of days in week / month', 509, 3, 1, NULL, '2018-08-18 06:53:41', NULL, '0000-00-00 00:00:00'),
(2036, 'Says how many days in a week, month and the names', 509, 4, 1, NULL, '2018-08-18 06:53:41', NULL, '0000-00-00 00:00:00'),
(2037, 'L2', 510, 1, 1, NULL, '2018-08-18 06:55:32', NULL, '0000-00-00 00:00:00'),
(2038, 'L2', 510, 2, 1, NULL, '2018-08-18 06:55:32', NULL, '0000-00-00 00:00:00'),
(2039, 'L3', 510, 3, 1, NULL, '2018-08-18 06:55:32', NULL, '0000-00-00 00:00:00'),
(2040, 'L4', 510, 4, 1, NULL, '2018-08-18 06:55:32', NULL, '0000-00-00 00:00:00'),
(2041, 'Identifies dark and light', 511, 1, 1, NULL, '2018-08-18 06:57:54', NULL, '0000-00-00 00:00:00'),
(2042, 'Identifies darker than ', 511, 2, 1, NULL, '2018-08-18 06:57:54', NULL, '0000-00-00 00:00:00'),
(2043, 'Identifies lighter than', 511, 3, 1, NULL, '2018-08-18 06:57:54', NULL, '0000-00-00 00:00:00'),
(2044, 'Identifies darker, lightest etc easily', 511, 4, 1, NULL, '2018-08-18 06:57:54', NULL, '0000-00-00 00:00:00'),
(2045, 'Unable to do the activity', 512, 1, 1, NULL, '2018-08-18 06:59:54', NULL, '0000-00-00 00:00:00'),
(2046, 'Sorts in groups, unable to sequence ', 512, 2, 1, NULL, '2018-08-18 06:59:54', NULL, '0000-00-00 00:00:00'),
(2047, 'Sequences with errors', 512, 3, 1, NULL, '2018-08-18 06:59:54', NULL, '0000-00-00 00:00:00'),
(2048, 'Sequences well and able to explain', 512, 4, 1, NULL, '2018-08-18 06:59:54', NULL, '0000-00-00 00:00:00'),
(2049, 'Unable to understand ', 513, 1, 1, NULL, '2018-08-20 06:10:40', NULL, '0000-00-00 00:00:00'),
(2050, 'Understands synonyms ', 513, 2, 1, NULL, '2018-08-20 06:10:40', NULL, '0000-00-00 00:00:00'),
(2051, 'Can match synonyms', 513, 3, 1, NULL, '2018-08-20 06:10:40', NULL, '0000-00-00 00:00:00'),
(2052, 'Can give the synonym for a given word', 513, 4, 1, NULL, '2018-08-20 06:10:40', NULL, '0000-00-00 00:00:00'),
(2053, 'TaKes out all pieces from 1 to 5, puts bacK well', 514, 1, 1, NULL, '2018-08-20 06:14:57', NULL, '0000-00-00 00:00:00'),
(2054, 'TaKes out all pieces from 1 to 10, puts bacK with difficulty ', 514, 2, 1, NULL, '2018-08-20 06:14:57', NULL, '0000-00-00 00:00:00'),
(2055, 'TaKes out all pieces from 1to 10, puts bacK well ', 514, 3, 1, NULL, '2018-08-20 06:14:57', NULL, '0000-00-00 00:00:00'),
(2056, 'Identifies pieces as one fifth. half etc', 514, 4, 1, NULL, '2018-08-20 06:14:57', NULL, '0000-00-00 00:00:00'),
(2057, 'Unable to match w/o controlcard ', 515, 1, 1, NULL, '2018-08-20 06:16:01', NULL, '0000-00-00 00:00:00'),
(2058, 'Matches few pictures and first letters', 515, 2, 1, NULL, '2018-08-20 06:16:01', NULL, '0000-00-00 00:00:00'),
(2059, 'Matches some pictures and words reading with difficulty ', 515, 3, 1, NULL, '2018-08-20 06:16:01', NULL, '0000-00-00 00:00:00'),
(2060, 'Reads the word and finds the picture', 515, 4, 1, NULL, '2018-08-20 06:16:01', NULL, '0000-00-00 00:00:00'),
(2061, 'Unable to follow categories ', 516, 1, 1, NULL, '2018-08-20 06:16:57', NULL, '0000-00-00 00:00:00'),
(2062, 'Knows names of classes', 516, 2, 1, NULL, '2018-08-20 06:16:57', NULL, '0000-00-00 00:00:00'),
(2063, 'Identifies few simple animals\' class', 516, 3, 1, NULL, '2018-08-20 06:16:57', NULL, '0000-00-00 00:00:00'),
(2064, 'Identifies which animals belong to which class', 516, 4, 1, NULL, '2018-08-20 06:16:57', NULL, '0000-00-00 00:00:00'),
(2065, 'Unable to describe a person ', 517, 1, 1, NULL, '2018-08-20 06:36:07', NULL, '0000-00-00 00:00:00'),
(2066, 'Describes few common ones (Or)', 517, 2, 1, NULL, '2018-08-20 06:36:07', NULL, '0000-00-00 00:00:00'),
(2067, 'Able to describe many professions & tools ', 517, 3, 1, NULL, '2018-08-20 06:36:07', NULL, '0000-00-00 00:00:00'),
(2068, 'Understands the working of various professions  ', 517, 4, 1, NULL, '2018-08-20 06:36:07', NULL, '0000-00-00 00:00:00'),
(2069, 'Unable to do', 518, 1, 1, NULL, '2018-08-20 06:39:49', NULL, '0000-00-00 00:00:00'),
(2070, 'Distributes, but doesn\'t follow ', 518, 2, 1, NULL, '2018-08-20 06:39:49', NULL, '0000-00-00 00:00:00'),
(2071, 'Distributes well, and finds quotient ', 518, 3, 1, NULL, '2018-08-20 06:39:49', NULL, '0000-00-00 00:00:00'),
(2072, 'Solves problem sheet correctly, records', 518, 4, 1, NULL, '2018-08-20 06:39:49', NULL, '0000-00-00 00:00:00'),
(2073, 'Unable to follow', 519, 1, 1, NULL, '2018-08-20 06:40:47', NULL, '0000-00-00 00:00:00'),
(2074, 'Can operate the motor', 519, 2, 1, NULL, '2018-08-20 06:40:47', NULL, '0000-00-00 00:00:00'),
(2075, 'Knows there is change when motor is worked', 519, 3, 1, NULL, '2018-08-20 06:40:47', NULL, '0000-00-00 00:00:00'),
(2076, '_ happens When motor runs - Correlate', 519, 4, 1, NULL, '2018-08-20 06:40:47', NULL, '0000-00-00 00:00:00'),
(2077, 'Does not follow', 520, 1, 1, NULL, '2018-08-20 06:41:42', NULL, '0000-00-00 00:00:00'),
(2078, 'Identify solid and liquid well  ', 520, 2, 1, NULL, '2018-08-20 06:41:42', NULL, '0000-00-00 00:00:00'),
(2079, 'Identifies sold,liquid, gas ', 520, 3, 1, NULL, '2018-08-20 06:41:42', NULL, '0000-00-00 00:00:00'),
(2080, 'Understands the diff forms of water', 520, 4, 1, NULL, '2018-08-20 06:41:42', NULL, '0000-00-00 00:00:00'),
(2081, 'Unable to follow', 521, 1, 1, NULL, '2018-08-20 06:43:53', NULL, '0000-00-00 00:00:00'),
(2082, 'Knows there are dilleras ', 521, 2, 1, NULL, '2018-08-20 06:43:53', NULL, '0000-00-00 00:00:00'),
(2083, 'Names all of them', 521, 3, 1, NULL, '2018-08-20 06:43:53', NULL, '0000-00-00 00:00:00'),
(2084, 'Names all of them in sequence', 521, 4, 1, NULL, '2018-08-20 06:43:53', NULL, '0000-00-00 00:00:00'),
(2085, 'Unable to match w/o controlcard ', 522, 1, 1, NULL, '2018-08-20 06:45:06', NULL, '0000-00-00 00:00:00'),
(2086, 'Matches few pictures and first letters', 522, 2, 1, NULL, '2018-08-20 06:45:06', NULL, '0000-00-00 00:00:00'),
(2087, 'Matches some pictures and words reading with difficulty ', 522, 3, 1, NULL, '2018-08-20 06:45:06', NULL, '0000-00-00 00:00:00'),
(2088, 'Reads the word and finds the picture', 522, 4, 1, NULL, '2018-08-20 06:45:06', NULL, '0000-00-00 00:00:00'),
(2089, 'Unable to pronounce/ identify', 523, 1, 1, NULL, '2018-08-20 06:48:31', NULL, '0000-00-00 00:00:00'),
(2090, 'Identifies and reads words containing eigh ', 523, 2, 1, NULL, '2018-08-20 06:48:31', NULL, '0000-00-00 00:00:00'),
(2091, 'Able to give words that contain eigh', 523, 3, 1, NULL, '2018-08-20 06:48:31', NULL, '0000-00-00 00:00:00'),
(2092, 'Hear words containing eigh,writes/ spells accurately', 523, 4, 1, NULL, '2018-08-20 06:48:31', NULL, '0000-00-00 00:00:00'),
(2093, 'Unable to pronounce/ identify', 524, 1, 1, NULL, '2018-08-20 06:50:31', NULL, '0000-00-00 00:00:00'),
(2094, 'Identifies and reads words containing wor ', 524, 2, 1, NULL, '2018-08-20 06:50:31', NULL, '0000-00-00 00:00:00'),
(2095, 'Able to give words that contain wor', 524, 3, 1, NULL, '2018-08-20 06:50:31', NULL, '0000-00-00 00:00:00'),
(2096, 'Hear words containing wor. writes/ spells accurately', 524, 4, 1, NULL, '2018-08-20 06:50:31', NULL, '0000-00-00 00:00:00'),
(2097, 'Unable to follow the grouping', 525, 1, 1, NULL, '2018-08-20 06:53:57', NULL, '0000-00-00 00:00:00'),
(2098, 'Understands the grouping', 525, 2, 1, NULL, '2018-08-20 06:53:57', NULL, '0000-00-00 00:00:00'),
(2099, 'Accurately counts nums in each group ', 525, 3, 1, NULL, '2018-08-20 06:53:57', NULL, '0000-00-00 00:00:00'),
(2100, 'Able to tall< about the data', 525, 4, 1, NULL, '2018-08-20 06:53:57', NULL, '0000-00-00 00:00:00'),
(2101, 'Unable to match w/o control card ', 526, 1, 1, NULL, '2018-08-20 06:55:33', NULL, '0000-00-00 00:00:00'),
(2102, 'Matches few pictures and first letters', 526, 2, 1, NULL, '2018-08-20 06:55:33', NULL, '0000-00-00 00:00:00'),
(2103, 'Matches some pictures and words reading with difficulty ', 526, 3, 1, NULL, '2018-08-20 06:55:33', NULL, '0000-00-00 00:00:00'),
(2104, 'Reads the word and finds the picture', 526, 4, 1, NULL, '2018-08-20 06:55:33', NULL, '0000-00-00 00:00:00'),
(2105, 'Unable to do', 527, 1, 1, NULL, '2018-08-20 06:56:20', NULL, '0000-00-00 00:00:00'),
(2106, 'Sorts categories correctly, one counter for each ', 527, 2, 1, NULL, '2018-08-20 06:56:20', NULL, '0000-00-00 00:00:00'),
(2107, 'Able to say from the graph Which is more / less etc', 527, 3, 1, NULL, '2018-08-20 06:56:20', NULL, '0000-00-00 00:00:00'),
(2108, 'Derives more details liKe apples & oranges are almost same qty  ', 527, 4, 1, NULL, '2018-08-20 06:56:20', NULL, '0000-00-00 00:00:00'),
(2109, 'Unable to read', 528, 1, 1, NULL, '2018-08-20 06:58:03', NULL, '0000-00-00 00:00:00'),
(2110, 'Reads complex time wrth difficulty ', 528, 2, 1, NULL, '2018-08-20 06:58:03', NULL, '0000-00-00 00:00:00'),
(2111, 'Reads well', 528, 3, 1, NULL, '2018-08-20 06:58:03', NULL, '0000-00-00 00:00:00'),
(2112, 'Set hour and minute hand on clocl< fairly correctly', 528, 4, 1, NULL, '2018-08-20 06:58:03', NULL, '0000-00-00 00:00:00'),
(2113, 'Unable to follow remainder ', 529, 1, 1, NULL, '2018-08-20 06:59:06', NULL, '0000-00-00 00:00:00'),
(2114, 'Understands there is a leftover', 529, 2, 1, NULL, '2018-08-20 06:59:06', NULL, '0000-00-00 00:00:00'),
(2115, 'Find remainder accurately and records ', 529, 3, 1, NULL, '2018-08-20 06:59:06', NULL, '0000-00-00 00:00:00'),
(2116, 'Follows some num have R and some don\'t', 529, 4, 1, NULL, '2018-08-20 06:59:06', NULL, '0000-00-00 00:00:00'),
(2117, 'Given simple time, selects time', 530, 1, 1, NULL, '2018-08-20 07:00:23', NULL, '0000-00-00 00:00:00'),
(2118, 'Given complex time. selects card ', 530, 2, 1, NULL, '2018-08-20 07:00:23', NULL, '0000-00-00 00:00:00'),
(2119, 'Places number card for simple time ', 530, 3, 1, NULL, '2018-08-20 07:00:23', NULL, '0000-00-00 00:00:00'),
(2120, 'Places number card for all time', 530, 4, 1, NULL, '2018-08-20 07:00:23', NULL, '0000-00-00 00:00:00'),
(2121, 'Understand there is a sequence of development', 531, 1, 1, NULL, '2018-08-20 07:02:24', NULL, '0000-00-00 00:00:00'),
(2122, 'Places associated cards in right order with control cards ', 531, 2, 1, NULL, '2018-08-20 07:02:24', NULL, '0000-00-00 00:00:00'),
(2123, 'Places some cards in right order without control cards ', 531, 3, 1, NULL, '2018-08-20 07:02:24', NULL, '0000-00-00 00:00:00'),
(2124, 'Places all cards in right order without control cards', 531, 4, 1, NULL, '2018-08-20 07:02:24', NULL, '0000-00-00 00:00:00'),
(2125, 'Unable to understand', 532, 1, 1, NULL, '2018-08-20 07:30:15', NULL, '0000-00-00 00:00:00'),
(2126, 'Big to small - know leftover, Small to big-repeat pouring ', 532, 2, 1, NULL, '2018-08-20 07:30:15', NULL, '0000-00-00 00:00:00'),
(2127, 'Judges roughly how many times to pour from small-big to fill ', 532, 3, 1, NULL, '2018-08-20 07:30:15', NULL, '0000-00-00 00:00:00'),
(2128, 'Able to say \"5 times A is B\"', 532, 4, 1, NULL, '2018-08-20 07:30:15', NULL, '0000-00-00 00:00:00'),
(2129, 'Unable to form any words', 533, 1, 1, NULL, '2018-08-20 07:31:50', NULL, '0000-00-00 00:00:00'),
(2130, 'Can see and form words', 533, 2, 1, NULL, '2018-08-20 07:31:50', NULL, '0000-00-00 00:00:00'),
(2131, 'Forms small words when given sound ', 533, 3, 1, NULL, '2018-08-20 07:31:50', NULL, '0000-00-00 00:00:00'),
(2132, 'Reads small words', 533, 4, 1, NULL, '2018-08-20 07:31:50', NULL, '0000-00-00 00:00:00'),
(2133, 'Unable to match w/o control card', 534, 1, 1, NULL, '2018-08-20 07:34:24', NULL, '0000-00-00 00:00:00'),
(2134, 'Matches few pictures and first letters', 534, 2, 1, NULL, '2018-08-20 07:34:24', NULL, '0000-00-00 00:00:00'),
(2135, 'Matches some pictures and words reading with difficulty ', 534, 3, 1, NULL, '2018-08-20 07:34:24', NULL, '0000-00-00 00:00:00'),
(2136, 'Reads the word and finds the picture', 534, 4, 1, NULL, '2018-08-20 07:34:24', NULL, '0000-00-00 00:00:00'),
(2137, 'L1', 535, 1, 1, NULL, '2018-08-20 07:35:46', NULL, '0000-00-00 00:00:00'),
(2138, 'L2', 535, 2, 1, NULL, '2018-08-20 07:35:46', NULL, '0000-00-00 00:00:00'),
(2139, 'L3', 535, 3, 1, NULL, '2018-08-20 07:35:46', NULL, '0000-00-00 00:00:00'),
(2140, 'L4', 535, 4, 1, NULL, '2018-08-20 07:35:46', NULL, '0000-00-00 00:00:00'),
(2141, 'Unable to comprehend', 536, 1, 1, NULL, '2018-08-20 07:37:23', NULL, '0000-00-00 00:00:00'),
(2142, 'Understands words ending with y can be said in 2 ways ', 536, 2, 1, NULL, '2018-08-20 07:37:23', NULL, '0000-00-00 00:00:00'),
(2143, 'Reads y words with the right pronunciation', 536, 3, 1, NULL, '2018-08-20 07:37:23', NULL, '0000-00-00 00:00:00'),
(2144, 'Hear words containing y writes/ spells accurately', 536, 4, 1, NULL, '2018-08-20 07:37:23', NULL, '0000-00-00 00:00:00'),
(2145, 'Unable to comprehend', 537, 1, 1, NULL, '2018-08-20 07:38:50', NULL, '0000-00-00 00:00:00'),
(2146, 'Understands our can be said in 3 ways ', 537, 2, 1, NULL, '2018-08-20 07:38:50', NULL, '0000-00-00 00:00:00'),
(2147, 'Reads our words with the right pronunciation', 537, 3, 1, NULL, '2018-08-20 07:38:50', NULL, '0000-00-00 00:00:00'),
(2148, 'Hear words containing our writes/ spells accurately', 537, 4, 1, NULL, '2018-08-20 07:38:50', NULL, '0000-00-00 00:00:00'),
(2149, 'Unable to comprehend', 538, 1, 1, NULL, '2018-08-20 07:45:44', NULL, '0000-00-00 00:00:00'),
(2150, 'Understands ear can be saidin 3 ways ', 538, 2, 1, NULL, '2018-08-20 07:45:44', NULL, '0000-00-00 00:00:00'),
(2151, 'Reads ear words with the right pronunciation', 538, 3, 1, NULL, '2018-08-20 07:45:44', NULL, '0000-00-00 00:00:00'),
(2152, 'Hear words containing ear writes/ spells accurately', 538, 4, 1, NULL, '2018-08-20 07:45:44', NULL, '0000-00-00 00:00:00'),
(2153, 'Unable to comprehend', 539, 1, 1, NULL, '2018-08-20 07:47:28', NULL, '0000-00-00 00:00:00'),
(2154, 'Understands ough can be said in 3 ways  ', 539, 2, 1, NULL, '2018-08-20 07:47:28', NULL, '0000-00-00 00:00:00'),
(2155, 'Reads ough words with the right pronunciation', 539, 3, 1, NULL, '2018-08-20 07:47:28', NULL, '0000-00-00 00:00:00'),
(2156, 'Hear words containing ough writes/ spells accurately', 539, 4, 1, NULL, '2018-08-20 07:47:28', NULL, '0000-00-00 00:00:00'),
(2157, 'Unable to follow', 540, 1, 1, NULL, '2018-08-21 07:27:04', NULL, '0000-00-00 00:00:00'),
(2158, 'Follows simple one - few birds don\'t fly ', 540, 2, 1, NULL, '2018-08-21 07:27:04', NULL, '0000-00-00 00:00:00'),
(2159, 'Understands all exceptions', 540, 3, 1, NULL, '2018-08-21 07:27:04', NULL, '0000-00-00 00:00:00'),
(2160, 'Names many exceptions', 540, 4, 1, NULL, '2018-08-21 07:27:04', NULL, '0000-00-00 00:00:00'),
(2161, 'Cannot identify animal with era', 541, 1, 1, NULL, '2018-08-21 07:29:07', NULL, '0000-00-00 00:00:00'),
(2162, 'Identifies few animals with eras ', 541, 2, 1, NULL, '2018-08-21 07:29:07', NULL, '0000-00-00 00:00:00'),
(2163, 'Identifies many animals with eras ', 541, 3, 1, NULL, '2018-08-21 07:29:07', NULL, '0000-00-00 00:00:00'),
(2164, 'Identifies all animals with era', 541, 4, 1, NULL, '2018-08-21 07:29:07', NULL, '0000-00-00 00:00:00'),
(2165, 'Unable to understand ', 542, 1, 1, NULL, '2018-08-21 07:30:03', NULL, '0000-00-00 00:00:00'),
(2166, 'Understands homonyms ', 542, 2, 1, NULL, '2018-08-21 07:30:03', NULL, '0000-00-00 00:00:00'),
(2167, 'Can match homonyms', 542, 3, 1, NULL, '2018-08-21 07:30:03', NULL, '0000-00-00 00:00:00'),
(2168, 'Can give the homonym for a given word  ', 542, 4, 1, NULL, '2018-08-21 07:30:03', NULL, '0000-00-00 00:00:00'),
(2169, 'Unable to understand ', 543, 1, 1, NULL, '2018-08-21 07:30:45', NULL, '0000-00-00 00:00:00'),
(2170, 'Understands homophones ', 543, 2, 1, NULL, '2018-08-21 07:30:45', NULL, '0000-00-00 00:00:00'),
(2171, 'Can match homophones', 543, 3, 1, NULL, '2018-08-21 07:30:45', NULL, '0000-00-00 00:00:00'),
(2172, 'Can give the homophone for a given word  ', 543, 4, 1, NULL, '2018-08-21 07:30:45', NULL, '0000-00-00 00:00:00'),
(2173, 'Unable to understand which country', 544, 1, 1, NULL, '2018-08-21 07:32:22', NULL, '0000-00-00 00:00:00'),
(2174, 'Understands we are talking about a country, points to it ', 544, 2, 1, NULL, '2018-08-21 07:32:22', NULL, '0000-00-00 00:00:00'),
(2175, 'Points to a country to Know about rt. learns well about it ', 544, 3, 1, NULL, '2018-08-21 07:32:22', NULL, '0000-00-00 00:00:00'),
(2176, 'Matches costumes I monuments to a country', 544, 4, 1, NULL, '2018-08-21 07:32:22', NULL, '0000-00-00 00:00:00'),
(2177, 'Unable to do', 545, 1, 1, NULL, '2018-08-21 07:33:44', NULL, '0000-00-00 00:00:00'),
(2178, 'With control map identify some capitals ', 545, 2, 1, NULL, '2018-08-21 07:33:44', NULL, '0000-00-00 00:00:00'),
(2179, 'Identifies some capitals without control map ', 545, 3, 1, NULL, '2018-08-21 07:33:44', NULL, '0000-00-00 00:00:00'),
(2180, 'Identifies many capitals without control map', 545, 4, 1, NULL, '2018-08-21 07:33:44', NULL, '0000-00-00 00:00:00'),
(2181, 'Cannot follow the symbol ', 546, 1, 1, NULL, '2018-08-21 07:35:00', NULL, '0000-00-00 00:00:00'),
(2182, 'Identifies symbol and divides', 546, 2, 1, NULL, '2018-08-21 07:35:00', NULL, '0000-00-00 00:00:00'),
(2183, 'Understands the symbol represents division ', 546, 3, 1, NULL, '2018-08-21 07:35:00', NULL, '0000-00-00 00:00:00'),
(2184, 'Sees a sum. and is able to put the div symbol  ', 546, 4, 1, NULL, '2018-08-21 07:35:00', NULL, '0000-00-00 00:00:00'),
(2185, 'Unable to divide', 547, 1, 1, NULL, '2018-08-21 07:36:07', NULL, '0000-00-00 00:00:00'),
(2186, 'Able to divide with control card ', 547, 2, 1, NULL, '2018-08-21 07:36:07', NULL, '0000-00-00 00:00:00'),
(2187, 'Divides some without control card ', 547, 3, 1, NULL, '2018-08-21 07:36:07', NULL, '0000-00-00 00:00:00'),
(2188, 'Divides all without control card', 547, 4, 1, NULL, '2018-08-21 07:36:07', NULL, '0000-00-00 00:00:00'),
(2189, 'L1', 548, 1, 1, NULL, '2018-08-21 07:37:14', NULL, '0000-00-00 00:00:00'),
(2190, 'L2', 548, 2, 1, NULL, '2018-08-21 07:37:14', NULL, '0000-00-00 00:00:00'),
(2191, 'L3', 548, 3, 1, NULL, '2018-08-21 07:37:14', NULL, '0000-00-00 00:00:00'),
(2192, 'L4', 548, 4, 1, NULL, '2018-08-21 07:37:14', NULL, '0000-00-00 00:00:00'),
(2193, 'Numbers the squares', 549, 1, 1, NULL, '2018-08-21 07:41:51', NULL, '0000-00-00 00:00:00'),
(2194, 'Follows a bit that we have to count the squares', 549, 2, 1, NULL, '2018-08-21 07:41:51', NULL, '0000-00-00 00:00:00'),
(2195, 'Compares shapes and says there are more squares or less squares', 549, 3, 1, NULL, '2018-08-21 07:41:51', NULL, '0000-00-00 00:00:00'),
(2196, 'Easily talks about space occupied in squares', 549, 4, 1, NULL, '2018-08-21 07:41:51', NULL, '0000-00-00 00:00:00'),
(2197, 'Unable to do', 550, 1, 1, NULL, '2018-08-21 07:57:13', NULL, '0000-00-00 00:00:00'),
(2198, 'Matches with control card', 550, 2, 1, NULL, '2018-08-21 07:57:13', NULL, '0000-00-00 00:00:00'),
(2199, 'Matches simple fractions without looKing at control card ', 550, 3, 1, NULL, '2018-08-21 07:57:13', NULL, '0000-00-00 00:00:00'),
(2200, 'Match all with out control card', 550, 4, 1, NULL, '2018-08-21 07:57:13', NULL, '0000-00-00 00:00:00'),
(2201, 'L1', 551, 1, 1, NULL, '2018-08-21 07:58:26', NULL, '0000-00-00 00:00:00'),
(2202, 'L2', 551, 2, 1, NULL, '2018-08-21 07:58:26', NULL, '0000-00-00 00:00:00'),
(2203, 'L3', 551, 3, 1, NULL, '2018-08-21 07:58:26', NULL, '0000-00-00 00:00:00'),
(2204, 'L4', 551, 4, 1, NULL, '2018-08-21 07:58:26', NULL, '0000-00-00 00:00:00'),
(2205, 'L1', 552, 1, 1, NULL, '2018-08-21 07:59:35', NULL, '0000-00-00 00:00:00'),
(2206, 'L2', 552, 2, 1, NULL, '2018-08-21 07:59:35', NULL, '0000-00-00 00:00:00'),
(2207, 'L3', 552, 3, 1, NULL, '2018-08-21 07:59:35', NULL, '0000-00-00 00:00:00'),
(2208, 'L4', 552, 4, 1, NULL, '2018-08-21 07:59:35', NULL, '0000-00-00 00:00:00'),
(2209, 'L1', 553, 1, 1, NULL, '2018-08-23 06:40:10', NULL, '0000-00-00 00:00:00'),
(2210, 'L2', 553, 2, 1, NULL, '2018-08-23 06:40:10', NULL, '0000-00-00 00:00:00'),
(2211, 'L3', 553, 3, 1, NULL, '2018-08-23 06:40:10', NULL, '0000-00-00 00:00:00'),
(2212, 'L4', 553, 4, 1, NULL, '2018-08-23 06:40:10', NULL, '0000-00-00 00:00:00'),
(2213, 'Unable to find the odd one', 554, 1, 1, NULL, '2018-08-27 06:25:16', NULL, '0000-00-00 00:00:00'),
(2214, 'Finds the odd one out inconsistently ', 554, 2, 1, NULL, '2018-08-27 06:25:16', NULL, '0000-00-00 00:00:00'),
(2215, 'Consistently finds the odd one', 554, 3, 1, NULL, '2018-08-27 06:25:16', NULL, '0000-00-00 00:00:00'),
(2216, 'Performs any grouping activities with picture cards', 554, 4, 1, NULL, '2018-08-27 06:25:16', NULL, '0000-00-00 00:00:00'),
(2217, 'L1', 555, 1, 1, NULL, '2018-12-05 08:13:43', NULL, '0000-00-00 00:00:00'),
(2218, 'L2', 555, 2, 1, NULL, '2018-12-05 08:13:43', NULL, '0000-00-00 00:00:00'),
(2219, 'L3', 555, 3, 1, NULL, '2018-12-05 08:13:43', NULL, '0000-00-00 00:00:00'),
(2220, 'L4', 555, 4, 1, NULL, '2018-12-05 08:13:43', NULL, '0000-00-00 00:00:00'),
(2221, 'L1', 556, 1, 1, NULL, '2019-01-05 07:30:33', NULL, '0000-00-00 00:00:00'),
(2222, 'L2', 556, 2, 1, NULL, '2019-01-05 07:30:33', NULL, '0000-00-00 00:00:00'),
(2223, 'L3', 556, 3, 1, NULL, '2019-01-05 07:30:33', NULL, '0000-00-00 00:00:00'),
(2224, 'L4', 556, 4, 1, NULL, '2019-01-05 07:30:33', NULL, '0000-00-00 00:00:00'),
(2225, 'L1', 557, 1, 1, NULL, '2019-01-05 07:32:07', NULL, '0000-00-00 00:00:00'),
(2226, 'L2', 557, 2, 1, NULL, '2019-01-05 07:32:07', NULL, '0000-00-00 00:00:00'),
(2227, 'L3', 557, 3, 1, NULL, '2019-01-05 07:32:07', NULL, '0000-00-00 00:00:00'),
(2228, 'L4', 557, 4, 1, NULL, '2019-01-05 07:32:08', NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_administration`
--

CREATE TABLE `t_administration` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `file` varchar(1000) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_administration`
--

INSERT INTO `t_administration` (`id`, `name`, `file`, `display_order`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 'List of Documents for Admission', 'http://cubspreschool.myprelaunch.in/CustomImages/AdministrationFiles/1/List for Documents for Admission at Cubs.docx', NULL, 1, NULL, '2018-08-20 14:05:24', NULL, '2018-08-20 14:05:24'),
(2, 'Numbers Tracing Sheets for Practice ', 'http://cubspreschool.myprelaunch.in/CustomImages/AdministrationFiles/2/1 to 10 tracing.docx', NULL, 1, NULL, '2018-10-06 09:48:35', NULL, '2018-10-06 09:48:36'),
(3, 'Alphabets Tracing Sheets for Practice', 'http://cubspreschool.myprelaunch.in/CustomImages/AdministrationFiles/3/small a-z tracing.docx', NULL, 1, NULL, '2018-08-20 14:08:03', NULL, '2018-08-20 14:08:03'),
(4, 'Teacher Training', 'http://cubspreschool.myprelaunch.in/CustomImages/AdministrationFiles/4/Teacher training.pptx', NULL, 1, NULL, '2019-05-18 16:03:17', NULL, '2019-05-18 16:03:17');

-- --------------------------------------------------------

--
-- Table structure for table `t_admin_category`
--

CREATE TABLE `t_admin_category` (
  `admin_category_id` int(11) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `display_order` int(20) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `menu_bar_icon` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_admin_category`
--

INSERT INTO `t_admin_category` (`admin_category_id`, `category`, `display_order`, `status`, `created_by`, `created_at`, `updated_by`, `updated_at`, `menu_bar_icon`) VALUES
(1, 'Dashboard', 1, 1, NULL, '2024-07-09 17:04:41', NULL, '2024-07-09 17:04:41', 'dashboard_icon.png'),
(2, 'Admin', 2, 1, NULL, '2024-07-10 10:35:13', NULL, '2024-07-10 10:35:13', 'fa-magic'),
(3, 'Teacher', 3, 1, NULL, '2024-07-10 10:36:11', NULL, '2024-07-10 10:36:11', 'fa-user'),
(4, 'Student', 4, 1, NULL, '2024-07-10 10:36:37', NULL, '2024-07-10 10:36:37', 'fa-child'),
(5, 'Subject', 5, 1, NULL, '2024-07-10 10:36:56', NULL, '2024-07-10 10:36:56', 'fa-book'),
(6, 'Batch', 6, 1, NULL, '2024-07-10 10:37:35', NULL, '2024-07-10 10:37:35', 'fa-group'),
(7, 'Diary', 7, 1, NULL, '2024-07-10 10:38:31', NULL, '2024-07-10 10:38:31', 'fa-address-book'),
(8, 'Album', 8, 1, NULL, '2024-07-10 10:39:01', NULL, '2024-07-10 10:39:01', 'fa-image'),
(9, 'Event', 9, 1, NULL, '2024-07-10 10:39:15', NULL, '2024-07-10 10:39:15', 'fa-birthday-cake'),
(10, 'Feedback', 10, 1, NULL, '2024-07-10 10:39:25', NULL, '2024-07-10 10:39:25', 'fa-feed'),
(11, 'App Scroll', 11, 1, NULL, '2024-07-10 10:39:54', NULL, '2024-07-10 10:39:54', 'fa-slideshare'),
(12, 'Leave Applied', 12, 1, NULL, '2024-07-10 10:40:13', NULL, '2024-07-10 10:40:13', 'fa-slideshare');

-- --------------------------------------------------------

--
-- Table structure for table `t_admin_pages`
--

CREATE TABLE `t_admin_pages` (
  `admin_pages_id` int(11) NOT NULL,
  `page_name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `admin_category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_admin_pages`
--

INSERT INTO `t_admin_pages` (`admin_pages_id`, `page_name`, `status`, `url`, `display_order`, `created_by`, `updated_by`, `created_at`, `updated_at`, `admin_category_id`) VALUES
(1, 'DashBoard', 1, '/DashBoard/Index', 1, NULL, NULL, '2024-07-08 11:01:19', '2024-07-08 11:01:19', 1),
(2, 'Administration', 1, '/Administration/Index', 2, NULL, NULL, '2024-07-10 10:45:26', '2024-07-10 10:45:26', 2),
(3, 'Teacher', 1, '/Teacher/Index', 3, NULL, NULL, '2024-07-10 10:46:02', '2024-07-10 10:46:02', 3),
(4, 'Student', 1, '/Student/Index', 4, NULL, NULL, '2024-07-10 10:46:31', '2024-07-10 10:46:31', 4),
(5, 'Subject', 1, '/Subject/Index', 5, NULL, NULL, '2024-07-10 10:47:22', '2024-07-10 10:47:22', 5),
(6, 'Batches', 1, '/Batches/Index', 6, NULL, NULL, '2024-07-10 10:48:19', '2024-07-10 10:48:19', 6),
(7, 'Diary', 1, '/Diary/Index', 7, NULL, NULL, '2024-07-10 10:48:49', '2024-07-10 10:48:49', 7),
(8, 'Album', 1, '/Album/Index', 8, NULL, NULL, '2024-07-10 10:49:12', '2024-07-10 10:49:12', 8),
(9, 'Event', 1, '/Event/Index', 9, NULL, NULL, '2024-07-10 10:49:46', '2024-07-10 10:49:46', 9),
(10, 'Feedback', 1, '/Feedback/Index', 10, NULL, NULL, '2024-07-10 10:50:38', '2024-07-10 10:50:38', 10),
(11, 'App Scroll', 1, '/AppScroll/Index', 11, NULL, NULL, '2024-07-10 10:51:04', '2024-07-10 10:51:04', 11),
(12, 'Leave', 1, '/Leave/Index', 12, NULL, NULL, '2024-07-10 10:52:17', '2024-07-10 10:52:17', 12),
(13, 'Admin User', 1, '/AdminUSer/Index', 13, NULL, NULL, '2024-07-10 11:03:34', '2024-07-10 11:03:34', 2),
(14, 'Rhymes', 1, '/Rhymes/Index', 14, NULL, NULL, '2024-07-10 11:04:13', '2024-07-10 11:04:13', 2),
(15, 'Temp Individual SMS', 0, '/TempIndividualSMS/Index', 15, NULL, NULL, '2024-07-10 11:05:22', '2024-07-10 11:05:22', 2),
(16, 'Temp Bulk SMS', 0, '/TempBulkSMS/Index', 16, NULL, NULL, '2024-07-10 11:06:10', '2024-07-10 11:06:10', 2),
(17, 'Pro Individual SMS', 0, '/ProIndividualSMS/Index', 17, NULL, NULL, '2024-07-10 11:07:05', '2024-07-10 11:07:05', 2),
(18, 'Pro Bulk SMS', 0, '/ProBulkSMS/Index', 18, NULL, NULL, '2024-07-10 11:07:35', '2024-07-10 11:07:35', 2),
(19, 'Promote Student', 1, '/PromoteStudent/Index', 19, NULL, NULL, '2024-07-10 12:26:41', '2024-07-10 12:26:41', 4),
(20, 'Activity', 1, '/Activity/Index', 20, NULL, NULL, '2024-07-10 12:26:43', '2024-07-10 12:26:43', 5),
(21, 'Active Batches', 1, '/ActiveBatches/Index', 21, NULL, NULL, '2024-07-10 12:32:03', '2024-07-10 12:32:03', 6),
(22, 'Special Note', 1, '/SpecialNote/Index', 22, NULL, NULL, '2024-07-10 12:35:26', '2024-07-10 12:35:26', 7),
(23, 'Gallery', 1, '/Gallery/Index', 23, NULL, NULL, '2024-07-10 12:36:15', '2024-07-10 12:36:15', 8),
(24, 'Role', 1, '/Role/Index', 24, NULL, NULL, '2024-07-11 09:02:08', '2024-07-11 09:02:08', 2),
(25, 'User Privileges', 1, '/AdminUserPrivilege/Index', 25, NULL, NULL, '2024-07-11 09:45:42', '2024-07-11 09:45:42', 2);

-- --------------------------------------------------------

--
-- Table structure for table `t_admin_user`
--

CREATE TABLE `t_admin_user` (
  `id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `user_name` varchar(150) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  `Branch_id` int(11) DEFAULT NULL,
  `Role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_admin_user`
--

INSERT INTO `t_admin_user` (`id`, `name`, `user_name`, `password`, `email`, `mobile`, `teacher_id`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`, `Branch_id`, `Role_id`) VALUES
(1, 'admin', 'admin', 'mmt@123', 'deepakda@hotmail.com', '9880696699', NULL, 1, NULL, NULL, NULL, '2018-10-06 09:49:21', 1, 1),
(27, 'Sindhu', 'sindhuagarwal19@gmail.com', 'sindhu@123', 'sindhuagarwal19@gmail.com', '7406911949', NULL, 1, NULL, '2023-12-18 06:25:48', NULL, NULL, 1, 1),
(28, 'Yogita', 'agarwalyogita02@gmail.com', 'yogita@123', 'agarwalyogita02@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(30, 'Keerthi Kallur', 'keerthi@cubssankalp.in', 'kallur@321', 'keerthi@cubssankalp.in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3),
(31, 'Priyanka Borutagi', 'priyanka@cubssankalp.in', 'borutagi@321', 'priyanka@cubssankalp.in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3),
(32, 'Farhana Makandar', 'farhana@cubssankalp.in', 'makandar@321', 'farhana@cubssankalp.in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3),
(33, 'Bhagyashree Hosamani', 'bhagyashree@cubssankalp.in', 'shree@321', 'bhagyashree@cubssankalp.in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3),
(34, 'Vidya Biradar', 'vidya@cubssankalp.in', 'biradar@321', 'vidya@cubssankalp.in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3),
(35, 'Firdos Mulla', 'firdos@cubssankalp.in', 'mulla@321', 'firdos@cubssankalp.in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'Nagaveni Kamble', 'nagaveni@cubssankalp.in', 'kamble$321', 'neeta@cubssankalp.in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3),
(37, 'Neeta Vaidya', 'neeta@cubssankalp.in', 'vaidya@321', 'neeta@cubssankalp.in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3),
(38, 'Manjunath Honakeri', 'manjunath@cubssankalp.in', 'honakeri@321', 'manjunath@cubssankalp.in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3),
(39, 'Chandani Mujawar', 'chandani@cubssankalp.in', 'mujawar@321', 'chandani@cubssankalp.in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3),
(40, 'Nagaveni Benur', 'nagaveni@cubssankalp.in', 'benur@321', 'nagaveni@cubssankalp.in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3),
(41, 'Bismilla Nayakawadi', 'bismilla@cubssankalp.in', 'nayakawadi@321', 'bismilla@cubssankalp.in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3),
(42, 'Niranjan Hiremath', 'niranjan@cubssankalp.in', 'hiremath@321n', 'niranjan@cubssankalp.in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3),
(43, 'Seema Deshpande', 'seema@cubssankalp.in', 'deshpande@321', 'seema@cubssankalp.in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3),
(44, 'Rajeshwari Neeruggi', 'rajeshwari@cubssankalp.in', 'neeruggi@321', 'rajeshwari@cubssankalp.in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3),
(45, 'Shridevi Shettar', 'shridevi@cubssankalp.in', 'shettar@321', 'shridevi@cubssankalp.in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3),
(46, 'Aravind Bagewadi\r\n', 'aravind@cubssankalp.in', 'bagewadi$321', 'aravind@cubssankalp.in\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3),
(47, 'Satiravva Patil', 'satiravva@cubssankalp.in', 'patil$321', 'satiravva@cubssankalp.in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `t_album`
--

CREATE TABLE `t_album` (
  `album_id` int(11) NOT NULL,
  `batchId` int(11) NOT NULL,
  `album_title` varchar(100) DEFAULT NULL,
  `album_date` timestamp NULL DEFAULT NULL,
  `album_thumbnail` varchar(1000) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_album`
--

INSERT INTO `t_album` (`album_id`, `batchId`, `album_title`, `album_date`, `album_thumbnail`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`, `Branch_id`) VALUES
(3, 115, 'World Student\'s day School Awareness Program', '2024-10-15 12:09:33', '', 1, 1, '2024-10-15 12:23:40', 1, '2024-10-15 12:17:02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_attandance`
--

CREATE TABLE `t_attandance` (
  `attandance_id` int(11) NOT NULL,
  `batch_student_id` int(11) DEFAULT NULL,
  `attendance_for_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `attendance` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_batch`
--

CREATE TABLE `t_batch` (
  `batch_id` int(11) NOT NULL,
  `batch_name` varchar(100) DEFAULT NULL,
  `standard_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `batch_start_date` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `batch_end_date` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `is_active` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_batch`
--

INSERT INTO `t_batch` (`batch_id`, `batch_name`, `standard_id`, `teacher_id`, `batch_start_date`, `batch_end_date`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`, `Branch_id`) VALUES
(115, 'Class 1 - Flamingo', 1, 70, '2024-05-31 18:30:00', '2025-04-29 18:30:00', 1, 27, '2024-10-03 06:03:19', 1, '2024-10-04 09:16:12', 1),
(116, 'Class 2 - Falcon', 2, 81, '2024-05-26 18:30:00', '2025-04-29 18:30:00', 1, 27, '2024-10-04 08:34:09', 1, '2024-10-04 09:19:28', 1),
(117, 'Class 1 - Robin', 1, 73, '2024-05-26 18:30:00', '2025-04-29 18:30:00', 1, 1, '2024-10-04 09:15:34', 1, '2024-10-04 09:15:34', 1),
(118, 'Class 2 - Seagull', 2, 84, '2024-05-26 18:30:00', '2025-04-29 18:30:00', 1, 1, '2024-10-04 09:20:11', 1, '2024-10-04 09:20:11', 1),
(119, 'Class 3 - Megpie', 3, 78, '2024-05-26 18:30:00', '2025-04-29 18:30:00', 1, 1, '2024-10-04 09:20:39', 1, '2024-10-04 09:20:39', 1),
(120, 'Class 3 - Macaw', 3, 80, '2024-05-26 18:30:00', '2025-04-29 18:30:00', 1, 1, '2024-10-04 09:21:07', 1, '2024-10-04 09:21:07', 1),
(121, 'Class 4 - Canary', 4, 71, '2024-05-26 18:30:00', '2025-04-29 18:30:00', 1, 1, '2024-10-04 09:22:53', 1, '2024-10-04 09:22:53', 1),
(122, 'Class 5 - Toucan', 5, 75, '2024-05-26 18:30:00', '2025-04-29 18:30:00', 1, 1, '2024-10-04 09:23:28', 1, '2024-10-04 09:23:28', 1),
(123, 'Class 6 - Goldfinch', 6, 79, '2024-05-26 18:30:00', '2025-04-29 18:30:00', 1, 1, '2024-10-04 09:24:03', 1, '2024-10-04 09:24:03', 1),
(124, 'Class 7 - Cockatoo', 7, 74, '2024-05-26 18:30:00', '2025-04-29 18:30:00', 1, 1, '2024-10-04 09:24:40', 1, '2024-10-04 09:24:40', 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_batch_students`
--

CREATE TABLE `t_batch_students` (
  `batch_student_id` int(11) NOT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_batch_students`
--

INSERT INTO `t_batch_students` (`batch_student_id`, `batch_id`, `student_id`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1883, 115, 426, 1, 1, '2024-10-04 09:26:11', 1, '2024-10-04 09:26:11'),
(1884, 115, 428, 1, 1, '2024-10-04 09:26:21', 1, '2024-10-04 09:26:21'),
(1885, 115, 430, 1, 1, '2024-10-04 09:26:32', 1, '2024-10-04 09:26:32'),
(1886, 115, 431, 1, 1, '2024-10-04 09:26:40', 1, '2024-10-04 09:26:40'),
(1887, 115, 432, 1, 1, '2024-10-04 09:26:53', 1, '2024-10-04 09:26:53'),
(1888, 115, 671, 1, 1, '2024-10-04 09:27:58', 1, '2024-10-04 09:27:58'),
(1889, 115, 435, 1, 1, '2024-10-04 09:28:08', 1, '2024-10-04 09:28:08'),
(1890, 115, 437, 1, 1, '2024-10-04 09:28:16', 1, '2024-10-04 09:28:16'),
(1891, 115, 440, 1, 1, '2024-10-04 09:28:31', 1, '2024-10-04 09:28:31'),
(1892, 115, 441, 1, 1, '2024-10-04 09:28:48', 1, '2024-10-04 09:28:48'),
(1893, 115, 448, 1, 1, '2024-10-04 09:30:15', 1, '2024-10-04 09:30:15'),
(1894, 115, 449, 1, 1, '2024-10-04 09:30:22', 1, '2024-10-04 09:30:22'),
(1895, 115, 452, 1, 1, '2024-10-04 09:30:28', 1, '2024-10-04 09:30:28'),
(1896, 115, 453, 1, 1, '2024-10-04 09:30:35', 1, '2024-10-04 09:30:35'),
(1897, 115, 455, 1, 1, '2024-10-04 09:30:46', 1, '2024-10-04 09:30:46'),
(1898, 115, 456, 1, 1, '2024-10-04 09:30:52', 1, '2024-10-04 09:30:52'),
(1899, 115, 673, 1, 1, '2024-10-04 09:30:59', 1, '2024-10-04 09:30:59'),
(1900, 115, 458, 1, 1, '2024-10-04 09:31:19', 1, '2024-10-04 09:31:19'),
(1901, 115, 461, 1, 1, '2024-10-04 09:31:25', 1, '2024-10-04 09:31:25'),
(1902, 115, 463, 1, 1, '2024-10-04 09:31:32', 1, '2024-10-04 09:31:32'),
(1903, 115, 464, 1, 1, '2024-10-04 09:31:39', 1, '2024-10-04 09:31:39'),
(1904, 115, 467, 1, 1, '2024-10-04 09:31:53', 1, '2024-10-04 09:31:53'),
(1905, 115, 470, 1, 1, '2024-10-04 09:32:02', 1, '2024-10-04 09:32:02'),
(1906, 115, 471, 1, 1, '2024-10-04 09:32:10', 1, '2024-10-04 09:32:10'),
(1907, 115, 473, 1, 1, '2024-10-04 09:32:20', 1, '2024-10-04 09:32:20'),
(1908, 115, 477, 1, 1, '2024-10-04 09:32:40', 1, '2024-10-04 09:32:40'),
(1909, 115, 677, 1, 1, '2024-10-04 09:32:50', 1, '2024-10-04 09:32:50'),
(1910, 115, 478, 1, 1, '2024-10-04 09:32:58', 1, '2024-10-04 09:32:58'),
(1911, 115, 480, 1, 1, '2024-10-04 09:33:05', 1, '2024-10-04 09:33:05'),
(1912, 115, 666, 1, 1, '2024-10-04 09:33:12', 1, '2024-10-04 09:33:12'),
(1913, 115, 667, 1, 1, '2024-10-04 09:33:19', 1, '2024-10-04 09:33:19'),
(1914, 115, 668, 1, 1, '2024-10-04 09:33:25', 1, '2024-10-04 09:33:25'),
(1915, 117, 427, 1, 1, '2024-10-04 09:33:57', 1, '2024-10-04 09:33:57'),
(1916, 117, 429, 1, 1, '2024-10-04 09:34:04', 1, '2024-10-04 09:34:04'),
(1917, 117, 433, 1, 1, '2024-10-04 09:34:12', 1, '2024-10-04 09:34:12'),
(1918, 117, 434, 1, 1, '2024-10-04 09:35:20', 1, '2024-10-04 09:35:20'),
(1919, 117, 436, 1, 1, '2024-10-04 09:35:29', 1, '2024-10-04 09:35:29'),
(1920, 117, 438, 1, 1, '2024-10-04 09:36:35', 1, '2024-10-04 09:36:35'),
(1921, 117, 439, 1, 1, '2024-10-04 09:37:53', 1, '2024-10-04 09:37:53'),
(1922, 117, 442, 1, 1, '2024-10-04 09:37:59', 1, '2024-10-04 09:37:59'),
(1923, 117, 443, 1, 1, '2024-10-04 09:38:03', 1, '2024-10-04 09:38:03'),
(1924, 117, 444, 1, 1, '2024-10-04 09:38:09', 1, '2024-10-04 09:38:09'),
(1925, 117, 445, 1, 1, '2024-10-04 09:38:15', 1, '2024-10-04 09:38:15'),
(1926, 117, 446, 1, 1, '2024-10-04 09:38:21', 1, '2024-10-04 09:38:21'),
(1927, 117, 447, 1, 1, '2024-10-04 09:38:28', 1, '2024-10-04 09:38:28'),
(1928, 117, 672, 1, 1, '2024-10-04 09:38:33', 1, '2024-10-04 09:38:33'),
(1929, 117, 450, 1, 1, '2024-10-04 09:38:40', 1, '2024-10-04 09:38:40'),
(1930, 117, 451, 1, 1, '2024-10-04 09:38:45', 1, '2024-10-04 09:38:45'),
(1931, 117, 454, 1, 1, '2024-10-04 09:38:50', 1, '2024-10-04 09:38:50'),
(1932, 117, 457, 1, 1, '2024-10-04 09:38:55', 1, '2024-10-04 09:38:55'),
(1933, 117, 459, 1, 1, '2024-10-04 09:39:00', 1, '2024-10-04 09:39:00'),
(1934, 117, 460, 1, 1, '2024-10-04 09:39:05', 1, '2024-10-04 09:39:05'),
(1935, 117, 674, 1, 1, '2024-10-04 09:39:09', 1, '2024-10-04 09:39:09'),
(1936, 117, 462, 1, 1, '2024-10-04 09:40:31', 1, '2024-10-04 09:40:31'),
(1937, 117, 675, 1, 1, '2024-10-04 09:41:13', 1, '2024-10-04 09:41:13'),
(1938, 117, 465, 1, 1, '2024-10-04 09:41:24', 1, '2024-10-04 09:41:24'),
(1939, 117, 466, 1, 1, '2024-10-04 09:41:31', 1, '2024-10-04 09:41:31'),
(1940, 117, 676, 1, 1, '2024-10-04 09:43:43', 1, '2024-10-04 09:43:43'),
(1941, 117, 468, 1, 1, '2024-10-04 09:43:51', 1, '2024-10-04 09:43:51'),
(1942, 117, 469, 1, 1, '2024-10-04 09:43:56', 1, '2024-10-04 09:43:56'),
(1943, 117, 472, 1, 1, '2024-10-04 09:44:18', 1, '2024-10-04 09:44:18'),
(1944, 117, 474, 1, 1, '2024-10-04 09:44:24', 1, '2024-10-04 09:44:24'),
(1945, 117, 475, 1, 1, '2024-10-04 09:44:30', 1, '2024-10-04 09:44:30'),
(1946, 117, 476, 1, 1, '2024-10-04 09:44:34', 1, '2024-10-04 09:44:34'),
(1947, 117, 479, 1, 1, '2024-10-04 09:44:39', 1, '2024-10-04 09:44:39'),
(1948, 117, 481, 1, 1, '2024-10-04 09:44:44', 1, '2024-10-04 09:44:44'),
(1949, 116, 483, 1, 1, '2024-10-04 09:45:34', 1, '2024-10-04 09:45:34'),
(1950, 116, 484, 1, 1, '2024-10-04 09:45:40', 1, '2024-10-04 09:45:40'),
(1951, 116, 485, 1, 1, '2024-10-04 09:45:45', 1, '2024-10-04 09:45:45'),
(1952, 116, 486, 1, 1, '2024-10-04 09:45:51', 1, '2024-10-04 09:45:51'),
(1953, 116, 487, 1, 1, '2024-10-04 09:45:56', 1, '2024-10-04 09:45:56'),
(1954, 116, 488, 1, 1, '2024-10-04 09:46:02', 1, '2024-10-04 09:46:02'),
(1955, 116, 489, 1, 1, '2024-10-04 09:46:07', 1, '2024-10-04 09:46:07'),
(1956, 116, 490, 1, 1, '2024-10-04 09:46:12', 1, '2024-10-04 09:46:12'),
(1957, 116, 493, 1, 1, '2024-10-04 09:46:17', 1, '2024-10-04 09:46:17'),
(1958, 116, 494, 1, 1, '2024-10-04 09:46:22', 1, '2024-10-04 09:46:22'),
(1959, 116, 496, 1, 1, '2024-10-04 09:46:27', 1, '2024-10-04 09:46:27'),
(1960, 116, 498, 1, 1, '2024-10-04 09:46:32', 1, '2024-10-04 09:46:32'),
(1961, 116, 499, 1, 1, '2024-10-04 09:46:36', 1, '2024-10-04 09:46:36'),
(1962, 116, 502, 1, 1, '2024-10-04 09:46:42', 1, '2024-10-04 09:46:42'),
(1963, 116, 504, 1, 1, '2024-10-04 09:46:48', 1, '2024-10-04 09:46:48'),
(1964, 116, 506, 1, 1, '2024-10-04 09:46:53', 1, '2024-10-04 09:46:53'),
(1965, 116, 508, 1, 1, '2024-10-04 09:47:00', 1, '2024-10-04 09:47:00'),
(1966, 116, 510, 1, 1, '2024-10-04 09:47:06', 1, '2024-10-04 09:47:06'),
(1967, 116, 513, 1, 1, '2024-10-04 09:47:32', 1, '2024-10-04 09:47:32'),
(1968, 116, 515, 1, 1, '2024-10-04 09:47:39', 1, '2024-10-04 09:47:39'),
(1969, 116, 679, 1, 1, '2024-10-04 09:47:45', 1, '2024-10-04 09:47:45'),
(1970, 116, 517, 1, 1, '2024-10-04 09:48:04', 1, '2024-10-04 09:48:04'),
(1971, 116, 518, 1, 1, '2024-10-04 09:48:10', 1, '2024-10-04 09:48:10'),
(1972, 116, 523, 1, 1, '2024-10-04 09:48:16', 1, '2024-10-04 09:48:16'),
(1973, 116, 524, 1, 1, '2024-10-04 09:48:22', 1, '2024-10-04 09:48:22'),
(1974, 116, 525, 1, 1, '2024-10-04 09:48:28', 1, '2024-10-04 09:48:28'),
(1975, 116, 528, 1, 1, '2024-10-04 09:48:33', 1, '2024-10-04 09:48:33'),
(1976, 116, 532, 1, 1, '2024-10-04 09:49:07', 1, '2024-10-04 09:49:07'),
(1977, 116, 534, 1, 1, '2024-10-04 09:49:18', 1, '2024-10-04 09:49:18'),
(1978, 116, 537, 1, 1, '2024-10-04 09:49:24', 1, '2024-10-04 09:49:24'),
(1979, 116, 540, 1, 1, '2024-10-04 09:49:29', 1, '2024-10-04 09:49:29'),
(1980, 116, 542, 1, 1, '2024-10-04 09:49:35', 1, '2024-10-04 09:49:35'),
(1981, 116, 543, 1, 1, '2024-10-04 09:49:41', 1, '2024-10-04 09:49:41'),
(1982, 116, 681, 1, 1, '2024-10-04 09:49:46', 1, '2024-10-04 09:49:46'),
(1983, 116, 545, 1, 1, '2024-10-04 09:49:53', 1, '2024-10-04 09:49:53'),
(1984, 116, 546, 1, 1, '2024-10-04 09:50:00', 1, '2024-10-04 09:50:00'),
(1985, 118, 482, 1, 1, '2024-10-04 09:50:43', 1, '2024-10-04 09:50:43'),
(1986, 118, 678, 1, 1, '2024-10-04 09:50:50', 1, '2024-10-04 09:50:50'),
(1987, 118, 491, 1, 1, '2024-10-04 09:50:57', 1, '2024-10-04 09:50:57'),
(1988, 118, 492, 1, 1, '2024-10-04 09:51:11', 1, '2024-10-04 09:51:11'),
(1989, 118, 495, 1, 1, '2024-10-04 09:51:19', 1, '2024-10-04 09:51:19'),
(1990, 118, 497, 1, 1, '2024-10-04 09:51:23', 1, '2024-10-04 09:51:23'),
(1991, 118, 500, 1, 1, '2024-10-04 09:51:28', 1, '2024-10-04 09:51:28'),
(1992, 118, 501, 1, 1, '2024-10-04 09:51:34', 1, '2024-10-04 09:51:34'),
(1993, 118, 503, 1, 1, '2024-10-04 09:51:39', 1, '2024-10-04 09:51:39'),
(1994, 118, 505, 1, 1, '2024-10-04 09:51:43', 1, '2024-10-04 09:51:43'),
(1995, 118, 507, 1, 1, '2024-10-04 09:51:49', 1, '2024-10-04 09:51:49'),
(1996, 118, 509, 1, 1, '2024-10-04 09:51:54', 1, '2024-10-04 09:51:54'),
(1997, 118, 511, 1, 1, '2024-10-04 09:52:00', 1, '2024-10-04 09:52:00'),
(1998, 118, 512, 1, 1, '2024-10-04 09:52:04', 1, '2024-10-04 09:52:04'),
(1999, 118, 514, 1, 1, '2024-10-04 09:52:13', 1, '2024-10-04 09:52:13'),
(2000, 118, 516, 1, 1, '2024-10-04 09:52:18', 1, '2024-10-04 09:52:18'),
(2001, 118, 519, 1, 1, '2024-10-04 09:52:23', 1, '2024-10-04 09:52:23'),
(2002, 118, 520, 1, 1, '2024-10-04 09:52:36', 1, '2024-10-04 09:52:36'),
(2003, 118, 521, 1, 1, '2024-10-04 09:53:16', 1, '2024-10-04 09:53:16'),
(2004, 118, 522, 1, 1, '2024-10-04 09:53:22', 1, '2024-10-04 09:53:22'),
(2005, 118, 680, 1, 1, '2024-10-04 09:53:27', 1, '2024-10-04 09:53:27'),
(2006, 118, 526, 1, 1, '2024-10-04 09:53:32', 1, '2024-10-04 09:53:32'),
(2007, 118, 527, 1, 1, '2024-10-04 09:53:37', 1, '2024-10-04 09:53:37'),
(2008, 118, 529, 1, 1, '2024-10-04 09:53:42', 1, '2024-10-04 09:53:42'),
(2009, 118, 530, 1, 1, '2024-10-04 09:53:47', 1, '2024-10-04 09:53:47'),
(2010, 118, 531, 1, 1, '2024-10-04 09:54:03', 1, '2024-10-04 09:54:03'),
(2011, 118, 533, 1, 1, '2024-10-04 09:54:09', 1, '2024-10-04 09:54:09'),
(2012, 118, 535, 1, 1, '2024-10-04 09:54:15', 1, '2024-10-04 09:54:15'),
(2013, 118, 536, 1, 1, '2024-10-04 09:54:59', 1, '2024-10-04 09:54:59'),
(2014, 118, 538, 1, 1, '2024-10-04 09:55:04', 1, '2024-10-04 09:55:04'),
(2015, 118, 539, 1, 1, '2024-10-04 09:55:09', 1, '2024-10-04 09:55:09'),
(2016, 118, 541, 1, 1, '2024-10-04 09:55:26', 1, '2024-10-04 09:55:26'),
(2017, 118, 544, 1, 1, '2024-10-04 09:55:34', 1, '2024-10-04 09:55:34'),
(2018, 118, 547, 1, 1, '2024-10-04 09:55:39', 1, '2024-10-04 09:55:39'),
(2019, 118, 664, 1, 1, '2024-10-04 09:55:44', 1, '2024-10-04 09:55:44'),
(2020, 118, 665, 1, 1, '2024-10-04 09:55:52', 1, '2024-10-04 09:55:52'),
(2023, 119, 548, 1, 1, '2024-10-04 10:06:28', 1, '2024-10-04 10:06:28'),
(2024, 119, 553, 1, 1, '2024-10-04 10:06:52', 1, '2024-10-04 10:06:52'),
(2025, 119, 556, 1, 1, '2024-10-04 10:07:33', 1, '2024-10-04 10:07:33'),
(2026, 119, 557, 1, 1, '2024-10-04 10:11:03', 1, '2024-10-04 10:11:03'),
(2027, 119, 559, 1, 1, '2024-10-04 10:11:24', 1, '2024-10-04 10:11:24'),
(2028, 119, 561, 1, 1, '2024-10-04 10:11:41', 1, '2024-10-04 10:11:41'),
(2029, 119, 562, 1, 1, '2024-10-04 10:11:56', 1, '2024-10-04 10:11:56'),
(2030, 119, 564, 1, 1, '2024-10-04 10:12:10', 1, '2024-10-04 10:12:10'),
(2031, 119, 566, 1, 1, '2024-10-04 10:12:26', 1, '2024-10-04 10:12:26'),
(2032, 119, 570, 1, 1, '2024-10-04 10:12:38', 1, '2024-10-04 10:12:38'),
(2033, 119, 572, 1, 1, '2024-10-04 10:12:52', 1, '2024-10-04 10:12:52'),
(2034, 119, 573, 1, 1, '2024-10-04 10:13:05', 1, '2024-10-04 10:13:05'),
(2035, 119, 574, 1, 1, '2024-10-04 10:13:16', 1, '2024-10-04 10:13:16'),
(2036, 119, 575, 1, 1, '2024-10-04 10:13:29', 1, '2024-10-04 10:13:29'),
(2037, 119, 577, 1, 1, '2024-10-04 10:13:43', 1, '2024-10-04 10:13:43'),
(2038, 119, 578, 1, 1, '2024-10-04 10:13:57', 1, '2024-10-04 10:13:57'),
(2039, 119, 579, 1, 1, '2024-10-04 10:14:13', 1, '2024-10-04 10:14:13'),
(2040, 119, 581, 1, 1, '2024-10-04 10:14:46', 1, '2024-10-04 10:14:46'),
(2041, 119, 582, 1, 1, '2024-10-04 10:16:29', 1, '2024-10-04 10:16:29'),
(2042, 119, 583, 1, 1, '2024-10-04 10:16:47', 1, '2024-10-04 10:16:47'),
(2043, 119, 586, 1, 1, '2024-10-04 10:17:03', 1, '2024-10-04 10:17:03'),
(2044, 119, 588, 1, 1, '2024-10-04 10:17:19', 1, '2024-10-04 10:17:19'),
(2045, 119, 589, 1, 1, '2024-10-04 10:17:39', 1, '2024-10-04 10:17:39'),
(2046, 119, 682, 1, 1, '2024-10-04 10:17:52', 1, '2024-10-04 10:17:52'),
(2047, 119, 594, 1, 1, '2024-10-04 10:18:06', 1, '2024-10-04 10:18:06'),
(2048, 119, 595, 1, 1, '2024-10-04 10:18:21', 1, '2024-10-04 10:18:21'),
(2049, 119, 598, 1, 1, '2024-10-04 10:18:38', 1, '2024-10-04 10:18:38'),
(2050, 119, 602, 1, 1, '2024-10-04 10:18:55', 1, '2024-10-04 10:18:55'),
(2051, 119, 686, 1, 1, '2024-10-04 10:19:10', 1, '2024-10-04 10:19:10'),
(2052, 119, 603, 1, 1, '2024-10-04 10:19:24', 1, '2024-10-04 10:19:24'),
(2053, 119, 604, 1, 1, '2024-10-04 10:19:41', 1, '2024-10-04 10:19:41'),
(2054, 119, 669, 1, 1, '2024-10-04 10:21:20', 1, '2024-10-04 10:21:20'),
(2055, 120, 549, 1, 1, '2024-10-04 10:24:19', 1, '2024-10-04 10:24:19'),
(2056, 120, 550, 1, 1, '2024-10-04 10:24:31', 1, '2024-10-04 10:24:31'),
(2057, 120, 551, 1, 1, '2024-10-04 10:24:41', 1, '2024-10-04 10:24:41'),
(2058, 120, 552, 1, 1, '2024-10-04 10:24:53', 1, '2024-10-04 10:24:53'),
(2059, 120, 554, 1, 1, '2024-10-04 10:25:04', 1, '2024-10-04 10:25:04'),
(2060, 120, 555, 1, 1, '2024-10-04 10:25:16', 1, '2024-10-04 10:25:16'),
(2061, 120, 558, 1, 1, '2024-10-04 10:25:27', 1, '2024-10-04 10:25:27'),
(2062, 120, 560, 1, 1, '2024-10-04 10:25:39', 1, '2024-10-04 10:25:39'),
(2063, 120, 563, 1, 1, '2024-10-04 10:25:49', 1, '2024-10-04 10:25:49'),
(2064, 120, 565, 1, 1, '2024-10-04 10:26:00', 1, '2024-10-04 10:26:00'),
(2065, 120, 567, 1, 1, '2024-10-04 10:26:13', 1, '2024-10-04 10:26:13'),
(2066, 120, 568, 1, 1, '2024-10-04 10:26:29', 1, '2024-10-04 10:26:29'),
(2067, 120, 569, 1, 1, '2024-10-04 10:27:22', 1, '2024-10-04 10:27:22'),
(2068, 120, 571, 1, 1, '2024-10-04 10:27:33', 1, '2024-10-04 10:27:33'),
(2069, 120, 576, 1, 1, '2024-10-04 10:27:47', 1, '2024-10-04 10:27:47'),
(2070, 120, 580, 1, 1, '2024-10-04 10:28:32', 1, '2024-10-04 10:28:32'),
(2071, 120, 584, 1, 1, '2024-10-04 10:28:44', 1, '2024-10-04 10:28:44'),
(2072, 120, 585, 1, 1, '2024-10-04 10:28:57', 1, '2024-10-04 10:28:57'),
(2073, 120, 587, 1, 1, '2024-10-04 10:29:09', 1, '2024-10-04 10:29:09'),
(2074, 120, 590, 1, 1, '2024-10-04 10:29:24', 1, '2024-10-04 10:29:24'),
(2075, 120, 591, 1, 1, '2024-10-04 10:29:38', 1, '2024-10-04 10:29:38'),
(2076, 120, 683, 1, 1, '2024-10-04 10:29:51', 1, '2024-10-04 10:29:51'),
(2077, 120, 592, 1, 1, '2024-10-04 10:30:06', 1, '2024-10-04 10:30:06'),
(2078, 120, 593, 1, 1, '2024-10-04 10:30:15', 1, '2024-10-04 10:30:15'),
(2079, 120, 596, 1, 1, '2024-10-04 10:30:26', 1, '2024-10-04 10:30:26'),
(2080, 120, 597, 1, 1, '2024-10-04 10:30:36', 1, '2024-10-04 10:30:36'),
(2081, 120, 684, 1, 1, '2024-10-04 10:31:30', 1, '2024-10-04 10:31:30'),
(2082, 120, 599, 1, 1, '2024-10-04 10:31:43', 1, '2024-10-04 10:31:43'),
(2083, 120, 600, 1, 1, '2024-10-04 10:31:54', 1, '2024-10-04 10:31:54'),
(2084, 120, 601, 1, 1, '2024-10-04 10:32:04', 1, '2024-10-04 10:32:04'),
(2085, 120, 685, 1, 1, '2024-10-04 10:32:16', 1, '2024-10-04 10:32:16'),
(2086, 120, 605, 1, 1, '2024-10-04 10:32:27', 1, '2024-10-04 10:32:27'),
(2087, 120, 651, 1, 1, '2024-10-04 10:32:43', 1, '2024-10-04 10:32:43'),
(2088, 120, 670, 1, 1, '2024-10-04 10:32:52', 1, '2024-10-04 10:32:52'),
(2089, 121, 606, 1, 1, '2024-10-04 10:34:14', 1, '2024-10-04 10:34:14'),
(2090, 121, 607, 1, 1, '2024-10-04 10:34:24', 1, '2024-10-04 10:34:24'),
(2091, 121, 608, 1, 1, '2024-10-04 10:34:35', 1, '2024-10-04 10:34:35'),
(2092, 121, 609, 1, 1, '2024-10-04 10:34:46', 1, '2024-10-04 10:34:46'),
(2093, 121, 610, 1, 1, '2024-10-04 10:34:58', 1, '2024-10-04 10:34:58'),
(2094, 121, 611, 1, 1, '2024-10-04 10:35:11', 1, '2024-10-04 10:35:11'),
(2095, 121, 612, 1, 1, '2024-10-04 10:35:30', 1, '2024-10-04 10:35:30'),
(2096, 121, 613, 1, 1, '2024-10-04 10:35:40', 1, '2024-10-04 10:35:40'),
(2097, 121, 614, 1, 1, '2024-10-04 10:35:55', 1, '2024-10-04 10:35:55'),
(2098, 121, 687, 1, 1, '2024-10-04 10:36:05', 1, '2024-10-04 10:36:05'),
(2099, 121, 688, 1, 1, '2024-10-04 10:36:39', 1, '2024-10-04 10:36:39'),
(2100, 121, 689, 1, 1, '2024-10-04 10:36:49', 1, '2024-10-04 10:36:49'),
(2101, 121, 615, 1, 1, '2024-10-04 10:37:39', 1, '2024-10-04 10:37:39'),
(2102, 121, 616, 1, 1, '2024-10-04 10:37:49', 1, '2024-10-04 10:37:49'),
(2103, 121, 617, 1, 1, '2024-10-04 10:37:59', 1, '2024-10-04 10:37:59'),
(2104, 121, 618, 1, 1, '2024-10-04 10:38:08', 1, '2024-10-04 10:38:08'),
(2105, 121, 619, 1, 1, '2024-10-04 10:38:16', 1, '2024-10-04 10:38:16'),
(2106, 121, 620, 1, 1, '2024-10-04 10:38:24', 1, '2024-10-04 10:38:24'),
(2107, 121, 621, 1, 1, '2024-10-04 10:38:37', 1, '2024-10-04 10:38:37'),
(2108, 121, 622, 1, 1, '2024-10-04 10:38:47', 1, '2024-10-04 10:38:47'),
(2109, 121, 623, 1, 1, '2024-10-04 10:38:55', 1, '2024-10-04 10:38:55'),
(2110, 121, 624, 1, 1, '2024-10-04 10:39:03', 1, '2024-10-04 10:39:03'),
(2111, 122, 625, 1, 1, '2024-10-04 10:41:03', 1, '2024-10-04 10:41:03'),
(2112, 122, 626, 1, 1, '2024-10-04 10:41:12', 1, '2024-10-04 10:41:12'),
(2113, 122, 627, 1, 1, '2024-10-04 10:41:23', 1, '2024-10-04 10:41:23'),
(2114, 122, 628, 1, 1, '2024-10-04 10:41:32', 1, '2024-10-04 10:41:32'),
(2115, 122, 629, 1, 1, '2024-10-04 10:41:42', 1, '2024-10-04 10:41:42'),
(2116, 122, 630, 1, 1, '2024-10-04 10:41:50', 1, '2024-10-04 10:41:50'),
(2117, 122, 631, 1, 1, '2024-10-04 10:42:00', 1, '2024-10-04 10:42:00'),
(2118, 122, 690, 1, 1, '2024-10-04 10:42:36', 1, '2024-10-04 10:42:36'),
(2119, 122, 632, 1, 1, '2024-10-04 10:42:45', 1, '2024-10-04 10:42:45'),
(2120, 122, 633, 1, 1, '2024-10-04 10:42:53', 1, '2024-10-04 10:42:53'),
(2121, 122, 634, 1, 1, '2024-10-04 10:43:00', 1, '2024-10-04 10:43:00'),
(2122, 122, 635, 1, 1, '2024-10-04 10:43:34', 1, '2024-10-04 10:43:34'),
(2123, 122, 636, 1, 1, '2024-10-04 10:43:43', 1, '2024-10-04 10:43:43'),
(2124, 122, 637, 1, 1, '2024-10-04 10:43:52', 1, '2024-10-04 10:43:52'),
(2125, 122, 638, 1, 1, '2024-10-04 10:44:03', 1, '2024-10-04 10:44:03'),
(2126, 122, 639, 1, 1, '2024-10-04 10:44:12', 1, '2024-10-04 10:44:12'),
(2127, 122, 640, 1, 1, '2024-10-04 10:44:23', 1, '2024-10-04 10:44:23'),
(2128, 122, 641, 1, 1, '2024-10-04 10:46:04', 1, '2024-10-04 10:46:04'),
(2129, 122, 642, 1, 1, '2024-10-04 10:46:17', 1, '2024-10-04 10:46:17'),
(2130, 122, 643, 1, 1, '2024-10-04 10:46:27', 1, '2024-10-04 10:46:27'),
(2131, 122, 644, 1, 1, '2024-10-04 10:47:23', 1, '2024-10-04 10:47:23'),
(2132, 122, 691, 1, 1, '2024-10-04 10:47:41', 1, '2024-10-04 10:47:41'),
(2133, 122, 662, 1, 1, '2024-10-04 10:47:53', 1, '2024-10-04 10:47:53'),
(2134, 122, 663, 1, 1, '2024-10-04 10:48:09', 1, '2024-10-04 10:48:09'),
(2137, 123, 646, 1, 1, '2024-10-04 10:49:56', 1, '2024-10-04 10:49:56'),
(2138, 123, 647, 1, 1, '2024-10-04 10:50:05', 1, '2024-10-04 10:50:05'),
(2139, 123, 648, 1, 1, '2024-10-04 10:50:16', 1, '2024-10-04 10:50:16'),
(2140, 123, 649, 1, 1, '2024-10-04 10:51:20', 1, '2024-10-04 10:51:20'),
(2141, 123, 650, 1, 1, '2024-10-04 10:51:29', 1, '2024-10-04 10:51:29'),
(2142, 123, 652, 1, 1, '2024-10-04 10:51:42', 1, '2024-10-04 10:51:42'),
(2143, 123, 653, 1, 1, '2024-10-04 10:51:53', 1, '2024-10-04 10:51:53'),
(2144, 123, 654, 1, 1, '2024-10-04 10:52:05', 1, '2024-10-04 10:52:05'),
(2145, 123, 655, 1, 1, '2024-10-04 10:52:17', 1, '2024-10-04 10:52:17'),
(2146, 123, 656, 1, 1, '2024-10-04 10:52:29', 1, '2024-10-04 10:52:29'),
(2147, 123, 692, 1, 1, '2024-10-04 10:52:41', 1, '2024-10-04 10:52:41'),
(2148, 123, 657, 1, 1, '2024-10-04 10:52:54', 1, '2024-10-04 10:52:54'),
(2149, 124, 658, 1, 1, '2024-10-04 10:53:31', 1, '2024-10-04 10:53:31'),
(2150, 124, 659, 1, 1, '2024-10-04 10:54:05', 1, '2024-10-04 10:54:05'),
(2151, 124, 660, 1, 1, '2024-10-04 10:54:14', 1, '2024-10-04 10:54:14'),
(2152, 124, 661, 1, 1, '2024-10-04 10:54:22', 1, '2024-10-04 10:54:22'),
(2153, 119, 693, 1, 27, '2024-10-05 07:36:55', 27, '2024-10-05 07:36:55');

-- --------------------------------------------------------

--
-- Table structure for table `t_branch`
--

CREATE TABLE `t_branch` (
  `branch_id` int(11) NOT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `branch_code` varchar(10) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `phone1` varchar(20) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `facebook` varchar(500) DEFAULT NULL,
  `youtube` varchar(500) DEFAULT NULL,
  `instagram` varchar(500) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_branch`
--

INSERT INTO `t_branch` (`branch_id`, `branch_name`, `branch_code`, `email`, `address`, `phone1`, `city`, `state`, `pincode`, `facebook`, `youtube`, `instagram`, `image`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 'Cubs-Sankalp School', NULL, 'admin@cubssankalpschool.in', 'Adarsh Nagar, Vijayapura', '9019146855', 'Vijayapura', 'Karnataka', '586101', '', NULL, '', NULL, 1, NULL, '2024-06-12 17:48:36', NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_branch_standard`
--

CREATE TABLE `t_branch_standard` (
  `id` int(11) NOT NULL,
  `branchId` int(2) NOT NULL,
  `standardId` int(11) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_branch_standard`
--

INSERT INTO `t_branch_standard` (`id`, `branchId`, `standardId`, `isActive`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, 1, '2024-07-24 14:58:01', '2024-07-24 15:02:37'),
(2, 1, 2, 1, '2024-07-24 14:58:01', '2024-07-24 15:02:55'),
(3, 1, 3, 1, '2024-07-24 14:58:56', '2024-07-24 15:03:09'),
(4, 1, 4, 1, '2024-07-24 14:58:56', '2024-07-24 15:03:20'),
(5, 1, 5, 1, '2024-07-24 15:04:45', '2024-10-01 20:49:49'),
(6, 1, 6, 1, '2024-07-24 15:04:45', '2024-10-01 20:50:10'),
(7, 1, 7, 1, '2024-07-24 15:04:45', '2024-10-01 20:50:21');

-- --------------------------------------------------------

--
-- Table structure for table `t_dairy`
--

CREATE TABLE `t_dairy` (
  `dairy_id` int(20) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `standard_id` int(11) DEFAULT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `description` longtext,
  `date` timestamp NULL DEFAULT NULL,
  `image_url` varchar(1000) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  `Branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_dairy`
--

INSERT INTO `t_dairy` (`dairy_id`, `title`, `standard_id`, `batch_id`, `description`, `date`, `image_url`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`, `Branch_id`) VALUES
(1294, 'Fa3 exam', 2, 116, 'maths exam on monday 7-10-2024', '2024-10-04 18:30:00', '', 1, 27, NULL, 27, '2024-10-05 06:54:19', 1),
(1295, 'holiday', 1, 115, 'dasara holiday from 10-10-2024 to 13-10-2024', '2024-10-22 18:30:00', '', 1, 27, NULL, 27, '2024-10-14 06:46:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_deviceid`
--

CREATE TABLE `t_deviceid` (
  `deviceId` varchar(200) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_event`
--

CREATE TABLE `t_event` (
  `event_id` int(11) NOT NULL,
  `event_title` text,
  `event_description` text,
  `event_image` text,
  `event_date` datetime DEFAULT '0000-00-00 00:00:00',
  `is_active` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `Branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_event`
--

INSERT INTO `t_event` (`event_id`, `event_title`, `event_description`, `event_image`, `event_date`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`, `Branch_id`) VALUES
(382, 'World Food day', 'Awareness Program - Class Event', '', '2024-10-16 00:00:00', 1, 27, '2024-10-05 06:57:36', 1, '2024-10-15 06:53:21', 1),
(383, 'Picnic Day', 'School Picnic - Join Us for a Fun Day!', '', '2024-10-17 00:00:00', 1, 27, '2024-10-14 06:52:38', 1, '2024-10-15 06:56:59', 1),
(384, 'Diwali Competition', 'School Event', '', '2024-10-28 00:00:00', 1, 1, '2024-10-15 06:56:11', 1, '2024-10-15 06:56:35', 1),
(385, 'Kannada Rajyotsava Celebration', 'School Event', '', '2024-10-30 00:00:00', 1, 1, '2024-10-15 06:57:55', 1, '2024-10-15 07:53:14', 1),
(386, 'Holiday', 'Diwali Holiday', '', '2024-10-31 00:00:00', 1, 1, '2024-10-15 06:59:27', 1, '2024-10-15 07:49:50', 1),
(387, 'Holiday', 'Diwali and Kannada Rajyotsava Holiday', '', '2024-11-01 00:00:00', 1, 1, '2024-10-15 07:50:43', 1, '2024-10-15 07:52:25', 1),
(388, 'Holiday', 'Diwali Holiday', '', '2024-11-02 00:00:00', 1, 1, '2024-10-15 07:51:24', 1, '2024-10-15 07:52:51', 1),
(389, 'Holiday', 'Diwali Holiday', '', '2024-11-03 00:00:00', 1, 1, '2024-10-15 07:53:51', 1, '2024-10-15 07:53:51', 1),
(390, 'Childrens Day Celebration', 'School Event', '', '2024-11-14 00:00:00', 1, 1, '2024-10-15 07:54:21', 1, '2024-10-15 07:54:21', 1),
(391, 'Kanakadas Jayanti', 'School Event', '', '2024-11-18 00:00:00', 1, 1, '2024-10-15 07:54:43', 1, '2024-10-15 07:54:43', 1),
(392, 'World Toilet Day', 'School Awareness Program', '', '2024-11-19 00:00:00', 1, 1, '2024-10-15 07:55:06', 1, '2024-10-15 07:55:06', 1),
(393, 'World Television Day', 'School Awareness Program', '', '2024-11-21 00:00:00', 1, 1, '2024-10-15 07:55:28', 1, '2024-10-15 07:55:28', 1),
(394, 'Surprise Test', 'Formative Assessment 3 --- From 18th to 30th November 2024', '', '2024-11-18 00:00:00', 1, 1, '2024-10-15 07:57:09', 1, '2024-10-15 07:57:09', 1),
(395, 'National Population Control Day', 'School Awareness Program', '', '2024-12-02 00:00:00', 1, 1, '2024-10-15 07:58:50', 1, '2024-10-15 07:58:50', 1),
(396, 'Indian Navy Day', 'School Awareness Program', '', '2024-12-04 00:00:00', 1, 1, '2024-10-15 07:59:19', 1, '2024-10-15 07:59:19', 1),
(397, 'National Mathematics Day', 'School Awareness Program', '', '2024-12-21 00:00:00', 1, 1, '2024-10-15 08:00:38', 1, '2024-10-15 08:00:38', 1),
(398, 'National Mathematics Day', 'School Awareness Program - Done on 21st December 2024', '', '2024-12-22 00:00:00', 1, 1, '2024-10-15 08:01:27', 1, '2024-10-15 08:01:27', 1),
(399, 'Kisan Diwas (Farmers Day)', 'School Awareness Program', '', '2024-12-23 00:00:00', 1, 1, '2024-10-15 08:06:56', 1, '2024-10-15 08:06:56', 1),
(400, 'Christmas Celebration', 'School Event', '', '2024-12-24 00:00:00', 1, 1, '2024-10-15 08:07:32', 1, '2024-10-15 08:07:32', 1),
(401, 'Holiday', 'Christmas Holiday', '', '2024-12-25 00:00:00', 1, 1, '2024-10-15 08:08:02', 1, '2024-10-15 08:08:02', 1),
(402, 'Voice Of Sankalp', 'School Competition', '', '2024-12-31 00:00:00', 1, 1, '2024-10-15 08:08:33', 1, '2024-10-15 08:08:33', 1),
(403, 'Holiday', 'New Year Holiday', '', '2024-10-15 13:32:02', 1, 1, '2024-10-15 08:08:55', 1, '2024-10-15 08:08:55', 1),
(404, 'Holiday', 'Makar Sankranti', '', '2024-10-15 13:32:19', 1, 1, '2024-10-15 08:09:20', 1, '2024-10-15 08:09:20', 1),
(405, 'Formative Assessment 4', 'Exams', '', '2025-01-20 00:00:00', 1, 1, '2024-10-15 08:10:03', 1, '2024-10-15 08:10:03', 1),
(406, 'Formative Assessment 4', 'Exams', '', '2025-01-21 00:00:00', 1, 1, '2024-10-15 08:10:30', 1, '2024-10-15 08:10:30', 1),
(407, 'Formative Assessment 4', 'Exams', '', '2025-01-22 00:00:00', 1, 1, '2024-10-15 08:10:43', 1, '2024-10-15 08:10:43', 1),
(408, 'Republic Day and Science Fair', 'Republic Day celebration and Science Exibition', '', '2025-01-26 00:00:00', 1, 1, '2024-10-15 08:11:55', 1, '2024-10-15 08:11:55', 1),
(409, 'Holiday', 'Mahashivratri Holiday', '', '2025-02-26 00:00:00', 1, 1, '2024-10-15 08:12:44', 1, '2024-10-15 08:12:44', 1),
(410, 'International Womens Day', 'School Awareness Program', '', '2025-03-08 00:00:00', 1, 1, '2024-10-15 08:13:23', 1, '2024-10-15 08:13:23', 1),
(411, 'Holiday', 'Holi Holiday', '', '2025-03-14 00:00:00', 1, 1, '2024-10-15 08:13:43', 1, '2024-10-15 08:13:43', 1),
(412, 'Summative Assessment - 2', 'Exams', '', '2025-03-17 00:00:00', 1, 1, '2024-10-15 08:14:10', 1, '2024-10-15 08:14:10', 1),
(413, 'Summative Assessment - 2', 'Exams', '', '2025-03-18 00:00:00', 1, 1, '2024-10-15 08:14:24', 1, '2024-10-15 08:14:24', 1),
(414, 'Summative Assessment - 2', 'Exams', '', '2025-03-19 00:00:00', 1, 1, '2024-10-15 08:14:58', 1, '2024-10-15 08:14:58', 1),
(415, 'Summative Assessment - 2', 'Exams', '', '2025-03-20 00:00:00', 1, 1, '2024-10-15 08:15:14', 1, '2024-10-15 08:15:14', 1),
(416, 'Summative Assessment - 2', 'Exams', '', '2025-03-21 00:00:00', 1, 1, '2024-10-15 08:15:26', 1, '2024-10-15 08:15:26', 1),
(417, 'Summative Assessment - 2', 'Exams', '', '2025-03-22 00:00:00', 1, 1, '2024-10-15 08:15:39', 1, '2024-10-15 08:15:39', 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_exam`
--

CREATE TABLE `t_exam` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `exam_date` varchar(25) NOT NULL,
  `standard_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_exam`
--

INSERT INTO `t_exam` (`id`, `title`, `exam_date`, `standard_id`, `branch_id`, `createdAt`, `updatedAt`) VALUES
(1, 'exam', '2024-10-14', 1, 1, '2024-10-14 06:49:23', '2024-10-14 06:49:23'),
(2, 'holiday', '2024-10-14', 2, 1, '2024-10-14 06:50:41', '2024-10-14 06:50:41'),
(4, 'holiday', '2024-10-15', 3, 1, '2024-10-15 07:12:22', '2024-10-15 07:12:22'),
(5, 'text exam', '2024-10-15', 1, 1, '2024-10-15 10:43:15', '2024-10-15 10:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `t_exam_result`
--

CREATE TABLE `t_exam_result` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_subject_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `scored_marks` double NOT NULL,
  `grade` varchar(10) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_exam_subject`
--

CREATE TABLE `t_exam_subject` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `total_marks` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_exam_subject`
--

INSERT INTO `t_exam_subject` (`id`, `exam_id`, `subject_id`, `total_marks`, `createdAt`, `updatedAt`) VALUES
(1, 5, 1, 100, '2024-10-15 10:43:37', '2024-10-15 10:43:37');

-- --------------------------------------------------------

--
-- Table structure for table `t_exception`
--

CREATE TABLE `t_exception` (
  `exception_id` int(10) NOT NULL,
  `exception_type` text,
  `exception_Error` text,
  `exception Page` text,
  `inner_exception` text,
  `date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_exception`
--

INSERT INTO `t_exception` (`exception_id`, `exception_type`, `exception_Error`, `exception Page`, `inner_exception`, `date`) VALUES
(1, 'System.Data.EntityCommandExecutionException', 'An error occurred while executing the command definition. See the inner exception for details.', 'API1', 'MySql.Data.MySqlClient.MySqlException (0x80004005): Unknown column \'Extent1.payment\' in \'field list\'\r\n   at MySql.Data.MySqlClient.MySqlStream.ReadPacket()\r\n   at MySql.Data.MySqlClient.NativeDriver.GetResult(Int32& affectedRow, Int64& insertedId)\r\n   at MySql.Data.MySqlClient.Driver.GetResult(Int32 statementId, Int32& affectedRows, Int64& insertedId)\r\n   at MySql.Data.MySqlClient.Driver.NextResult(Int32 statementId, Boolean force)\r\n   at MySql.Data.MySqlClient.MySqlDataReader.NextResult()\r\n   at MySql.Data.MySqlClient.MySqlCommand.ExecuteReader(CommandBehavior behavior)\r\n   at MySql.Data.Entity.EFMySqlCommand.ExecuteDbDataReader(CommandBehavior behavior)\r\n   at System.Data.Common.DbCommand.ExecuteReader(CommandBehavior behavior)\r\n   at System.Data.EntityClient.EntityCommandDefinition.ExecuteStoreCommands(EntityCommand entityCommand, CommandBehavior behavior)', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_fee`
--

CREATE TABLE `t_fee` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `batchId` int(11) NOT NULL,
  `fee_amount` double NOT NULL,
  `title` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_fee`
--

INSERT INTO `t_fee` (`id`, `student_id`, `batchId`, `fee_amount`, `title`, `createdAt`, `updatedAt`) VALUES
(7, 426, 115, 53000, 'total', '2024-10-05 07:32:02', '2024-10-05 13:03:17'),
(8, 428, 115, 53000, 'Total', '2024-10-07 05:00:56', '2024-10-07 10:30:56'),
(9, 430, 115, 53500, 'Total', '2024-10-07 05:02:14', '2024-10-07 10:32:14'),
(10, 431, 115, 40500, 'Total', '2024-10-07 05:03:17', '2024-10-07 10:33:17'),
(11, 432, 115, 55500, 'Total', '2024-10-07 05:05:25', '2024-10-07 10:35:25'),
(12, 671, 115, 51000, 'Total', '2024-10-07 05:06:35', '2024-10-07 10:36:35'),
(13, 435, 115, 55500, 'Total', '2024-10-07 05:08:06', '2024-10-07 10:38:06'),
(14, 437, 115, 30000, 'Total', '2024-10-07 05:08:58', '2024-10-07 10:38:58'),
(15, 440, 115, 53000, 'Total', '2024-10-07 05:11:28', '2024-10-07 10:41:28'),
(16, 441, 115, 48000, 'Total', '2024-10-07 05:13:12', '2024-10-07 10:43:12'),
(17, 448, 115, 27750, 'Total', '2024-10-07 05:14:13', '2024-10-07 10:44:13'),
(18, 449, 115, 55500, 'Total', '2024-10-07 05:15:01', '2024-10-07 10:45:01'),
(19, 452, 115, 53000, 'Total', '2024-10-07 05:16:15', '2024-10-07 10:46:15'),
(20, 453, 115, 44400, 'Total', '2024-10-07 05:17:21', '2024-10-07 10:47:21'),
(21, 455, 115, 55500, 'Total', '2024-10-07 05:19:42', '2024-10-07 10:49:42'),
(22, 456, 115, 55500, 'Total', '2024-10-07 05:21:31', '2024-10-07 10:51:31'),
(23, 673, 115, 48000, 'Total', '2024-10-07 05:22:42', '2024-10-07 10:52:42'),
(24, 458, 115, 50000, 'Total', '2024-10-07 05:25:18', '2024-10-07 10:55:18'),
(25, 461, 115, 51000, 'Total', '2024-10-07 05:26:21', '2024-10-07 10:56:21'),
(26, 463, 115, 53000, 'Total', '2024-10-07 05:27:54', '2024-10-07 10:57:54'),
(27, 464, 115, 53000, 'Total', '2024-10-07 05:28:44', '2024-10-07 10:58:44'),
(28, 467, 115, 55500, 'Total', '2024-10-07 05:29:35', '2024-10-07 10:59:35'),
(29, 470, 115, 47700, 'Total', '2024-10-07 05:31:07', '2024-10-07 11:01:07'),
(30, 471, 115, 55000, 'Total', '2024-10-07 05:31:51', '2024-10-07 11:01:51'),
(31, 473, 115, 55500, 'Total', '2024-10-07 05:32:36', '2024-10-07 11:02:36'),
(32, 477, 115, 55500, 'Total', '2024-10-07 05:33:14', '2024-10-07 11:03:14'),
(33, 677, 115, 50000, 'Total', '2024-10-07 05:33:52', '2024-10-07 11:03:52'),
(34, 478, 115, 55500, 'Total', '2024-10-07 05:35:45', '2024-10-07 11:05:45'),
(35, 480, 115, 53000, 'Total', '2024-10-07 05:38:36', '2024-10-07 11:08:36'),
(36, 666, 115, 55500, 'Total', '2024-10-07 05:39:45', '2024-10-07 11:09:45'),
(38, 667, 115, 42400, 'Total', '2024-10-07 05:42:31', '2024-10-07 11:12:31'),
(39, 668, 115, 42400, 'Total', '2024-10-07 05:43:40', '2024-10-07 11:13:40'),
(40, 658, 124, 52000, 'Total', '2024-10-07 05:45:11', '2024-10-07 11:15:11'),
(41, 659, 124, 65000, 'Total', '2024-10-07 05:46:00', '2024-10-07 11:16:00'),
(42, 660, 124, 59500, 'Total', '2024-10-07 05:47:09', '2024-10-07 11:17:09'),
(43, 661, 124, 65500, 'Total', '2024-10-07 05:52:22', '2024-10-07 11:22:22'),
(44, 646, 123, 48000, 'Total', '2024-10-07 05:53:54', '2024-10-07 11:23:54'),
(45, 647, 123, 59500, 'Total', '2024-10-07 05:54:47', '2024-10-07 11:24:47'),
(46, 648, 123, 65500, 'Total', '2024-10-07 07:42:08', '2024-10-07 13:12:08'),
(47, 649, 123, 65500, 'Total', '2024-10-07 07:42:51', '2024-10-07 13:12:51'),
(48, 650, 123, 55500, 'Total', '2024-10-07 07:43:59', '2024-10-07 13:13:59'),
(49, 652, 123, 45000, 'Total', '2024-10-07 07:44:36', '2024-10-07 13:14:36'),
(50, 653, 123, 65500, 'Total', '2024-10-07 07:45:24', '2024-10-07 13:15:24'),
(51, 654, 123, 17500, 'Total', '2024-10-07 07:45:51', '2024-10-07 13:15:51'),
(52, 655, 123, 63500, 'Total', '2024-10-07 07:46:15', '2024-10-07 13:16:15'),
(53, 656, 123, 45000, 'Total', '2024-10-07 07:46:44', '2024-10-07 13:16:44'),
(54, 692, 123, 63000, 'Total', '2024-10-07 07:52:31', '2024-10-07 13:22:31'),
(55, 657, 123, 65500, 'Total', '2024-10-07 07:53:04', '2024-10-07 13:23:04'),
(56, 625, 122, 60500, 'Total', '2024-10-07 07:56:57', '2024-10-07 13:26:57'),
(57, 626, 122, 60500, 'Total', '2024-10-07 08:20:29', '2024-10-07 13:50:29'),
(58, 627, 122, 48000, 'Total', '2024-10-07 08:20:54', '2024-10-07 13:50:54'),
(59, 628, 122, 60500, 'Total', '2024-10-07 08:21:31', '2024-10-07 13:51:31'),
(60, 690, 122, 60500, 'Total', '2024-10-07 08:22:00', '2024-10-07 13:55:37'),
(61, 630, 122, 60500, 'Total', '2024-10-07 08:22:38', '2024-10-07 13:52:38'),
(62, 631, 122, 60500, 'Total', '2024-10-07 08:23:21', '2024-10-07 13:53:21'),
(63, 635, 122, 60500, 'Total', '2024-10-07 08:26:28', '2024-10-07 13:56:28'),
(64, 632, 122, 60500, 'Total', '2024-10-10 05:45:47', '2024-10-10 11:15:47'),
(65, 634, 122, 17500, 'Total', '2024-10-10 05:49:53', '2024-10-10 11:19:53'),
(66, 633, 122, 43550, 'Total', '2024-10-10 05:50:58', '2024-10-10 11:20:58'),
(67, 636, 122, 60500, 'Total', '2024-10-10 05:51:47', '2024-10-10 11:21:47'),
(68, 637, 122, 12000, 'Total', '2024-10-10 05:52:41', '2024-10-10 11:22:41'),
(69, 638, 122, 60500, 'Total', '2024-10-10 06:02:26', '2024-10-10 11:32:26'),
(71, 639, 122, 12000, 'Total', '2024-10-10 06:04:05', '2024-10-10 11:34:05'),
(72, 640, 122, 55000, 'Total', '2024-10-10 06:04:51', '2024-10-10 11:34:51'),
(73, 641, 122, 51000, 'Total', '2024-10-10 06:05:36', '2024-10-10 11:35:36'),
(74, 642, 122, 60500, 'Total', '2024-10-10 06:08:58', '2024-10-10 11:38:58'),
(75, 643, 122, 60500, 'Total', '2024-10-10 06:14:21', '2024-10-10 11:44:21'),
(76, 644, 122, 60500, 'Total', '2024-10-10 06:22:44', '2024-10-10 11:52:44'),
(77, 691, 122, 60500, 'Total', '2024-10-10 06:23:37', '2024-10-10 11:53:37'),
(78, 662, 122, 43000, 'Total', '2024-10-10 06:28:13', '2024-10-10 11:58:13'),
(79, 663, 122, 30000, 'Total', '2024-10-10 06:28:46', '2024-10-10 11:58:46'),
(80, 606, 121, 15000, 'Total', '2024-10-10 06:30:44', '2024-10-10 12:00:44'),
(81, 607, 121, 41500, 'Total', '2024-10-10 06:31:09', '2024-10-10 12:01:09'),
(83, 608, 121, 47000, 'Total', '2024-10-10 06:32:47', '2024-10-10 12:02:47'),
(84, 609, 121, 57000, 'Total', '2024-10-10 06:33:38', '2024-10-10 12:03:38'),
(85, 610, 121, 57000, 'Total', '2024-10-10 06:35:50', '2024-10-10 12:05:50'),
(86, 611, 121, 55000, 'Total', '2024-10-10 06:36:31', '2024-10-10 12:06:31'),
(87, 612, 121, 55000, 'Total', '2024-10-10 06:37:01', '2024-10-10 12:07:01'),
(88, 613, 121, 55000, 'Total', '2024-10-10 06:37:40', '2024-10-10 12:07:40'),
(90, 614, 121, 58400, 'Total', '2024-10-10 06:40:20', '2024-10-10 12:10:20'),
(91, 687, 121, 32000, 'Total', '2024-10-10 06:41:11', '2024-10-10 12:11:11'),
(92, 688, 121, 51400, 'Total', '2024-10-10 06:41:50', '2024-10-10 12:11:50'),
(93, 689, 121, 60500, 'Total', '2024-10-10 06:43:04', '2024-10-10 12:13:04'),
(94, 615, 121, 58500, 'Total', '2024-10-10 06:44:03', '2024-10-10 12:14:03'),
(95, 616, 121, 60500, 'Total', '2024-10-10 06:44:51', '2024-10-10 12:14:51'),
(96, 617, 121, 17500, 'Total', '2024-10-10 06:45:40', '2024-10-10 12:15:40'),
(97, 618, 121, 17500, 'Total', '2024-10-10 06:46:27', '2024-10-10 12:16:27'),
(98, 619, 121, 49000, 'Total', '2024-10-10 06:46:52', '2024-10-10 12:16:52'),
(99, 620, 121, 60500, 'Total', '2024-10-10 06:47:33', '2024-10-10 12:17:33'),
(100, 621, 121, 60500, 'Total', '2024-10-10 06:48:14', '2024-10-10 12:18:14'),
(101, 623, 121, 27500, 'Total', '2024-10-10 06:48:46', '2024-10-10 12:18:46'),
(102, 622, 121, 55000, 'Total', '2024-10-10 06:49:24', '2024-10-10 12:19:24'),
(103, 624, 121, 51400, 'Total', '2024-10-10 06:50:39', '2024-10-10 12:20:39'),
(104, 427, 117, 53000, 'Total', '2024-10-10 06:53:16', '2024-10-10 12:23:16'),
(105, 429, 117, 42500, 'Total', '2024-10-10 06:53:57', '2024-10-10 12:23:57'),
(106, 434, 117, 55500, 'Total', '2024-10-10 06:55:29', '2024-10-10 12:25:29'),
(107, 436, 117, 55500, 'Total', '2024-10-10 06:56:05', '2024-10-10 12:26:05'),
(108, 438, 117, 53000, 'Total', '2024-10-10 06:57:21', '2024-10-10 12:27:21'),
(109, 444, 117, 55000, 'Total', '2024-10-10 06:58:01', '2024-10-10 12:57:51'),
(110, 442, 117, 39750, 'Total', '2024-10-10 06:58:29', '2024-10-10 12:28:29'),
(111, 443, 117, 53000, 'Total', '2024-10-10 06:59:34', '2024-10-10 12:29:34'),
(112, 447, 117, 53000, 'Total', '2024-10-10 07:01:15', '2024-10-10 12:31:14'),
(113, 451, 117, 53000, 'Total', '2024-10-10 07:02:22', '2024-10-10 12:32:22'),
(114, 454, 117, 55500, 'Total', '2024-10-10 07:03:15', '2024-10-10 12:33:15'),
(115, 457, 117, 55500, 'Total', '2024-10-10 07:03:53', '2024-10-10 12:33:53'),
(116, 459, 117, 55500, 'Total', '2024-10-10 07:04:48', '2024-10-10 12:34:48'),
(117, 460, 117, 55500, 'Total', '2024-10-10 07:06:46', '2024-10-10 12:36:46'),
(118, 462, 117, 55500, 'Total', '2024-10-10 07:08:20', '2024-10-10 12:38:20'),
(119, 675, 117, 53000, 'Total', '2024-10-10 07:09:19', '2024-10-10 12:39:19'),
(120, 466, 117, 53000, 'Total', '2024-10-10 07:10:09', '2024-10-10 12:40:09'),
(121, 676, 117, 53000, 'Total', '2024-10-10 07:11:39', '2024-10-10 12:41:39'),
(122, 468, 117, 53000, 'Total', '2024-10-10 07:12:31', '2024-10-10 12:42:31'),
(123, 469, 117, 55500, 'Total', '2024-10-10 07:13:47', '2024-10-10 12:43:47'),
(124, 472, 117, 53000, 'Total', '2024-10-10 07:14:38', '2024-10-10 12:44:38'),
(125, 474, 117, 48000, 'Total', '2024-10-10 07:15:15', '2024-10-10 12:45:15'),
(126, 479, 117, 55500, 'Total', '2024-10-10 07:16:00', '2024-10-10 12:46:00'),
(127, 445, 117, 10000, 'Total', '2024-10-10 07:16:43', '2024-10-10 12:46:43'),
(128, 476, 117, 47000, 'Total', '2024-10-10 07:17:12', '2024-10-10 12:47:35'),
(129, 465, 117, 10000, 'Total', '2024-10-10 07:18:09', '2024-10-10 12:48:09'),
(130, 446, 117, 53000, 'Total', '2024-10-10 07:19:45', '2024-10-10 12:49:45'),
(131, 450, 117, 55500, 'Total', '2024-10-10 07:21:48', '2024-10-10 12:51:48'),
(132, 672, 117, 50000, 'Total', '2024-10-10 07:22:26', '2024-10-10 12:52:26'),
(133, 433, 117, 44400, 'Total', '2024-10-10 07:23:07', '2024-10-10 12:53:07'),
(134, 674, 117, 53000, 'Total', '2024-10-10 07:28:28', '2024-10-10 12:58:28'),
(135, 483, 116, 55500, 'Total', '2024-10-10 07:35:53', '2024-10-10 13:05:53'),
(136, 484, 116, 55500, 'Total', '2024-10-10 07:36:30', '2024-10-10 13:06:30'),
(137, 486, 116, 55500, 'Total', '2024-10-10 07:38:05', '2024-10-10 13:08:05'),
(138, 487, 116, 55500, 'Total', '2024-10-10 07:39:27', '2024-10-10 13:09:27'),
(139, 488, 116, 53000, 'Total', '2024-10-10 07:39:52', '2024-10-10 13:09:52'),
(140, 489, 116, 55500, 'Total', '2024-10-10 07:40:21', '2024-10-10 13:10:21'),
(141, 490, 116, 58500, 'Total', '2024-10-10 07:40:59', '2024-10-10 13:10:59'),
(142, 493, 116, 58500, 'Total', '2024-10-10 07:41:46', '2024-10-10 13:11:46'),
(143, 494, 116, 55500, 'Total', '2024-10-10 07:42:27', '2024-10-10 13:12:27'),
(144, 496, 116, 53500, 'Total', '2024-10-10 07:43:08', '2024-10-10 13:13:08'),
(145, 504, 116, 55500, 'Total', '2024-10-10 07:43:54', '2024-10-10 13:14:22'),
(146, 498, 116, 58500, 'Total', '2024-10-10 07:45:26', '2024-10-10 13:15:26'),
(147, 499, 116, 58500, 'Total', '2024-10-10 07:46:01', '2024-10-10 13:16:01'),
(148, 506, 116, 58500, 'Total', '2024-10-10 07:46:47', '2024-10-10 13:16:47'),
(149, 508, 116, 56500, 'Total', '2024-10-10 07:51:59', '2024-10-10 13:21:59'),
(150, 510, 116, 44400, 'Total', '2024-10-10 07:52:37', '2024-10-10 13:22:37'),
(151, 513, 116, 55500, 'Total', '2024-10-10 07:53:30', '2024-10-10 13:23:30'),
(152, 515, 116, 51000, 'Total', '2024-10-10 07:55:01', '2024-10-10 13:25:01'),
(153, 679, 116, 58500, 'Total', '2024-10-10 07:56:19', '2024-10-10 13:26:19'),
(154, 517, 116, 46800, 'Total', '2024-10-10 07:57:33', '2024-10-10 13:27:33'),
(155, 518, 116, 55000, 'Total', '2024-10-10 07:58:24', '2024-10-10 13:28:24'),
(156, 523, 116, 55500, 'Total', '2024-10-10 07:59:13', '2024-10-10 13:29:13'),
(157, 524, 116, 58500, 'Total', '2024-10-10 08:00:02', '2024-10-10 13:30:02'),
(158, 525, 116, 52000, 'Total', '2024-10-10 08:00:48', '2024-10-10 13:30:48'),
(159, 528, 116, 55500, 'Total', '2024-10-10 08:01:46', '2024-10-10 13:31:46'),
(160, 532, 116, 56500, 'Total', '2024-10-10 08:02:41', '2024-10-10 13:32:41'),
(161, 534, 116, 58500, 'Total', '2024-10-10 08:03:20', '2024-10-10 13:33:20'),
(162, 537, 116, 47000, 'Total', '2024-10-10 08:04:16', '2024-10-10 13:34:16'),
(163, 540, 116, 58500, 'Total', '2024-10-10 08:05:40', '2024-10-10 13:35:40'),
(164, 542, 116, 15000, 'Total', '2024-10-10 08:06:28', '2024-10-10 13:36:28'),
(165, 543, 116, 51000, 'Total', '2024-10-10 08:06:57', '2024-10-10 13:36:57'),
(166, 681, 116, 55500, 'Total', '2024-10-10 08:07:41', '2024-10-10 13:37:41'),
(167, 545, 116, 53500, 'Total', '2024-10-10 08:08:38', '2024-10-10 13:38:38'),
(168, 546, 116, 55500, 'Total', '2024-10-10 08:09:11', '2024-10-10 13:39:11'),
(169, 482, 118, 58500, 'Total', '2024-10-10 08:10:09', '2024-10-10 13:40:09'),
(170, 678, 118, 51500, 'Total', '2024-10-10 08:10:43', '2024-10-10 13:40:43'),
(171, 491, 118, 57500, 'Total', '2024-10-10 08:11:21', '2024-10-10 13:41:21'),
(172, 492, 118, 53500, 'Total', '2024-10-10 08:12:02', '2024-10-10 13:42:02'),
(173, 495, 118, 55500, 'Total', '2024-10-10 08:12:46', '2024-10-10 13:42:46'),
(174, 497, 118, 55500, 'Total', '2024-10-10 08:13:16', '2024-10-10 13:43:16'),
(175, 500, 118, 56500, 'Total', '2024-10-10 08:13:46', '2024-10-10 13:43:46'),
(176, 501, 118, 58500, 'Total', '2024-10-10 08:14:29', '2024-10-10 13:44:29'),
(178, 509, 118, 55500, 'Total', '2024-10-10 08:16:39', '2024-10-10 13:46:39'),
(179, 503, 118, 55500, 'Total', '2024-10-10 08:18:15', '2024-10-10 13:48:15'),
(180, 505, 118, 58500, 'Total', '2024-10-10 08:19:24', '2024-10-10 13:49:24'),
(181, 507, 118, 53500, 'Total', '2024-10-10 08:23:54', '2024-10-10 13:53:54'),
(182, 511, 118, 15000, 'Total', '2024-10-10 08:24:39', '2024-10-10 13:54:39'),
(183, 512, 118, 55500, 'Total', '2024-10-10 08:25:14', '2024-10-10 13:55:14'),
(184, 514, 118, 48000, 'Total', '2024-10-10 08:26:26', '2024-10-10 13:56:26'),
(185, 516, 118, 58500, 'Total', '2024-10-10 08:27:05', '2024-10-10 13:57:05'),
(186, 519, 118, 53500, 'Total', '2024-10-10 08:28:41', '2024-10-10 13:58:41'),
(187, 520, 118, 55000, 'Total', '2024-10-10 08:29:43', '2024-10-10 13:59:43'),
(188, 521, 118, 58500, 'Total', '2024-10-10 08:30:31', '2024-10-10 14:00:31'),
(189, 522, 118, 55500, 'Total', '2024-10-10 08:31:37', '2024-10-10 14:01:37'),
(190, 680, 118, 58500, 'Total', '2024-10-10 08:32:40', '2024-10-10 14:02:40'),
(191, 526, 118, 58500, 'Total', '2024-10-10 08:37:09', '2024-10-10 14:07:09'),
(192, 527, 118, 49000, 'Total', '2024-10-10 08:37:56', '2024-10-10 14:07:56'),
(193, 547, 118, 53500, 'Total', '2024-10-10 08:38:41', '2024-10-10 14:08:41'),
(194, 529, 118, 43875, 'Total', '2024-10-10 08:39:37', '2024-10-10 14:09:37'),
(195, 530, 118, 53500, 'Total', '2024-10-10 08:40:28', '2024-10-10 14:10:28'),
(196, 531, 118, 47000, 'Total', '2024-10-10 08:41:34', '2024-10-10 14:11:34'),
(197, 533, 118, 41625, 'Total', '2024-10-10 08:42:57', '2024-10-10 14:12:57'),
(198, 536, 118, 56500, 'Total', '2024-10-10 08:43:51', '2024-10-10 14:13:51'),
(199, 538, 118, 49700, 'Total', '2024-10-10 08:45:03', '2024-10-10 14:15:03'),
(200, 539, 118, 55500, 'Total', '2024-10-10 08:45:50', '2024-10-10 14:15:50'),
(201, 541, 118, 58500, 'Total', '2024-10-10 08:46:38', '2024-10-10 14:16:38'),
(202, 544, 118, 29250, 'Total', '2024-10-10 08:47:15', '2024-10-10 14:17:15'),
(203, 535, 118, 54500, 'Total', '2024-10-10 08:47:55', '2024-10-10 14:17:55'),
(204, 664, 118, 58500, 'Total', '2024-10-10 08:49:10', '2024-10-10 14:19:10'),
(205, 665, 118, 43000, 'Total', '2024-10-10 08:49:55', '2024-10-10 14:19:55'),
(206, 485, 116, 50000, 'Total', '2024-10-10 09:07:06', '2024-10-10 14:37:06'),
(208, 502, 116, 58500, 'Total', '2024-10-10 09:09:29', '2024-10-10 14:39:29'),
(209, 548, 119, 58500, 'Total', '2024-10-14 06:32:06', '2024-10-14 12:02:06'),
(211, 553, 119, 15000, 'Total', '2024-10-14 06:37:39', '2024-10-14 12:07:39');

-- --------------------------------------------------------

--
-- Table structure for table `t_feeback`
--

CREATE TABLE `t_feeback` (
  `feeback_id` int(11) NOT NULL,
  `studentId` int(11) NOT NULL,
  `batchId` int(11) NOT NULL,
  `branchId` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mobilenumber` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_fee_transactions`
--

CREATE TABLE `t_fee_transactions` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `batchId` int(11) NOT NULL,
  `amount` double NOT NULL,
  `payment_detail` text NOT NULL,
  `payment_mode` tinyint(1) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_fee_transactions`
--

INSERT INTO `t_fee_transactions` (`id`, `student_id`, `batchId`, `amount`, `payment_detail`, `payment_mode`, `createdAt`, `updatedAt`) VALUES
(7, 426, 115, 10000, '0.0', 2, '2024-10-05 07:32:31', '2024-10-05 13:02:57'),
(8, 426, 115, 14500, '0.0', 2, '2024-10-05 11:05:17', '2024-10-07 10:29:22'),
(9, 426, 115, 14500, '0.0', 2, '2024-10-07 04:59:34', '2024-10-07 10:29:34'),
(10, 428, 115, 20000, '0.0', 2, '2024-10-07 05:01:09', '2024-10-07 10:31:09'),
(11, 428, 115, 11000, '0.0', 2, '2024-10-07 05:01:36', '2024-10-07 10:31:36'),
(12, 430, 115, 30000, '0.0', 2, '2024-10-07 05:02:46', '2024-10-07 10:32:46'),
(13, 431, 115, 10000, '0.0', 2, '2024-10-07 05:03:27', '2024-10-07 10:33:27'),
(14, 431, 115, 12000, '0.0', 2, '2024-10-07 05:03:35', '2024-10-07 10:33:35'),
(15, 431, 115, 8500, '0.0', 2, '2024-10-07 05:03:44', '2024-10-07 10:33:43'),
(16, 430, 115, 13500, '0.0', 2, '2024-10-07 05:04:58', '2024-10-07 10:34:58'),
(17, 432, 115, 20000, '0.0', 2, '2024-10-07 05:05:38', '2024-10-07 10:35:38'),
(18, 432, 115, 30000, '0.0', 2, '2024-10-07 05:05:44', '2024-10-07 10:35:44'),
(19, 671, 115, 15000, '0.0', 2, '2024-10-07 05:06:46', '2024-10-07 10:36:46'),
(20, 671, 115, 20000, '0.0', 2, '2024-10-07 05:06:55', '2024-10-07 10:36:55'),
(21, 435, 115, 20000, '0.0', 2, '2024-10-07 05:08:16', '2024-10-07 10:38:16'),
(22, 435, 115, 18000, '0.0', 2, '2024-10-07 05:08:22', '2024-10-07 10:38:22'),
(23, 437, 115, 5000, '0.0', 2, '2024-10-07 05:09:18', '2024-10-07 10:39:18'),
(24, 437, 115, 20000, '0.0', 2, '2024-10-07 05:09:23', '2024-10-07 10:39:23'),
(25, 440, 115, 20000, '0.0', 2, '2024-10-07 05:12:26', '2024-10-07 10:42:26'),
(26, 440, 115, 11000, '0.0', 2, '2024-10-07 05:12:32', '2024-10-07 10:42:32'),
(27, 440, 115, 11000, '0.0', 2, '2024-10-07 05:12:40', '2024-10-07 10:42:40'),
(28, 441, 115, 20000, '0.0', 2, '2024-10-07 05:13:26', '2024-10-07 10:43:26'),
(29, 441, 115, 14000, '0.0', 2, '2024-10-07 05:13:34', '2024-10-07 10:43:34'),
(30, 448, 115, 6000, '0.0', 2, '2024-10-07 05:14:32', '2024-10-07 10:44:32'),
(31, 449, 115, 5000, '0.0', 2, '2024-10-07 05:15:09', '2024-10-07 10:45:09'),
(32, 449, 115, 20000, '0.0', 2, '2024-10-07 05:15:18', '2024-10-07 10:45:18'),
(33, 452, 115, 10000, '0.0', 2, '2024-10-07 05:16:28', '2024-10-07 10:46:28'),
(34, 452, 115, 15000, '0.0', 2, '2024-10-07 05:16:36', '2024-10-07 10:46:36'),
(35, 453, 115, 15000, '0.0', 2, '2024-10-07 05:17:32', '2024-10-07 10:47:32'),
(36, 453, 115, 10000, '0.0', 2, '2024-10-07 05:17:43', '2024-10-07 10:47:43'),
(37, 453, 115, 10000, '0.0', 2, '2024-10-07 05:17:50', '2024-10-07 10:47:50'),
(38, 455, 115, 20000, '0.0', 2, '2024-10-07 05:19:57', '2024-10-07 10:49:57'),
(39, 455, 115, 18000, '0.0', 2, '2024-10-07 05:20:12', '2024-10-07 10:50:12'),
(40, 456, 115, 18500, '0.0', 2, '2024-10-07 05:21:41', '2024-10-07 10:51:41'),
(41, 456, 115, 19000, '0.0', 2, '2024-10-07 05:21:48', '2024-10-07 10:51:47'),
(42, 673, 115, 10000, '0.0', 2, '2024-10-07 05:23:56', '2024-10-07 10:53:56'),
(43, 673, 115, 12500, '0.0', 2, '2024-10-07 05:24:03', '2024-10-07 10:54:03'),
(44, 673, 115, 12500, '0.0', 2, '2024-10-07 05:24:15', '2024-10-07 10:54:15'),
(45, 458, 115, 22000, '0.0', 2, '2024-10-07 05:25:31', '2024-10-07 10:55:31'),
(46, 458, 115, 14000, '0.0', 2, '2024-10-07 05:25:41', '2024-10-07 10:55:41'),
(47, 461, 115, 15000, '0.0', 2, '2024-10-07 05:26:32', '2024-10-07 10:56:32'),
(48, 461, 115, 36000, '0.0', 2, '2024-10-07 05:26:37', '2024-10-07 10:56:37'),
(49, 463, 115, 20000, '0.0', 2, '2024-10-07 05:28:04', '2024-10-07 10:58:04'),
(50, 463, 115, 11000, '0.0', 2, '2024-10-07 05:28:11', '2024-10-07 10:58:11'),
(51, 464, 115, 20000, '0.0', 2, '2024-10-07 05:28:56', '2024-10-07 10:58:56'),
(52, 464, 115, 11500, '0.0', 2, '2024-10-07 05:29:02', '2024-10-07 10:59:02'),
(53, 467, 115, 20000, '0.0', 2, '2024-10-07 05:29:44', '2024-10-07 10:59:44'),
(54, 467, 115, 18000, '0.0', 2, '2024-10-07 05:29:50', '2024-10-07 10:59:50'),
(55, 470, 115, 30000, '0.0', 2, '2024-10-07 05:31:15', '2024-10-07 11:01:15'),
(56, 470, 115, 10000, '0.0', 2, '2024-10-07 05:31:22', '2024-10-07 11:01:22'),
(57, 471, 115, 27000, '0.0', 2, '2024-10-07 05:31:59', '2024-10-07 11:01:59'),
(58, 471, 115, 10000, '0.0', 2, '2024-10-07 05:32:07', '2024-10-07 11:02:07'),
(59, 471, 115, 10000, '0.0', 2, '2024-10-07 05:32:12', '2024-10-07 11:02:12'),
(60, 473, 115, 25000, '0.0', 2, '2024-10-07 05:32:46', '2024-10-07 11:02:46'),
(61, 477, 115, 55500, '0.0', 2, '2024-10-07 05:33:23', '2024-10-07 11:03:23'),
(62, 677, 115, 15000, '0.0', 2, '2024-10-07 05:35:10', '2024-10-07 11:05:10'),
(63, 677, 115, 5000, '0.0', 2, '2024-10-07 05:35:15', '2024-10-07 11:05:15'),
(64, 478, 115, 10000, '0.0', 2, '2024-10-07 05:36:49', '2024-10-07 11:06:49'),
(65, 478, 115, 10000, '0.0', 2, '2024-10-07 05:37:02', '2024-10-07 11:07:02'),
(66, 478, 115, 18000, '0.0', 2, '2024-10-07 05:37:10', '2024-10-07 11:07:10'),
(67, 480, 115, 10000, '0.0', 2, '2024-10-07 05:38:46', '2024-10-07 11:08:46'),
(68, 480, 115, 10000, '0.0', 2, '2024-10-07 05:38:53', '2024-10-07 11:08:53'),
(69, 480, 115, 10000, '0.0', 2, '2024-10-07 05:39:00', '2024-10-07 11:09:00'),
(70, 666, 115, 20000, '0.0', 2, '2024-10-07 05:39:54', '2024-10-07 11:09:54'),
(71, 666, 115, 10000, '0.0', 2, '2024-10-07 05:40:00', '2024-10-07 11:10:00'),
(72, 667, 115, 18000, '0.0', 2, '2024-10-07 05:40:39', '2024-10-07 11:10:39'),
(73, 667, 115, 15500, '0.0', 2, '2024-10-07 05:40:47', '2024-10-07 11:10:47'),
(74, 668, 115, 18000, '0.0', 2, '2024-10-07 05:43:50', '2024-10-07 11:13:50'),
(75, 668, 115, 18000, '0.0', 2, '2024-10-07 05:43:56', '2024-10-07 11:13:56'),
(76, 658, 124, 15000, '0.0', 2, '2024-10-07 05:45:22', '2024-10-07 11:15:22'),
(77, 658, 124, 12500, '0.0', 2, '2024-10-07 05:45:28', '2024-10-07 11:15:28'),
(78, 658, 124, 12500, '0.0', 2, '2024-10-07 05:45:35', '2024-10-07 11:15:35'),
(79, 659, 124, 20000, '0.0', 2, '2024-10-07 05:46:10', '2024-10-07 11:16:10'),
(80, 659, 124, 20000, '0.0', 2, '2024-10-07 05:46:21', '2024-10-07 11:16:21'),
(81, 660, 124, 20000, '0.0', 2, '2024-10-07 05:47:27', '2024-10-07 11:17:27'),
(82, 661, 124, 20000, '0.0', 2, '2024-10-07 05:52:43', '2024-10-07 11:22:43'),
(83, 661, 124, 23000, '0.0', 2, '2024-10-07 05:53:23', '2024-10-07 11:23:23'),
(84, 646, 123, 20000, '0.0', 2, '2024-10-07 05:54:06', '2024-10-07 11:24:06'),
(85, 646, 123, 10000, '0.0', 2, '2024-10-07 05:54:12', '2024-10-07 11:24:12'),
(86, 647, 123, 10000, '0.0', 2, '2024-10-07 05:54:57', '2024-10-07 11:24:57'),
(87, 647, 123, 25000, '0.0', 2, '2024-10-07 07:41:11', '2024-10-07 13:11:11'),
(88, 648, 123, 20000, '0.0', 2, '2024-10-07 07:42:18', '2024-10-07 13:12:18'),
(89, 648, 123, 15500, '0.0', 2, '2024-10-07 07:42:25', '2024-10-07 13:12:25'),
(90, 648, 123, 15500, '0.0', 2, '2024-10-07 07:42:32', '2024-10-07 13:12:32'),
(91, 649, 123, 20000, '0.0', 2, '2024-10-07 07:43:00', '2024-10-07 13:13:00'),
(92, 649, 123, 15000, '0.0', 2, '2024-10-07 07:43:15', '2024-10-07 13:13:15'),
(93, 650, 123, 20000, '0.0', 2, '2024-10-07 07:44:08', '2024-10-07 13:14:08'),
(94, 650, 123, 35500, '0.0', 2, '2024-10-07 07:44:18', '2024-10-07 13:14:18'),
(95, 652, 123, 20000, '0.0', 2, '2024-10-07 07:44:50', '2024-10-07 13:14:50'),
(96, 653, 123, 35000, '0.0', 2, '2024-10-07 07:45:32', '2024-10-07 13:15:32'),
(97, 655, 123, 10000, '0.0', 2, '2024-10-07 07:46:25', '2024-10-07 13:16:25'),
(98, 656, 123, 15000, '0.0', 2, '2024-10-07 07:46:52', '2024-10-07 13:16:52'),
(99, 656, 123, 15000, '0.0', 2, '2024-10-07 07:46:58', '2024-10-07 13:16:58'),
(100, 692, 123, 15000, '0.0', 2, '2024-10-07 07:52:42', '2024-10-07 13:22:42'),
(101, 657, 123, 18000, '0.0', 2, '2024-10-07 07:53:13', '2024-10-07 13:23:13'),
(102, 657, 123, 16000, '0.0', 2, '2024-10-07 07:53:21', '2024-10-07 13:23:21'),
(103, 625, 122, 20000, '0.0', 2, '2024-10-07 07:57:35', '2024-10-07 13:27:35'),
(104, 625, 122, 20500, '0.0', 2, '2024-10-07 07:57:42', '2024-10-07 13:27:42'),
(105, 626, 122, 10000, '0.0', 2, '2024-10-07 08:20:38', '2024-10-07 13:50:38'),
(106, 627, 122, 20000, '0.0', 2, '2024-10-07 08:21:04', '2024-10-07 13:51:04'),
(107, 627, 122, 10000, '0.0', 2, '2024-10-07 08:21:15', '2024-10-07 13:51:15'),
(108, 628, 122, 20000, '0.0', 2, '2024-10-07 08:21:40', '2024-10-07 13:51:40'),
(109, 690, 122, 30000, '0.0', 2, '2024-10-07 08:22:07', '2024-10-07 13:55:58'),
(110, 690, 122, 0, '0.0', 2, '2024-10-07 08:22:12', '2024-10-07 13:55:52'),
(111, 690, 122, 0, '0.0', 2, '2024-10-07 08:22:18', '2024-10-07 13:55:47'),
(112, 630, 122, 20000, '0.0', 2, '2024-10-07 08:22:47', '2024-10-07 13:52:47'),
(113, 630, 122, 25000, '0.0', 2, '2024-10-07 08:22:54', '2024-10-07 13:52:54'),
(114, 631, 122, 20000, '0.0', 2, '2024-10-07 08:23:28', '2024-10-07 13:53:28'),
(115, 632, 122, 20000, '0.0', 2, '2024-10-10 05:46:01', '2024-10-10 11:16:01'),
(116, 632, 122, 20000, '0.0', 2, '2024-10-10 05:46:08', '2024-10-10 11:16:08'),
(117, 634, 122, 2000, '0.0', 2, '2024-10-10 05:50:02', '2024-10-10 11:20:02'),
(118, 633, 122, 20000, '0.0', 2, '2024-10-10 05:51:08', '2024-10-10 11:21:08'),
(119, 633, 122, 10000, '0.0', 2, '2024-10-10 05:51:14', '2024-10-10 11:21:14'),
(120, 636, 122, 10000, '0.0', 2, '2024-10-10 05:51:56', '2024-10-10 11:21:56'),
(121, 636, 122, 17000, '0.0', 2, '2024-10-10 05:52:02', '2024-10-10 11:22:01'),
(122, 637, 122, 5000, '0.0', 2, '2024-10-10 05:52:51', '2024-10-10 11:22:51'),
(123, 638, 122, 20000, '0.0', 2, '2024-10-10 06:02:34', '2024-10-10 11:32:34'),
(124, 638, 122, 20500, '0.0', 2, '2024-10-10 06:02:44', '2024-10-10 11:32:44'),
(125, 642, 122, 5000, '0.0', 2, '2024-10-10 06:03:36', '2024-10-10 11:33:36'),
(126, 639, 122, 5000, '0.0', 2, '2024-10-10 06:04:15', '2024-10-10 11:34:15'),
(127, 640, 122, 10000, '0.0', 2, '2024-10-10 06:05:00', '2024-10-10 11:35:00'),
(128, 640, 122, 10000, '0.0', 2, '2024-10-10 06:05:06', '2024-10-10 11:35:06'),
(129, 640, 122, 20000, '0.0', 2, '2024-10-10 06:05:13', '2024-10-10 11:35:13'),
(130, 641, 122, 15000, '0.0', 2, '2024-10-10 06:05:46', '2024-10-10 11:35:46'),
(131, 641, 122, 24000, '0.0', 2, '2024-10-10 06:06:17', '2024-10-10 11:36:17'),
(132, 642, 122, 20000, '0.0', 2, '2024-10-10 06:09:06', '2024-10-10 11:39:06'),
(133, 642, 122, 20000, '0.0', 2, '2024-10-10 06:13:50', '2024-10-10 11:43:50'),
(134, 643, 122, 10000, '0.0', 2, '2024-10-10 06:14:31', '2024-10-10 11:44:31'),
(135, 644, 122, 35000, '0.0', 2, '2024-10-10 06:22:53', '2024-10-10 11:52:53'),
(136, 691, 122, 15000, '0.0', 2, '2024-10-10 06:23:45', '2024-10-10 11:53:45'),
(137, 691, 122, 20000, '0.0', 2, '2024-10-10 06:23:52', '2024-10-10 11:53:52'),
(138, 662, 122, 15000, '0.0', 2, '2024-10-10 06:28:21', '2024-10-10 11:58:21'),
(139, 663, 122, 10000, '0.0', 2, '2024-10-10 06:28:56', '2024-10-10 11:58:56'),
(140, 663, 122, 5000, '0.0', 2, '2024-10-10 06:29:02', '2024-10-10 11:59:02'),
(141, 607, 121, 20000, '0.0', 2, '2024-10-10 06:31:19', '2024-10-10 12:01:19'),
(142, 608, 121, 10000, '0.0', 2, '2024-10-10 06:31:49', '2024-10-10 12:01:49'),
(143, 608, 121, 10000, '0.0', 2, '2024-10-10 06:31:56', '2024-10-10 12:01:56'),
(144, 608, 121, 10000, '0.0', 2, '2024-10-10 06:32:04', '2024-10-10 12:02:04'),
(145, 608, 121, 10000, '0.0', 2, '2024-10-10 06:32:56', '2024-10-10 12:02:56'),
(146, 608, 121, 12500, '0.0', 2, '2024-10-10 06:33:05', '2024-10-10 12:03:05'),
(147, 608, 121, 12500, '0.0', 2, '2024-10-10 06:33:14', '2024-10-10 12:03:14'),
(148, 609, 121, 10000, '0.0', 2, '2024-10-10 06:33:47', '2024-10-10 12:03:47'),
(149, 609, 121, 10000, '0.0', 2, '2024-10-10 06:33:54', '2024-10-10 12:03:54'),
(150, 609, 121, 10000, '0.0', 2, '2024-10-10 06:34:00', '2024-10-10 12:04:00'),
(151, 610, 121, 20000, '0.0', 2, '2024-10-10 06:36:00', '2024-10-10 12:06:00'),
(152, 610, 121, 13000, '0.0', 2, '2024-10-10 06:36:07', '2024-10-10 12:06:07'),
(153, 610, 121, 12000, '0.0', 2, '2024-10-10 06:36:13', '2024-10-10 12:06:13'),
(154, 612, 121, 20000, '0.0', 2, '2024-10-10 06:37:11', '2024-10-10 12:07:11'),
(155, 613, 121, 20000, '0.0', 2, '2024-10-10 06:38:38', '2024-10-10 12:08:38'),
(156, 613, 121, 18000, '0.0', 2, '2024-10-10 06:38:44', '2024-10-10 12:08:44'),
(157, 614, 121, 25000, '0.0', 2, '2024-10-10 06:40:28', '2024-10-10 12:10:28'),
(158, 614, 121, 11200, '0.0', 2, '2024-10-10 06:40:36', '2024-10-10 12:10:36'),
(159, 614, 121, 11200, '0.0', 2, '2024-10-10 06:40:44', '2024-10-10 12:10:44'),
(160, 687, 121, 7000, '0.0', 2, '2024-10-10 06:41:19', '2024-10-10 12:11:19'),
(161, 687, 121, 5000, '0.0', 2, '2024-10-10 06:41:26', '2024-10-10 12:11:26'),
(162, 688, 121, 15000, '0.0', 2, '2024-10-10 06:41:58', '2024-10-10 12:11:58'),
(163, 689, 121, 20000, '0.0', 2, '2024-10-10 06:43:15', '2024-10-10 12:13:15'),
(164, 689, 121, 20000, '0.0', 2, '2024-10-10 06:43:40', '2024-10-10 12:13:40'),
(165, 615, 121, 10000, '0.0', 2, '2024-10-10 06:44:11', '2024-10-10 12:14:11'),
(166, 615, 121, 17500, '0.0', 2, '2024-10-10 06:44:19', '2024-10-10 12:14:19'),
(167, 615, 121, 10000, '0.0', 2, '2024-10-10 06:44:25', '2024-10-10 12:14:25'),
(168, 616, 121, 20000, '0.0', 2, '2024-10-10 06:44:57', '2024-10-10 12:14:57'),
(169, 616, 121, 13500, '0.0', 2, '2024-10-10 06:45:07', '2024-10-10 12:15:07'),
(170, 616, 121, 13500, '0.0', 2, '2024-10-10 06:45:13', '2024-10-10 12:15:13'),
(171, 619, 121, 10000, '0.0', 2, '2024-10-10 06:47:00', '2024-10-10 12:17:00'),
(172, 619, 121, 19000, '0.0', 2, '2024-10-10 06:47:06', '2024-10-10 12:17:06'),
(173, 619, 121, 10000, '0.0', 2, '2024-10-10 06:47:13', '2024-10-10 12:17:13'),
(174, 620, 121, 35500, '0.0', 2, '2024-10-10 06:47:41', '2024-10-10 12:17:41'),
(175, 620, 121, 12500, '0.0', 2, '2024-10-10 06:47:49', '2024-10-10 12:17:49'),
(176, 621, 121, 20000, '0.0', 2, '2024-10-10 06:48:22', '2024-10-10 12:18:22'),
(177, 623, 121, 5000, '0.0', 2, '2024-10-10 06:48:53', '2024-10-10 12:18:53'),
(178, 622, 121, 20000, '0.0', 2, '2024-10-10 06:49:32', '2024-10-10 12:19:32'),
(179, 624, 121, 20000, '0.0', 2, '2024-10-10 06:50:49', '2024-10-10 12:20:49'),
(180, 624, 121, 16000, '0.0', 2, '2024-10-10 06:50:56', '2024-10-10 12:20:56'),
(181, 427, 117, 30000, '0.0', 2, '2024-10-10 06:53:24', '2024-10-10 12:23:24'),
(182, 427, 117, 23000, '0.0', 2, '2024-10-10 06:53:29', '2024-10-10 12:23:29'),
(183, 429, 117, 21000, '0.0', 2, '2024-10-10 06:54:05', '2024-10-10 12:24:05'),
(184, 429, 117, 11000, '0.0', 2, '2024-10-10 06:54:11', '2024-10-10 12:24:11'),
(185, 434, 117, 20000, '0.0', 2, '2024-10-10 06:55:37', '2024-10-10 12:25:37'),
(186, 434, 117, 35500, '0.0', 2, '2024-10-10 06:55:42', '2024-10-10 12:25:42'),
(187, 436, 117, 10000, '0.0', 2, '2024-10-10 06:56:13', '2024-10-10 12:26:13'),
(188, 436, 117, 20000, '0.0', 2, '2024-10-10 06:56:18', '2024-10-10 12:26:18'),
(189, 436, 117, 20000, '0.0', 2, '2024-10-10 06:56:30', '2024-10-10 12:26:30'),
(190, 438, 117, 30000, '0.0', 2, '2024-10-10 06:57:31', '2024-10-10 12:27:31'),
(191, 438, 117, 20000, '0.0', 2, '2024-10-10 06:57:42', '2024-10-10 12:27:42'),
(192, 442, 117, 22000, '0.0', 2, '2024-10-10 06:59:02', '2024-10-10 12:29:02'),
(193, 443, 117, 5000, '0.0', 2, '2024-10-10 07:00:44', '2024-10-10 12:30:44'),
(194, 443, 117, 8000, '0.0', 2, '2024-10-10 07:00:49', '2024-10-10 12:30:49'),
(195, 447, 117, 30000, '0.0', 2, '2024-10-10 07:01:21', '2024-10-10 12:31:21'),
(196, 451, 117, 20000, '0.0', 2, '2024-10-10 07:02:30', '2024-10-10 12:32:30'),
(197, 451, 117, 16500, '0.0', 2, '2024-10-10 07:02:36', '2024-10-10 12:32:36'),
(198, 454, 117, 15000, '0.0', 2, '2024-10-10 07:03:23', '2024-10-10 12:33:23'),
(199, 457, 117, 15000, '0.0', 2, '2024-10-10 07:04:02', '2024-10-10 12:34:02'),
(200, 457, 117, 10000, '0.0', 2, '2024-10-10 07:04:10', '2024-10-10 12:34:10'),
(201, 459, 117, 25000, '0.0', 2, '2024-10-10 07:04:57', '2024-10-10 12:34:57'),
(202, 460, 117, 20000, '0.0', 2, '2024-10-10 07:06:54', '2024-10-10 12:36:54'),
(203, 460, 117, 12000, '0.0', 2, '2024-10-10 07:07:03', '2024-10-10 12:37:03'),
(204, 462, 117, 25500, '0.0', 2, '2024-10-10 07:08:28', '2024-10-10 12:38:28'),
(205, 462, 117, 15000, '0.0', 2, '2024-10-10 07:08:37', '2024-10-10 12:38:37'),
(206, 675, 117, 20000, '0.0', 2, '2024-10-10 07:09:27', '2024-10-10 12:39:27'),
(207, 675, 117, 18000, '0.0', 2, '2024-10-10 07:09:33', '2024-10-10 12:39:33'),
(208, 675, 117, 15000, '0.0', 2, '2024-10-10 07:09:37', '2024-10-10 12:39:37'),
(209, 466, 117, 20000, '0.0', 2, '2024-10-10 07:10:15', '2024-10-10 12:40:15'),
(210, 466, 117, 16500, '0.0', 2, '2024-10-10 07:10:21', '2024-10-10 12:40:21'),
(211, 676, 117, 20000, '0.0', 2, '2024-10-10 07:11:48', '2024-10-10 12:41:48'),
(212, 676, 117, 11000, '0.0', 2, '2024-10-10 07:11:54', '2024-10-10 12:41:54'),
(213, 676, 117, 11000, '0.0', 2, '2024-10-10 07:12:00', '2024-10-10 12:42:00'),
(214, 468, 117, 30000, '0.0', 2, '2024-10-10 07:12:39', '2024-10-10 12:42:39'),
(215, 468, 117, 23000, '0.0', 2, '2024-10-10 07:12:47', '2024-10-10 12:42:47'),
(216, 469, 117, 15000, '0.0', 2, '2024-10-10 07:13:55', '2024-10-10 12:43:55'),
(217, 469, 117, 13500, '0.0', 2, '2024-10-10 07:14:00', '2024-10-10 12:44:00'),
(218, 469, 117, 13500, '0.0', 2, '2024-10-10 07:14:06', '2024-10-10 12:44:06'),
(219, 472, 117, 20000, '0.0', 2, '2024-10-10 07:14:45', '2024-10-10 12:44:45'),
(220, 472, 117, 16500, '0.0', 2, '2024-10-10 07:14:51', '2024-10-10 12:44:51'),
(221, 474, 117, 15000, '0.0', 2, '2024-10-10 07:15:23', '2024-10-10 12:45:23'),
(222, 479, 117, 20000, '0.0', 2, '2024-10-10 07:16:07', '2024-10-10 12:46:07'),
(223, 479, 117, 35500, '0.0', 2, '2024-10-10 07:16:11', '2024-10-10 12:46:11'),
(224, 445, 117, 2500, '0.0', 2, '2024-10-10 07:16:52', '2024-10-10 12:46:52'),
(225, 476, 117, 25000, '0.0', 2, '2024-10-10 07:17:25', '2024-10-10 12:47:25'),
(226, 465, 117, 10000, '0.0', 2, '2024-10-10 07:19:13', '2024-10-10 12:49:13'),
(227, 446, 117, 20000, '0.0', 2, '2024-10-10 07:19:55', '2024-10-10 12:49:55'),
(228, 446, 117, 16500, '0.0', 2, '2024-10-10 07:20:03', '2024-10-10 12:50:03'),
(229, 450, 117, 10000, '0.0', 2, '2024-10-10 07:21:55', '2024-10-10 12:51:55'),
(230, 450, 117, 45500, '0.0', 2, '2024-10-10 07:21:59', '2024-10-10 12:51:59'),
(231, 672, 117, 15000, '0.0', 2, '2024-10-10 07:22:34', '2024-10-10 12:52:34'),
(232, 672, 117, 5000, '0.0', 2, '2024-10-10 07:22:39', '2024-10-10 12:52:39'),
(233, 672, 117, 10000, '0.0', 2, '2024-10-10 07:22:45', '2024-10-10 12:52:45'),
(234, 433, 117, 15000, '0.0', 2, '2024-10-10 07:23:15', '2024-10-10 12:53:14'),
(235, 433, 117, 15400, '0.0', 2, '2024-10-10 07:26:48', '2024-10-10 12:56:48'),
(236, 444, 117, 10000, '0.0', 2, '2024-10-10 07:27:26', '2024-10-10 12:57:26'),
(237, 444, 117, 20000, '0.0', 2, '2024-10-10 07:27:31', '2024-10-10 12:57:31'),
(238, 444, 117, 10000, '0.0', 2, '2024-10-10 07:27:37', '2024-10-10 12:57:37'),
(239, 674, 117, 10000, '0.0', 2, '2024-10-10 07:28:35', '2024-10-10 12:58:35'),
(240, 674, 117, 10000, '0.0', 2, '2024-10-10 07:28:43', '2024-10-10 12:58:43'),
(241, 483, 116, 20000, '0.0', 2, '2024-10-10 07:36:04', '2024-10-10 13:06:04'),
(242, 483, 116, 18000, '0.0', 2, '2024-10-10 07:36:13', '2024-10-10 13:06:13'),
(243, 484, 116, 20000, '0.0', 2, '2024-10-10 07:37:12', '2024-10-10 13:07:12'),
(244, 484, 116, 18000, '0.0', 2, '2024-10-10 07:37:36', '2024-10-10 13:07:36'),
(245, 486, 116, 55500, '0.0', 2, '2024-10-10 07:38:46', '2024-10-10 13:08:46'),
(246, 487, 116, 20000, '0.0', 2, '2024-10-10 07:39:35', '2024-10-10 13:09:35'),
(247, 488, 116, 53000, '0.0', 2, '2024-10-10 07:39:58', '2024-10-10 13:09:58'),
(248, 489, 116, 20000, '0.0', 2, '2024-10-10 07:40:28', '2024-10-10 13:10:28'),
(249, 489, 116, 20000, '0.0', 2, '2024-10-10 07:40:36', '2024-10-10 13:10:36'),
(250, 490, 116, 15000, '0.0', 2, '2024-10-10 07:41:07', '2024-10-10 13:11:07'),
(251, 490, 116, 14500, '0.0', 2, '2024-10-10 07:41:13', '2024-10-10 13:11:13'),
(252, 490, 116, 14500, '0.0', 2, '2024-10-10 07:41:18', '2024-10-10 13:11:18'),
(253, 493, 116, 20000, '0.0', 2, '2024-10-10 07:41:53', '2024-10-10 13:11:53'),
(254, 493, 116, 13000, '0.0', 2, '2024-10-10 07:41:59', '2024-10-10 13:11:59'),
(255, 493, 116, 13000, '0.0', 2, '2024-10-10 07:42:04', '2024-10-10 13:12:04'),
(256, 494, 116, 20000, '0.0', 2, '2024-10-10 07:42:33', '2024-10-10 13:12:33'),
(257, 494, 116, 12000, '0.0', 2, '2024-10-10 07:42:39', '2024-10-10 13:12:39'),
(258, 494, 116, 12000, '0.0', 2, '2024-10-10 07:42:45', '2024-10-10 13:12:45'),
(259, 496, 116, 20000, '0.0', 2, '2024-10-10 07:43:16', '2024-10-10 13:13:16'),
(260, 496, 116, 11500, '0.0', 2, '2024-10-10 07:43:22', '2024-10-10 13:13:22'),
(261, 496, 116, 11500, '0.0', 2, '2024-10-10 07:43:28', '2024-10-10 13:13:28'),
(262, 504, 116, 20000, '0.0', 2, '2024-10-10 07:44:02', '2024-10-10 13:14:02'),
(263, 504, 116, 13000, '0.0', 2, '2024-10-10 07:44:07', '2024-10-10 13:14:07'),
(264, 504, 116, 12000, '0.0', 2, '2024-10-10 07:44:53', '2024-10-10 13:14:53'),
(265, 498, 116, 20000, '0.0', 2, '2024-10-10 07:45:34', '2024-10-10 13:15:34'),
(266, 498, 116, 13000, '0.0', 2, '2024-10-10 07:45:39', '2024-10-10 13:15:39'),
(267, 499, 116, 20000, '0.0', 2, '2024-10-10 07:46:08', '2024-10-10 13:16:08'),
(268, 499, 116, 35000, '0.0', 2, '2024-10-10 07:46:14', '2024-10-10 13:16:14'),
(269, 506, 116, 20000, '0.0', 2, '2024-10-10 07:46:57', '2024-10-10 13:16:57'),
(270, 506, 116, 13000, '0.0', 2, '2024-10-10 07:47:02', '2024-10-10 13:17:02'),
(271, 506, 116, 13000, '0.0', 2, '2024-10-10 07:47:08', '2024-10-10 13:17:08'),
(272, 508, 116, 56500, '0.0', 2, '2024-10-10 07:52:05', '2024-10-10 13:22:05'),
(273, 510, 116, 10000, '0.0', 2, '2024-10-10 07:52:45', '2024-10-10 13:22:45'),
(274, 510, 116, 10000, '0.0', 2, '2024-10-10 07:52:51', '2024-10-10 13:22:51'),
(275, 510, 116, 10000, '0.0', 2, '2024-10-10 07:52:57', '2024-10-10 13:22:57'),
(276, 513, 116, 20000, '0.0', 2, '2024-10-10 07:53:38', '2024-10-10 13:23:38'),
(277, 513, 116, 20000, '0.0', 2, '2024-10-10 07:53:43', '2024-10-10 13:23:43'),
(278, 515, 116, 20000, '0.0', 2, '2024-10-10 07:55:09', '2024-10-10 13:25:09'),
(279, 515, 116, 15000, '0.0', 2, '2024-10-10 07:55:16', '2024-10-10 13:25:16'),
(280, 679, 116, 25000, '0.0', 2, '2024-10-10 07:56:32', '2024-10-10 13:26:32'),
(281, 679, 116, 10600, '0.0', 2, '2024-10-10 07:56:39', '2024-10-10 13:26:39'),
(282, 679, 116, 10600, '0.0', 2, '2024-10-10 07:56:46', '2024-10-10 13:26:46'),
(283, 517, 116, 20000, '0.0', 2, '2024-10-10 07:57:40', '2024-10-10 13:27:40'),
(284, 517, 116, 13400, '0.0', 2, '2024-10-10 07:57:47', '2024-10-10 13:27:47'),
(285, 518, 116, 20000, '0.0', 2, '2024-10-10 07:58:34', '2024-10-10 13:28:34'),
(286, 518, 116, 17500, '0.0', 2, '2024-10-10 07:58:40', '2024-10-10 13:28:40'),
(287, 523, 116, 10000, '0.0', 2, '2024-10-10 07:59:22', '2024-10-10 13:29:22'),
(288, 523, 116, 30000, '0.0', 2, '2024-10-10 07:59:27', '2024-10-10 13:29:27'),
(289, 524, 116, 20000, '0.0', 2, '2024-10-10 08:00:10', '2024-10-10 13:30:10'),
(290, 524, 116, 38500, '0.0', 2, '2024-10-10 08:00:16', '2024-10-10 13:30:16'),
(291, 525, 116, 20000, '0.0', 2, '2024-10-10 08:00:59', '2024-10-10 13:30:59'),
(292, 525, 116, 16000, '0.0', 2, '2024-10-10 08:01:05', '2024-10-10 13:31:05'),
(293, 528, 116, 15000, '0.0', 2, '2024-10-10 08:01:54', '2024-10-10 13:31:54'),
(294, 528, 116, 40500, '0.0', 2, '2024-10-10 08:02:04', '2024-10-10 13:32:04'),
(295, 532, 116, 30000, '0.0', 2, '2024-10-10 08:02:48', '2024-10-10 13:32:48'),
(296, 534, 116, 20000, '0.0', 2, '2024-10-10 08:03:26', '2024-10-10 13:33:26'),
(297, 534, 116, 13000, '0.0', 2, '2024-10-10 08:03:33', '2024-10-10 13:33:33'),
(298, 534, 116, 13000, '0.0', 2, '2024-10-10 08:03:38', '2024-10-10 13:33:38'),
(299, 537, 116, 10000, '0.0', 2, '2024-10-10 08:04:25', '2024-10-10 13:34:25'),
(300, 537, 116, 10000, '0.0', 2, '2024-10-10 08:04:30', '2024-10-10 13:34:30'),
(301, 540, 116, 20000, '0.0', 2, '2024-10-10 08:05:48', '2024-10-10 13:35:48'),
(302, 540, 116, 13000, '0.0', 2, '2024-10-10 08:05:55', '2024-10-10 13:35:55'),
(303, 540, 116, 13000, '0.0', 2, '2024-10-10 08:06:01', '2024-10-10 13:36:01'),
(304, 543, 116, 15000, '0.0', 2, '2024-10-10 08:07:08', '2024-10-10 13:37:08'),
(305, 543, 116, 15000, '0.0', 2, '2024-10-10 08:07:15', '2024-10-10 13:37:15'),
(306, 681, 116, 15000, '0.0', 2, '2024-10-10 08:07:48', '2024-10-10 13:37:48'),
(307, 681, 116, 27000, '0.0', 2, '2024-10-10 08:07:54', '2024-10-10 13:37:54'),
(308, 545, 116, 20000, '0.0', 2, '2024-10-10 08:08:45', '2024-10-10 13:38:45'),
(309, 546, 116, 20000, '0.0', 2, '2024-10-10 08:09:18', '2024-10-10 13:39:18'),
(310, 482, 118, 15000, '0.0', 2, '2024-10-10 08:10:17', '2024-10-10 13:40:17'),
(311, 482, 118, 25000, '0.0', 2, '2024-10-10 08:10:22', '2024-10-10 13:40:22'),
(312, 678, 118, 20000, '0.0', 2, '2024-10-10 08:10:52', '2024-10-10 13:40:52'),
(313, 678, 118, 10500, '0.0', 2, '2024-10-10 08:10:57', '2024-10-10 13:40:57'),
(314, 491, 118, 20000, '0.0', 2, '2024-10-10 08:11:32', '2024-10-10 13:41:32'),
(315, 491, 118, 25000, '0.0', 2, '2024-10-10 08:11:38', '2024-10-10 13:41:38'),
(316, 492, 118, 5000, '0.0', 2, '2024-10-10 08:12:10', '2024-10-10 13:42:10'),
(317, 492, 118, 16500, '0.0', 2, '2024-10-10 08:12:17', '2024-10-10 13:42:17'),
(318, 492, 118, 16500, '0.0', 2, '2024-10-10 08:12:22', '2024-10-10 13:42:22'),
(319, 495, 118, 20000, '0.0', 2, '2024-10-10 08:12:53', '2024-10-10 13:42:53'),
(320, 495, 118, 12000, '0.0', 2, '2024-10-10 08:12:58', '2024-10-10 13:42:58'),
(321, 497, 118, 20000, '0.0', 2, '2024-10-10 08:13:22', '2024-10-10 13:43:22'),
(322, 497, 118, 35500, '0.0', 2, '2024-10-10 08:13:28', '2024-10-10 13:43:28'),
(323, 500, 118, 10000, '0.0', 2, '2024-10-10 08:13:54', '2024-10-10 13:43:54'),
(324, 500, 118, 17500, '0.0', 2, '2024-10-10 08:13:59', '2024-10-10 13:43:59'),
(325, 500, 118, 10000, '0.0', 2, '2024-10-10 08:14:07', '2024-10-10 13:44:07'),
(326, 501, 118, 10000, '0.0', 2, '2024-10-10 08:14:37', '2024-10-10 13:44:37'),
(327, 501, 118, 15000, '0.0', 2, '2024-10-10 08:14:43', '2024-10-10 13:44:43'),
(328, 501, 118, 17000, '0.0', 2, '2024-10-10 08:14:49', '2024-10-10 13:44:49'),
(329, 509, 118, 20000, '0.0', 2, '2024-10-10 08:15:29', '2024-10-10 13:45:29'),
(330, 509, 118, 20000, '0.0', 2, '2024-10-10 08:15:36', '2024-10-10 13:45:36'),
(331, 509, 118, 15500, '0.0', 2, '2024-10-10 08:17:18', '2024-10-10 13:47:18'),
(332, 503, 118, 20000, '0.0', 2, '2024-10-10 08:18:46', '2024-10-10 13:48:46'),
(333, 503, 118, 20000, '0.0', 2, '2024-10-10 08:18:51', '2024-10-10 13:48:51'),
(334, 505, 118, 20000, '0.0', 2, '2024-10-10 08:23:04', '2024-10-10 13:53:04'),
(335, 505, 118, 19500, '0.0', 2, '2024-10-10 08:23:13', '2024-10-10 13:53:13'),
(336, 507, 118, 10000, '0.0', 2, '2024-10-10 08:24:02', '2024-10-10 13:54:02'),
(337, 511, 118, 5000, '0.0', 2, '2024-10-10 08:24:47', '2024-10-10 13:54:47'),
(338, 512, 118, 20000, '0.0', 2, '2024-10-10 08:25:21', '2024-10-10 13:55:21'),
(339, 514, 118, 15000, '0.0', 2, '2024-10-10 08:26:33', '2024-10-10 13:56:33'),
(340, 516, 118, 20000, '0.0', 2, '2024-10-10 08:27:12', '2024-10-10 13:57:12'),
(341, 516, 118, 13000, '0.0', 2, '2024-10-10 08:27:19', '2024-10-10 13:57:19'),
(342, 516, 118, 13000, '0.0', 2, '2024-10-10 08:27:24', '2024-10-10 13:57:24'),
(343, 519, 118, 20000, '0.0', 2, '2024-10-10 08:28:49', '2024-10-10 13:58:49'),
(344, 519, 118, 33500, '0.0', 2, '2024-10-10 08:28:52', '2024-10-10 13:58:52'),
(345, 520, 118, 20000, '0.0', 2, '2024-10-10 08:29:50', '2024-10-10 13:59:50'),
(346, 520, 118, 17500, '0.0', 2, '2024-10-10 08:29:58', '2024-10-10 13:59:58'),
(347, 521, 118, 20000, '0.0', 2, '2024-10-10 08:30:39', '2024-10-10 14:00:39'),
(348, 521, 118, 13000, '0.0', 2, '2024-10-10 08:30:46', '2024-10-10 14:00:46'),
(349, 521, 118, 13000, '0.0', 2, '2024-10-10 08:30:52', '2024-10-10 14:00:52'),
(350, 522, 118, 20000, '0.0', 2, '2024-10-10 08:31:45', '2024-10-10 14:01:45'),
(351, 522, 118, 18000, '0.0', 2, '2024-10-10 08:31:51', '2024-10-10 14:01:51'),
(352, 680, 118, 20000, '0.0', 2, '2024-10-10 08:32:48', '2024-10-10 14:02:48'),
(353, 680, 118, 19500, '0.0', 2, '2024-10-10 08:32:57', '2024-10-10 14:02:57'),
(354, 526, 118, 20000, '0.0', 2, '2024-10-10 08:37:16', '2024-10-10 14:07:16'),
(355, 526, 118, 13000, '0.0', 2, '2024-10-10 08:37:21', '2024-10-10 14:07:21'),
(356, 526, 118, 13000, '0.0', 2, '2024-10-10 08:37:26', '2024-10-10 14:07:26'),
(357, 527, 118, 20000, '0.0', 2, '2024-10-10 08:38:03', '2024-10-10 14:08:03'),
(358, 527, 118, 15000, '0.0', 2, '2024-10-10 08:38:11', '2024-10-10 14:08:11'),
(359, 547, 118, 20000, '0.0', 2, '2024-10-10 08:38:48', '2024-10-10 14:08:48'),
(360, 547, 118, 20000, '0.0', 2, '2024-10-10 08:38:54', '2024-10-10 14:08:54'),
(361, 529, 118, 10000, '0.0', 2, '2024-10-10 08:39:46', '2024-10-10 14:09:46'),
(362, 530, 118, 20000, '0.0', 2, '2024-10-10 08:40:34', '2024-10-10 14:10:34'),
(363, 530, 118, 11500, '0.0', 2, '2024-10-10 08:40:41', '2024-10-10 14:10:41'),
(364, 530, 118, 11500, '0.0', 2, '2024-10-10 08:40:47', '2024-10-10 14:10:47'),
(365, 531, 118, 15000, '0.0', 2, '2024-10-10 08:41:46', '2024-10-10 14:11:46'),
(366, 531, 118, 10500, '0.0', 2, '2024-10-10 08:41:54', '2024-10-10 14:11:54'),
(367, 531, 118, 10500, '0.0', 2, '2024-10-10 08:42:01', '2024-10-10 14:12:01'),
(368, 533, 118, 6000, '0.0', 2, '2024-10-10 08:43:10', '2024-10-10 14:13:10'),
(369, 536, 118, 15000, '0.0', 2, '2024-10-10 08:43:58', '2024-10-10 14:13:58'),
(370, 536, 118, 14000, '0.0', 2, '2024-10-10 08:44:04', '2024-10-10 14:14:04'),
(371, 536, 118, 14000, '0.0', 2, '2024-10-10 08:44:10', '2024-10-10 14:14:10'),
(372, 538, 118, 17000, '0.0', 2, '2024-10-10 08:45:12', '2024-10-10 14:15:12'),
(373, 538, 118, 17000, '0.0', 2, '2024-10-10 08:45:18', '2024-10-10 14:15:18'),
(374, 539, 118, 20000, '0.0', 2, '2024-10-10 08:45:58', '2024-10-10 14:15:58'),
(375, 539, 118, 20000, '0.0', 2, '2024-10-10 08:46:05', '2024-10-10 14:16:05'),
(376, 541, 118, 20000, '0.0', 2, '2024-10-10 08:46:46', '2024-10-10 14:16:46'),
(377, 544, 118, 10000, '0.0', 2, '2024-10-10 08:47:23', '2024-10-10 14:17:23'),
(378, 544, 118, 10000, '0.0', 2, '2024-10-10 08:47:30', '2024-10-10 14:17:30'),
(379, 535, 118, 30000, '0.0', 2, '2024-10-10 08:48:09', '2024-10-10 14:18:09'),
(380, 535, 118, 20000, '0.0', 2, '2024-10-10 08:48:21', '2024-10-10 14:18:21'),
(381, 664, 118, 20000, '0.0', 2, '2024-10-10 08:49:18', '2024-10-10 14:19:18'),
(382, 664, 118, 19500, '0.0', 2, '2024-10-10 08:49:25', '2024-10-10 14:19:25'),
(383, 665, 118, 15000, '0.0', 2, '2024-10-10 08:50:06', '2024-10-10 14:20:06'),
(384, 485, 116, 10000, '0.0', 2, '2024-10-10 09:07:26', '2024-10-10 14:37:26'),
(385, 485, 116, 13500, '0.0', 2, '2024-10-10 09:07:34', '2024-10-10 14:37:34'),
(386, 502, 116, 29500, '0.0', 2, '2024-10-10 09:09:40', '2024-10-10 14:39:40'),
(387, 502, 116, 14500, '0.0', 2, '2024-10-10 09:09:46', '2024-10-10 14:39:46'),
(388, 548, 119, 15000, '0.0', 2, '2024-10-14 06:32:15', '2024-10-14 12:02:15'),
(389, 548, 119, 25000, '0.0', 2, '2024-10-14 06:32:21', '2024-10-14 12:02:21'),
(390, 553, 119, 15000, '0.0', 2, '2024-10-14 06:37:04', '2024-10-14 12:07:04');

-- --------------------------------------------------------

--
-- Table structure for table `t_gallery`
--

CREATE TABLE `t_gallery` (
  `image_id` int(11) NOT NULL,
  `album_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `is_image` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_gallery`
--

INSERT INTO `t_gallery` (`image_id`, `album_id`, `title`, `url`, `display_order`, `is_image`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`, `Branch_id`) VALUES
(11, 3, '', '', NULL, 1, 1, 1, '2024-10-15 12:18:51', 1, '2024-10-15 12:18:51', NULL),
(12, 3, '', '', NULL, 1, 1, 1, '2024-10-15 12:18:52', 1, '2024-10-15 12:18:52', NULL),
(13, 3, '', '', NULL, 1, 1, 1, '2024-10-15 12:18:53', 1, '2024-10-15 12:18:53', NULL),
(14, 3, '', '', NULL, 1, 1, 1, '2024-10-15 12:18:54', 1, '2024-10-15 12:18:54', NULL),
(15, 3, '', '', NULL, 1, 1, 1, '2024-10-15 12:18:55', 1, '2024-10-15 12:18:55', NULL),
(16, 3, '', '', NULL, 1, 1, 1, '2024-10-15 12:23:34', 1, '2024-10-15 12:18:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_grade`
--

CREATE TABLE `t_grade` (
  `grade_id` int(11) NOT NULL,
  `grade_name` varchar(20) DEFAULT NULL,
  `scale` int(11) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_grade`
--

INSERT INTO `t_grade` (`grade_id`, `grade_name`, `scale`, `color`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 'A+', 50, '#228B22', 1, NULL, '2018-06-09 10:10:31', NULL, '0000-00-00 00:00:00'),
(2, 'A', 40, '#FFC300  ', 1, NULL, '2018-06-16 08:02:32', NULL, '0000-00-00 00:00:00'),
(3, 'B+', 30, '#FF5733', 1, NULL, '2018-06-16 08:02:59', NULL, '0000-00-00 00:00:00'),
(4, 'B', 20, '#33FFF6', 1, NULL, '2018-06-16 08:03:19', NULL, '0000-00-00 00:00:00'),
(5, 'C', 10, '#bb7de2', 1, NULL, '2018-09-05 10:35:45', NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_leave`
--

CREATE TABLE `t_leave` (
  `mobile` varchar(20) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `createDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fromDate` varchar(30) DEFAULT NULL,
  `toDate` varchar(30) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `reason` varchar(250) DEFAULT NULL,
  `class` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_levels`
--

CREATE TABLE `t_levels` (
  `level_id` int(11) NOT NULL,
  `level_name` varchar(100) DEFAULT NULL,
  `color` varchar(100) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_levels`
--

INSERT INTO `t_levels` (`level_id`, `level_name`, `color`, `display_order`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 'Beginner', NULL, 1, 1, NULL, '2018-06-05 04:32:39', NULL, '0000-00-00 00:00:00'),
(2, 'Learner', NULL, 2, 1, NULL, '2018-06-05 04:32:55', NULL, '0000-00-00 00:00:00'),
(3, 'Practitioner', NULL, 3, 1, NULL, '2018-06-05 04:33:05', NULL, '0000-00-00 00:00:00'),
(4, 'Scholar', NULL, 4, 1, NULL, '2018-06-05 04:33:27', NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_permission_assignment`
--

CREATE TABLE `t_permission_assignment` (
  `admin_pages_id` int(11) DEFAULT NULL,
  `can_create` tinyint(4) DEFAULT '0',
  `can_read` tinyint(4) DEFAULT '0',
  `can_update` tinyint(4) DEFAULT '0',
  `can_delete` tinyint(4) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` varchar(50) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `can_create_update` tinyint(4) DEFAULT NULL,
  `can_view` tinyint(4) DEFAULT NULL,
  `permission_assignment_id` int(11) NOT NULL,
  `role_id` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_permission_assignment`
--

INSERT INTO `t_permission_assignment` (`admin_pages_id`, `can_create`, `can_read`, `can_update`, `can_delete`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`, `can_create_update`, `can_view`, `permission_assignment_id`, `role_id`) VALUES
(1, 1, 1, 1, 1, '2024-07-08 11:59:46', NULL, '2024-07-08 11:59:46', NULL, 1, 1, 1, 2, 1),
(2, 1, 1, 1, 1, '2024-07-10 10:53:27', NULL, '2024-07-10 10:53:27', NULL, 1, 1, 1, 3, 1),
(3, 1, 1, 1, 1, '2024-07-10 10:54:31', NULL, '2024-07-10 10:54:31', NULL, 1, 1, 1, 4, 1),
(4, 1, 1, 1, 1, '2024-07-10 10:56:40', NULL, '2024-07-10 10:56:40', NULL, 1, 1, 1, 5, 1),
(5, 1, 1, 1, 1, '2024-07-10 10:57:01', NULL, '2024-07-10 10:57:01', NULL, 1, 1, 1, 6, 1),
(6, 1, 1, 1, 1, '2024-07-10 10:57:23', NULL, '2024-07-10 10:57:23', NULL, 1, 1, 1, 7, 1),
(7, 1, 1, 1, 1, '2024-07-10 10:57:51', NULL, '2024-07-10 10:57:51', NULL, 1, 1, 1, 8, 1),
(8, 1, 1, 1, 1, '2024-07-10 10:58:12', NULL, '2024-07-10 10:58:12', NULL, 1, 1, 1, 9, 1),
(9, 1, 1, 1, 1, '2024-07-10 10:58:20', NULL, '2024-07-10 10:58:20', NULL, 1, 1, 1, 10, 1),
(10, 1, 1, 1, 1, '2024-07-10 10:58:52', NULL, '2024-07-10 10:58:52', NULL, 1, 1, 1, 11, 1),
(11, 1, 1, 1, 1, '2024-07-10 10:59:00', NULL, '2024-07-10 10:59:00', NULL, 1, 1, 1, 12, 1),
(12, 1, 1, 1, 1, '2024-07-10 10:59:05', NULL, '2024-07-10 10:59:05', NULL, 1, 1, 1, 13, 1),
(13, 1, 1, 1, 1, '2024-07-10 12:23:36', NULL, '2024-07-10 12:23:36', NULL, 1, 1, 1, 14, 1),
(14, 1, 1, 1, 1, '2024-07-10 12:23:48', NULL, '2024-07-10 12:23:48', NULL, 1, 1, 1, 15, 1),
(15, 1, 1, 1, 1, '2024-07-10 12:24:28', NULL, '2024-07-10 12:24:28', NULL, 1, 1, 1, 16, 1),
(16, 1, 1, 1, 1, '2024-07-10 12:24:53', NULL, '2024-07-10 12:24:53', NULL, 1, 1, 1, 17, 1),
(17, 1, 1, 1, 1, '2024-07-10 12:25:14', NULL, '2024-07-10 12:25:14', NULL, 1, 1, 1, 18, 1),
(18, 1, 1, 1, 1, '2024-07-10 12:25:56', NULL, '2024-07-10 12:25:56', NULL, 1, 1, 1, 19, 1),
(19, 1, 1, 1, 1, '2024-07-10 12:28:29', NULL, '2024-07-10 12:28:29', NULL, 1, 1, 1, 20, 1),
(20, 1, 1, 1, 1, '2024-07-10 12:30:51', NULL, '2024-07-10 12:30:51', NULL, 1, 1, 1, 21, 1),
(21, 1, 1, 1, 1, '2024-07-10 12:32:40', NULL, '2024-07-10 12:32:40', NULL, 1, 1, 1, 22, 1),
(22, 1, 1, 1, 1, '2024-07-10 12:35:57', NULL, '2024-07-10 12:35:57', NULL, 1, 1, 1, 23, 1),
(23, 1, 1, 1, 1, '2024-07-10 12:37:17', NULL, '2024-07-10 12:37:17', NULL, 1, 1, 1, 24, 1),
(24, 1, 1, 1, 1, '2024-07-11 09:02:18', NULL, '2024-07-11 09:02:18', NULL, 1, 1, 1, 25, 1),
(25, 1, 1, 1, 1, '2024-07-11 09:46:04', NULL, '2024-07-11 09:46:04', NULL, 1, 1, 1, 26, 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_roles`
--

CREATE TABLE `t_roles` (
  `Id` int(11) NOT NULL,
  `RoleName` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_roles`
--

INSERT INTO `t_roles` (`Id`, `RoleName`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'admin', '2024-07-08 09:24:11', NULL, '2024-07-08 09:24:11', NULL, 1),
(2, 'Principal', '2024-07-11 07:30:06', 5, '2024-07-11 09:04:58', NULL, 1),
(3, 'Teacher', '2024-07-11 07:30:06', 5, '2024-07-11 07:30:06', 5, 1),
(4, 'Manager', '2024-07-11 07:30:06', 5, '2024-07-11 07:30:06', 5, 1),
(5, 'Accountant', '2024-08-08 08:23:57', 5, '2024-08-08 09:59:23', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_scrool`
--

CREATE TABLE `t_scrool` (
  `scrool_id` int(11) NOT NULL,
  `scroll_name` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_scrool`
--

INSERT INTO `t_scrool` (`scrool_id`, `scroll_name`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 'Happy Diwali! Go Green!', 1, 0, '2018-08-23 11:10:12', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_sms_templates`
--

CREATE TABLE `t_sms_templates` (
  `sms_id` int(11) NOT NULL,
  `sms_title` varchar(200) DEFAULT NULL,
  `template` varchar(1000) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_sms_templates`
--

INSERT INTO `t_sms_templates` (`sms_id`, `sms_title`, `template`, `is_active`) VALUES
(1, '1', 'Dear Parent,School Re*opening * Parents Orientation Program ON *, TIME *, Cubs*The Pre School, Vijayapur.', 1),
(2, '2', 'Dear Parent, email your concerns AND suggestions related TO your ward AND school TO school* email id*admin@cubspreschool.in, Cubs*The Pre School, Vijayapur.', 1),
(3, '3', 'Dear Parent, school opens FOR your ward ON * Kindly visit school AND receive the School Kit. *Cubs*The Pre School, Vijayapur.', 1),
(4, '4', '.Dear Parent, school opens FOR your ward ON * Kindly visit school AND receive the School Kit. -Cubs-The Pre School, Vijayapur.', 1),
(5, '5', 'Dear Parent, school opens FOR your ward ON *. Kindly visit school AND receive the School Kit. -Cubs-The Pre School, Vijayapur.', 1),
(6, '6', 'Dear Parent, kindly collect the School Kit ON OR BEFORE * BY paying the initial school fees. -Cubs-The Pre School, Vijayapur.', 1),
(7, '7', 'Dear Parent, you are requested to visit our Facebook Page or Check Our School Videos on You Tube to know more about our school. Cubs-The Pre School, Vijayapur.', 1),
(8, '8', 'Dear Parent, you are requested TO submit the admission form along WITH the initial fees BEFORE *Cubs*The Pre School, Vijayapur.', 1),
(9, '9', 'Dear Parent, updates related to your ward and school will be sent to you via SMS. -Vidya1 School, Kurla, Mumbai.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_songs`
--

CREATE TABLE `t_songs` (
  `song_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `video` varchar(1000) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_special_notes`
--

CREATE TABLE `t_special_notes` (
  `note_id` int(11) NOT NULL,
  `batch_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `standardid` int(11) DEFAULT NULL,
  `description` longtext,
  `Image` varchar(100) DEFAULT NULL,
  `Date` timestamp NULL DEFAULT NULL,
  `information` varchar(100) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_special_notes`
--

INSERT INTO `t_special_notes` (`note_id`, `batch_id`, `title`, `standardid`, `description`, `Image`, `Date`, `information`, `isactive`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1148, 115, 'sci homework', 1, 'hdfjjjgfkuuggkiuggugu', NULL, '2024-10-06 18:30:00', '', 1, 27, '2024-10-04 08:39:16', 27, '2024-10-04 08:39:16');

-- --------------------------------------------------------

--
-- Table structure for table `t_standard`
--

CREATE TABLE `t_standard` (
  `standard_id` int(11) NOT NULL,
  `standard_name` varchar(100) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_standard`
--

INSERT INTO `t_standard` (`standard_id`, `standard_name`, `display_order`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, '1st', 1, 1, NULL, '2024-10-01 15:17:03', NULL, '0000-00-00 00:00:00'),
(2, '2nd', 2, 1, NULL, '2024-10-01 15:14:03', NULL, '0000-00-00 00:00:00'),
(3, '3rd', 3, 1, NULL, '2024-10-01 15:14:15', NULL, '0000-00-00 00:00:00'),
(4, '4th', 4, 1, NULL, '2024-10-01 15:14:28', NULL, '0000-00-00 00:00:00'),
(5, '5th', 1, 1, 1, '2024-10-01 15:16:28', 1, '0000-00-00 00:00:00'),
(6, '6th', 1, 1, 1, '2024-10-01 15:16:28', 1, '0000-00-00 00:00:00'),
(7, '7th', 1, 1, 1, '2024-10-01 15:16:28', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_student`
--

CREATE TABLE `t_student` (
  `student_id` int(11) NOT NULL,
  `reg_no` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `father_name` varchar(150) NOT NULL,
  `mother_name` varchar(150) NOT NULL,
  `image` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `is_registered` tinyint(1) NOT NULL,
  `dob` datetime NOT NULL,
  `mother_tongue` varchar(100) NOT NULL,
  `is_male` tinyint(1) NOT NULL,
  `nationality` varchar(100) NOT NULL,
  `blood_group` varchar(100) NOT NULL,
  `date_of_joining` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_of_leaving` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `address` text NOT NULL,
  `landmark` text NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `pincode` varchar(100) NOT NULL,
  `stu_email_id` varchar(100) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `alt_mobile_no` varchar(20) NOT NULL,
  `remark` text NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) NOT NULL,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `branch_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_student`
--

INSERT INTO `t_student` (`student_id`, `reg_no`, `first_name`, `last_name`, `father_name`, `mother_name`, `image`, `password`, `is_registered`, `dob`, `mother_tongue`, `is_male`, `nationality`, `blood_group`, `date_of_joining`, `date_of_leaving`, `address`, `landmark`, `city`, `state`, `country`, `pincode`, `stu_email_id`, `email_id`, `mobile_no`, `alt_mobile_no`, `remark`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`, `branch_id`) VALUES
(426, 'CUBSPRIM1-0214', 'Aapti', 'Mundewadi', 'Sunil M', 'Savitri S', '', '', 1, '2018-09-09 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9481080864', '9482690864', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:03', 1),
(427, 'CUBSPRIM1-0215', 'Aarna', 'Karpurmath', 'Shambulingayya', 'Rashmi', '', '', 1, '2018-08-10 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9036648793', '7829338824', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:03', 1),
(428, 'CUBSPRIM1-0267', 'Aarohi', 'Naik', 'Santosh', 'Anita', '', '', 1, '2018-02-11 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9900229810', '8073478941', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:03', 1),
(429, 'CUBSPRIM1-0216', 'Aarush', 'Patil', 'Mantesh', 'Sneha', '', '', 1, '2018-08-02 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '7411475812', '8310975714', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:03', 1),
(430, 'CUBSPRIM1-0217', 'Abinava', 'Mamadapur', 'Gurappa Shreeshil', 'Rajeshwari', '', '', 1, '2018-08-03 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9900655315', '9900635775', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:03', 1),
(431, 'CUBSPRIM1-0218', 'Adhya R', 'Jambagi', 'Ravindra', 'Deepa', '', '', 1, '2018-02-01 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9880079395', '9008734774', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:03', 1),
(432, 'CUBSPRIM1-0219', 'Advik', 'Tulasigeri', 'Naveen', 'Akshata', '', '', 1, '2019-10-10 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9916823627', '9739999528', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:03', 1),
(433, 'CUBSPRIM1-0270', 'Advik', 'Koshti', 'Sachin A', 'Jyoti', '', '', 1, '2018-02-08 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8618778532', '8095310348', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:03', 1),
(434, 'CUBSPRIM1-0220', 'Aagam', 'Jain', 'Yashpal', 'Suman', '', '', 1, '2020-03-09 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9036043476', '8660495606', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:03', 1),
(435, 'CUBSPRIM1-0221', 'Akarsh', 'Basaraddi', 'Dr.Manjunath', 'Rashmi', '', '', 1, '2020-01-05 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '7019935918', '9217599533', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:03', 1),
(436, 'CUBSPRIM1-0222', 'Ansh', 'Jain', 'Dixitkumar D', 'Renuka D', '', '', 1, '2020-03-06 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9886916121', '9986893755', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:03', 1),
(437, 'CUBSPRIM1-0223', 'Anushka', 'Pawar', 'Anand', 'Deepa', '', '', 1, '2019-03-08 00:00:00', 'Telagu', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '6363415011', '', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:03', 1),
(438, 'CUBSPRIM1-0224', 'Anvi', 'Kolekar', 'Amit', 'Shraddha', '', '', 1, '2017-11-11 00:00:00', 'Marathi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9482456353', '9901100424', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:03', 1),
(439, 'CUBSPRIM1-0225', 'Anvit', 'Biradar', 'Aravind', 'Rohini', '', '', 1, '2018-06-01 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9611223481', '8431380549', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:03', 1),
(440, 'CUBSPRIM1-0273', 'Anwita', 'Kulkarni', 'Ajay', 'Shruti', '', '', 1, '2020-01-02 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9036272941', '9731834689', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:03', 1),
(441, 'CUBSPRIM1-0226', 'Aradhya', 'Handi', 'Umesh', 'Laxmi', '', '', 1, '2017-06-10 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9900762529', '8660544866', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:03', 1),
(442, 'CUBSPRIM1-0227', 'Aradhya', 'Mamadapur', 'Shashidhar', 'Rekha', '', '', 1, '2019-02-01 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9986791699', '8088771901', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:03', 1),
(443, 'CUBSPRIM1-0228', 'Arfa Zainab', 'Dakhani', 'Zakriya', 'Jasmeen', '', '', 1, '2018-01-02 00:00:00', 'Urdu', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8884341601', '7899810585', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:03', 1),
(444, 'CUBSPRIM1-0274', 'Aryan', 'Kore', 'Ravikumar S', 'Shivanavva', '', '', 1, '2018-01-12 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9632058042', '9880206630', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:03', 1),
(445, 'CUBSPRIM1-0260', 'Avani', 'Nagaralli', 'Milind', 'Prema', '', '', 1, '2019-06-01 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9503034095', '9620520920', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:03', 1),
(446, 'CUBSPRIM1-0266', 'Bhoomi', 'Bhushetty', 'Mahantesh', 'Veena', '', '', 1, '2019-06-10 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9916259692', '9739061051', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:03', 1),
(447, 'CUBSPRIM1-0229', 'Bhuvi', 'Runwal', 'Abhaykumar', 'Archana', '', '', 1, '2018-07-04 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8904608373', '8618154892', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(448, 'CUBSPRIM1-0261', 'Chinmay', 'Hiremath', 'Vijay', 'Priya', '', '', 1, '2018-04-09 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '7676353803', '7090687509', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(449, 'CUBSPRIM1-0230', 'Darshan', 'Runwal', 'Narendra', 'Sonia', '', '', 1, '2018-11-05 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9113976745', '8884567869', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(450, 'CUBSPRIM1-0268', 'Eshan', 'Bagalkotkar', 'Nikhil', 'Apoorva A M', '', '', 1, '2018-07-11 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8660055173', '8310335804', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(451, 'CUBSPRIM1-0232', 'Eshwari', 'Nadagatti', 'Vijay', 'Sangeetha', '', '', 1, '2018-10-09 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8123110545', '', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(452, 'CUBSPRIM1-0263', 'Sayyid Ghiyasuddin', '', 'Sayyid Mazhar', 'Rubina Sayyid', '', '', 1, '2018-08-05 00:00:00', 'Urdu', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '7795003647', '7975327394', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(453, 'CUBSPRIM1-0233', 'Harsharaj Y', 'Kabade', 'Yamanappa B', 'Prema Y', '', '', 1, '2017-09-10 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9945339100', '8792114207', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(454, 'CUBSPRIM1-0234', 'Hasnain (Sayed Ahmed Quadri)', 'Burqaposh', 'Sayed Javed Peeran', '', '', '', 1, '2019-10-01 00:00:00', 'Urdu', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9632057861', '', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(455, 'CUBSPRIM1-0235', 'Irayya', 'Math', 'Shivanand', 'Dhannamma', '', '', 1, '2018-08-11 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8971265525', '7411715526', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(456, 'CUBSPRIM1-0308', 'Kunthunath', 'Patil', 'Bahubali', 'Amruta', '', '', 1, '0000-00-00 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8147519833', '8050704114', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(457, 'CUBSPRIM1-0237', 'Muneeb-Ur-Rehman', 'Moulvi', 'Munawar Aalam', 'Afreen', '', '', 1, '2018-02-09 00:00:00', 'Urdu', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9036776675', '6360022560', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(458, 'CUBSPRIM1-0238', 'Nijashri G', 'Patil', 'Girish N', 'Rajani', '', '', 1, '2020-05-06 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8792765975', '8618769678', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(459, 'CUBSPRIM1-0239', 'Nilesh', 'Choudhary', 'Ghanshyam', 'Sangeeta', '', '', 1, '2017-01-08 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8073592836', '6363202069', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(460, 'CUBSPRIM1-0240', 'Pranam', 'Porwal', 'Mahaveer Kumar', 'Deepika Mahaveer', '', '', 1, '2019-06-07 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8073191981', '9902491981', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(461, 'CUBSPRIM1-0241', 'Prisha', 'Bafna', 'Anand', 'Khushboo', '', '', 1, '2020-04-12 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9900404518', '9893884568', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(462, 'CUBSPRIM1-0242', 'Rushank R', 'Rajput', 'Randhirsigh', 'Priyanka', '', '', 1, '2018-02-04 00:00:00', 'Hindi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9886950077', '8095164467', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(463, 'CUBSPRIM1-0269', 'Samiksha', 'Lingadalli', 'Basavaraj R', 'Geeta B', '', '', 1, '2018-08-10 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8073234650', '9845491917', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(464, 'CUBSPRIM1-0244', 'Samruddhi', 'Tadalagi', 'Mahesh S', 'Pooja', '', '', 1, '2018-02-03 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9945818185', '8217228680', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(465, 'CUBSPRIM1-0264', 'Samruddi', 'Hosamani', '', '', '', '', 1, '2016-11-11 00:00:00', '', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(466, 'CUBSPRIM1-0245', 'Sanvi', 'kadi', 'Sunil', 'Shruti', '', '', 1, '2018-10-11 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9739708563', '7349759462', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(467, 'CUBSPRIM1-0246', 'Sarthak', 'Deshmukh', 'Mallikarjun', 'Veena', '', '', 1, '2020-05-01 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9008695484', '9113045067', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(468, 'CUBSPRIM1-0248', 'Shranghavi', 'Ganiyar', 'Ningaraj', '', '', '', 1, '2020-02-02 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8050471495', '', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(469, 'CUBSPRIM1-0249', 'Shreenivas', 'Paragond', 'Prabhuling', 'Sushma', '', '', 1, '2017-06-08 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9980099780', '9740503464', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(470, 'CUBSPRIM1-0250', 'Sudeeksha', 'Biradar', 'Siddharam', 'Mandakini', '', '', 1, '2019-08-04 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8050651544', '9380551733', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(471, 'CUBSPRIM1-0251', 'Swaransh', 'Kulahalli', 'Nataraj', 'Keerti N', '', '', 1, '2019-09-06 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9035900120', '9591043646', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(472, 'CUBSPRIM1-0252', 'Vanshika', 'Porwal', 'Mitesh', 'Shweta', '', '', 1, '2019-08-04 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9611489990', '9535166262', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(473, 'CUBSPRIM1-0253', 'Vedant', 'Bagali', 'Siddanagouda', 'Laxmi', '', '', 1, '2018-07-01 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9739884700', '9686692722', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(474, 'CUBSPRIM1-0254', 'Vedant', 'Hiremath', 'Siddaramayya', 'Rashmi', '', '', 1, '2019-08-02 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '7795752256', '6366605999', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(475, 'CUBSPRIM1-0255', 'Veronica', 'Narayankar', 'Avinash', 'Ranjita', '', '', 1, '2020-06-07 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9632803032', '8762959338', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(476, 'CUBSPRIM1-0262', 'Vian', 'Agarwal', 'Naveen', 'Radhika', '', '', 1, '2018-11-07 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9448751521', '9036751521', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(477, 'CUBSPRIM1-0256', 'Vidvat', 'Biradar', 'Mahesh', 'Kavya', '', '', 1, '2019-02-12 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9741611833', '8660486001', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(478, 'CUBSPRIM1-0257', 'Viraj', 'Upadhye', 'Sachin', 'Kajal', '', '', 1, '2017-11-07 00:00:00', 'Marathi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8792187797', '', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(479, 'CUBSPRIM1-0258', 'Yuvaan', 'Bhati', 'Sureshkumar', 'Sonal', '', '', 1, '2018-10-11 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9902037732', '8861884633', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(480, 'CUBSPRIM1-0259', 'Zikra', 'Pathan', 'Tanveerahmed', 'Noorjahan', '', '', 1, '2019-10-02 00:00:00', 'Urdu', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9845746670', '6363118804', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(481, 'CUBSPRIM1-0318', 'Aarav', 'Shendagi', 'Basavaraj', 'Bhagya', '', '', 1, '2018-05-09 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9901590348', '9901590348', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(482, 'CUBSPRIM1-0142', 'Aariz', 'Jamadar', 'Ammdsab', 'Ayesha Almas', '', '', 1, '2017-09-05 00:00:00', 'Hindi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9886484293', '6362033046', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(483, 'CUBSPRIM1-0111', 'Aarushi', 'Gidnavar', 'Kedar', 'Laxmi', '', '', 1, '2017-09-09 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9448678254', '7019309977', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(484, 'CUBSPRIM1-0097', 'Adithi', 'Patil', 'Raviraj', 'Shweta', '', '', 1, '2018-06-04 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9535251391', '998053777', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(485, 'CUBSPRIM2-0300', 'Advit', 'Pawar', 'Shrikant', 'Geeta', '', '', 1, '2018-05-05 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9481767975', '7411978575', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(486, 'CUBSPRIM1-0122', 'Anahi', 'Jain', 'Mehul', 'Sonali', '', '', 1, '2018-11-04 00:00:00', 'Hindi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9845312046', '7411911081', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(487, 'CUBSPRIM1-0145', 'Ankita', 'Wadekar', 'Anil', 'Tejasvi', '', '', 1, '2017-11-10 00:00:00', 'Marathi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9886686594', '9886686599', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(488, 'CUBSPRIM1-0106', 'Aanshi', 'Shah', 'Ankur Chandrashekhar', 'Akruti', '', '', 1, '2017-08-01 00:00:00', 'Gujarati', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9036515318', '8123197520', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(489, 'CUBSPRIM1-0098', 'Anvi', 'Porwal', 'Bhavesh', 'Arpita', '', '', 1, '2017-02-12 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '7259049333', '8951734800', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(490, 'CUBSPRIM-0096', 'Arush', 'Rupalkar', 'Manohar', 'Supriya', '', '', 1, '2017-02-03 00:00:00', 'Marathi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9036522122', '8999745141', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(491, 'CUBSPRIM1-0207', 'Arush', 'Kumbar', 'Suresh', 'Rajashri', '', '', 1, '2018-04-09 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8970352798', '9845058325', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(492, 'CUBSPRIM1-0120', 'Aarushi', 'Dharwadkar', 'Vishal', 'Rashmi', '', '', 1, '2017-08-04 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9916274755', '8095898288', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(493, 'CUBSPRIM2-0303', 'Atharv', 'Angadi', 'Santosh', 'Anita', '', '', 1, '2018-06-05 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9900784776', '9972696665', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(494, 'CUBSPRIM1-0099', 'Chehal', 'Gandhi', 'Praveen', 'Neelam', '', '', 1, '2018-11-05 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9513267999', '9113686261', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(495, 'CUBSPRIM1-0123', 'chayya', 'Nagpal', 'Vicky', 'Preet', '', '', 1, '2017-05-12 00:00:00', 'Hindi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9844505834', '7795069380', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(496, 'CUBSPRIM1-0141', 'Chinmay', 'Gujamagadi', 'Annadaneshwar', 'Rashmi', '', '', 1, '2017-03-02 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9743019408', '9632509493', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(497, 'CUBSPRIM1-0138', 'Dhrumi', 'Bhutada', 'Navneet', 'Shruti', '', '', 1, '2018-11-05 00:00:00', 'Hindu Maheswari', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9611722727', '9740261115', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(498, 'CUBSPRIM1-0127', 'Dhruva', 'Biradar', 'Goudappagouda', 'Nandini', '', '', 1, '2020-01-01 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9480032439', '8296207726', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(499, 'CUBSPRIM1-0140', 'Divyansh', 'Jain', 'Ashwin', 'Komal', '', '', 1, '2018-10-05 00:00:00', 'Hindi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9844031332', '7013123435', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(500, 'CUBSPRIM1-0156', 'Fahad', 'Jahageerdar', 'Hussensab', 'Ayisha', '', '', 1, '2018-10-02 00:00:00', 'Urdu', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9259911459', '6364272606', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(501, 'CUBSPRIM1-0157', 'Gaurav', 'Kalburgi', 'Vinayak', 'Sheetal', '', '', 1, '2018-12-03 00:00:00', 'Hindu Kshatriya', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8971289628', '8971795042', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(502, 'CUBSPRIM1-0115', 'Gaurav', 'Doddakundi', 'Viju', 'Usharani', '', '', 1, '2018-04-11 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9980689555', '8792228455', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(503, 'CUBSPRIM1-0116', 'Harshada', 'Hosur', 'Manjunath', 'Swati', '', '', 1, '2017-01-05 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '7829990047', '6361638406', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(504, 'CUBSPRIM1-0130', 'Humaira', 'Kokani', 'MD.Suhail', 'Misba', '', '', 1, '2018-03-06 00:00:00', 'Urdu', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '6363503946', '8123144710', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(505, 'CUBSPRIM1-0195', 'Ibrahim', 'Googi', 'Mehaboob', 'Yasmin', '', '', 1, '2017-05-05 00:00:00', 'Urdu', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9916466281', '7411373621', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(506, 'CUBSPRIM1-0108', 'Jainav', 'Jain', 'Shrenikkumar', 'Rutwa Jain', '', '', 1, '2018-11-03 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9880512373', '9353272373', '', 1, 1, '2024-10-01 11:35:59', 1, '2024-10-01 15:00:04', 1),
(507, 'CUBSPRIM1-0206', 'Janvi', 'Walikar', 'Vidyadhar', 'Manjula', '', '', 1, '2018-09-05 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9886926666', '9739125212', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(508, 'CUBSPRIM1-0151', 'Jayansh(Devansh)', 'Jain', 'Sandeep', 'Veena', '', '', 1, '2017-01-02 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9341611289', '9964911289', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(509, 'CUBSPRIM1-0100', 'Jiyana', 'Jain', 'Kamlesh', 'Upasana', '', '', 1, '2018-12-11 00:00:00', 'marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9741111964', '9741118118', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(510, 'CUBSPRIM1-0104', 'Kamala', 'Gugguri', 'Kumar', 'Sangeeta', '', '', 1, '2017-06-03 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9686108552', '8660090739', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(511, 'CUBSPRIM1-0148', 'Kanish', 'Bajantri', 'Kartik', 'Sruti', '', '', 1, '2016-06-11 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9900822386', '9900822386', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(512, 'CUBSPRIM1-0114', 'Krutika', 'Bellad', 'Shubhash B', 'Ramadevi', '', '', 1, '2017-10-01 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '7813036777', '7026250498', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(513, 'CUBSPRIM1-0129', 'Kumud', 'Jain', 'Akshit', 'Mamta', '', '', 1, '2018-10-07 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9886122145', '9900360145', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(514, 'CUBSPRIM1-0125', 'Manvik', 'Hiremath', 'Siddharamayya', 'Reshma', '', '', 1, '2018-06-11 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '7795752256', '6366605999', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(515, 'CUBSPRIM1-0143', 'Md Ayan', 'Harapanahalli', 'Md Farooq', 'Shahina Begum', '', '', 1, '2018-02-07 00:00:00', 'Urdu', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '7019581811', '9449376816', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(516, 'CUBSPRIM1-0105', 'Nayan', 'Savadatti', 'Vijaymahantesh', 'Shweta', '', '', 1, '2018-07-02 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9008074524', '9902116162', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(517, 'CUBSPRIM1-0155', 'Nitin', 'Pattanad', 'Mahesh', 'Shruti', '', '', 1, '2017-07-07 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9620414525', '', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(518, 'CUBSPRIM1-0146', 'Nivi', 'Jain', '', '', '', '', 1, '2018-07-03 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(519, 'CUBSPRIM1-0118', 'Pahel', 'Bafna', 'Neeleshkumar', 'Hemlata', '', '', 1, '2018-12-08 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9902367750', '7022272211', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(520, 'CUBSPRIM1-0147', 'Palvit', 'Porwal', 'Dhyan Vimal', 'Nikki', '', '', 1, '2017-06-05 00:00:00', 'Marvadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9242777077', '9148483949', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(521, 'CUBSPRIM1-0103', 'Param', 'Shah', 'Darshan', 'Khushbu', '', '', 1, '2018-04-10 00:00:00', 'Kutchi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9886929888', '7019369179', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(522, 'CUBSPRIM1-0153', 'Parineethi', 'Naik', 'Mohanrao', 'Sunita', '', '', 1, '2018-02-12 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '7899879050', '7019547464', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(523, 'CUBSPRIM2-0277', 'Rida Hayat', 'Risaldar', 'Asif Ali', 'Umera Begam', '', '', 1, '2017-09-10 00:00:00', 'Urdu', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9900717578', '9036717578', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(524, 'CUBSPRIM1-0137', 'Ridhan', 'Porwal', 'Akshay', 'Deepika', '', '', 1, '2018-05-11 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9901606900', '9886476043', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(525, 'CUBSPRIM1-0132', 'Rishi', 'Pattar', 'Vinayak', 'Vani', '', '', 1, '2018-02-02 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9738471800', '9591112882', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(526, 'CUBSPRIM1-0107', 'Rishik', 'Jabannavar', 'Prasanna', 'Kalavati', '', '', 1, '2016-06-09 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9008097075', '8618319005', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(527, 'CUBSPRIM1-0131', 'Rishika', 'Pattar', 'Vinayak', 'Vani', '', '', 1, '2018-02-02 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9738471800', '9591112882', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(528, 'CUBSPRIM1-0119', 'Saanvi', 'Bafna', 'Chetankumar', 'Phoolwanti', '', '', 1, '2019-07-10 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9880888919', '8722122289', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(529, 'CUBSPRIM1-0136', 'Sachit', 'Rathnakar', '', '', '', '', 1, '2017-07-10 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(530, 'CUBSPRIM1-0109', 'Saisha', 'Bafna', 'Nikhil', 'Sanjana', '', '', 1, '2018-09-02 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8861205553', '9403813338', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(531, 'CUBSPRIM2-0279', 'Sakshi D', 'Math', 'Danayya', 'Sneha D', '', '', 1, '2017-10-08 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8310222627', '9606656686', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(532, 'CUBSPRIM1-0112', 'Sambhav', 'Jain', 'Kirthikumar', 'Pinky', '', '', 1, '2016-09-11 00:00:00', 'Hindi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9448916330', '8660574357', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(533, 'CUBSPRIM1-0150', 'Sannidhi', 'Borutagi', 'Ninganna', 'Priyanka', '', '', 1, '2018-01-02 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '7411448133', '6363259982', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(534, 'CUBSPRIM1-0144', 'Sarthak', 'Parmar', 'KamleshKumar Singh', 'Swati', '', '', 1, '2018-02-09 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9731646216', '7903068944', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(535, 'CUBSPRIM2-0301', 'Shreedhar', 'Kolase', 'Deepak', 'Renuka', '', '', 1, '2018-03-07 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9742164687', '', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(536, 'CUBSPRIM3-0213', 'Siddhant', 'Kabade', 'Praveen', 'Bharati', '', '', 1, '2018-10-06 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9845230748', '9986700080', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(537, 'CUBSPRIM1-0201', 'Siddharth', 'Bidari', 'Rajashekar', 'Bhagyashree', '', '', 1, '2019-07-01 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9243202254', '9148894701', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(538, 'CUBSPRIM2-0310', 'Siddharth', 'Angadi', 'Adivesh', 'Vanaja', '', '', 1, '2017-04-06 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9900488507', '', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(539, 'CUBSPRIM1-0101', 'Swara', 'Shah', 'Niraj', 'Sphurthi', '', '', 1, '2017-03-07 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8408851002', '', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(540, 'CUBSPRIM1-0139', 'Swaraj', 'Upadhyay', 'Shivaji', 'Sakshi', '', '', 1, '2019-04-02 00:00:00', 'Marathi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9980737012', '6360451264', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(541, 'CUBSPRIM2-0286', 'Tanay', 'Jain', 'Jitendra', 'Sweety', '', '', 1, '2019-01-07 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '7337675201', '8618535005', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(542, 'CUBSPRIM1-0133', 'Tanvi', 'Bhajantri', 'Deepak', 'Sunita', '', '', 1, '2016-11-12 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9901753181', '7676682633', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(543, 'CUBSPRIM1-0128', 'Vaibhav', 'Pujari', 'Shivakumar', 'Borawwa', '', '', 1, '2016-03-11 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8147922508', '6363587033', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(544, 'CUBSPRIM1-0113', 'Vedant', 'Pattanashetti', 'Kalmesh', 'Ashwini', '', '', 1, '2018-05-10 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8105981026', '8867221850', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(545, 'CUBSPRIM1-0154', 'veronica', 'aski', 'Basavaraj', 'Pooja', '', '', 1, '2017-03-12 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9035676200', '8050725300', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(546, 'CUBSPRIM2-0302', 'Vritee', 'Bire', 'Vinodkumar', 'Tejaswini', '', '', 1, '2018-05-11 00:00:00', '', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8197276411', '7795661770', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(547, 'CUBSPRIM2-0320', 'Ruddhi', 'Jain', 'Lokesh', 'Akshita', '', '', 1, '2019-02-08 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9164389011', '9731873933', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(548, 'CUBSPRIM1-0023', 'Aahil', 'Jamadar', 'Ammadsab', 'Ayesha', '', '', 1, '2016-11-12 00:00:00', 'Hindi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9886484293', '6362033046', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(549, 'CUBSPRIM1-0039', 'Aaradhya', 'Managuli', 'Vittal', 'Amruta', '', '', 1, '2016-03-14 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9902036681', '7411618322', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(550, 'CUBSPRIM1-0003', 'Aarav', 'Sanghvi', 'Vimal', 'Neelam', '', '', 1, '2015-12-21 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9886882737', '9986765782', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(551, 'CUBSPRIM1-0004', 'Aarav', 'Kulkarni', 'Dr.Trimal', 'Dr. veena', '', '', 1, '2016-08-17 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8147824026', '9035061601', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(552, 'CUBSPRIM1-0018', 'Abhay', 'Pandit', 'Anand', 'Vishakha', '', '', 1, '2015-12-27 00:00:00', 'Marathi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '6362760510', '9845574159', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(553, 'CUBSPRIM1-0049', 'Abhishek', 'Almel', 'Manjunath', 'Sneha', '', '', 1, '2016-04-17 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8660889596', '7975083533', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(554, 'CUBSPRIM3-0275', 'Advik', 'Biradar', 'Aravind', 'Rohini', '', '', 1, '2016-07-04 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9611223481', '9845493878', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(555, 'CUBSPRIM1-0021', 'Agastya', 'Indikar', 'Vijayakumar', 'Mahadevi', '', '', 1, '2016-02-19 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9886428130', '8951141146', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(556, 'CUBSPRIM3-0292', 'Akshara', 'Honakeri', 'Manjunath R', 'Shilpa', '', '', 1, '2017-02-02 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9880495715', '9108182492', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(557, 'CUBSPRIM1-0032', 'Ameera', 'Mulla', 'Shamshulhaque', 'Shahidabanu', '', '', 1, '2016-04-18 00:00:00', 'Urdu', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9986740511', '9353567195', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(558, 'CUBSPRIM1-0019', 'Anmol', 'Patil', 'Ninganagouda', 'Shailashri', '', '', 1, '2016-05-08 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9845658773', '7259817145', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(559, 'CUBSPRIM1-0015', 'Aradhya', 'Sulakhe', 'Shrinivas', 'Megha', '', '', 1, '2016-04-27 00:00:00', 'Marathi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9845857108', '9148779818', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(560, 'CUBSPRIM3-0288', 'Atharv', 'Ankad', 'Bheemashankar', 'Tejaswini', '', '', 1, '2017-03-10 00:00:00', '', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9148633482', '', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(561, 'CUBSPRIM1-0026', 'Chirayu', 'Agarwal', 'Naveen', 'Radhika', '', '', 1, '2016-11-11 00:00:00', 'Hindi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9448751521', '9036751521', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(562, 'CUBSPRIM1-0005', 'Dhruvi', 'Jain', 'Shrenik', 'Komal', '', '', 1, '2016-10-09 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9986741247', '9972176064', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(563, 'CUBSPRIM1-0037', 'Divit', 'Gandhi', 'Rahul', 'Joshna', '', '', 1, '2016-06-28 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9632912226', '9663344403', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(564, 'CUBSPRIM1-0038', 'Diyansh', 'Jain', 'Pankaj', 'Sonam', '', '', 1, '2016-12-09 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9742498661', '7760419197', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(565, 'CUBSPRIM1-0025', 'Druvaprasad', 'Hagaragund', 'Santosh', 'Preeti', '', '', 1, '2015-05-10 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9986481147', '6362766722', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(566, 'CUBSPRIM1-0001', 'Harsh', 'Handi', 'Umesh', 'Lakshmi', '', '', 1, '2015-09-30 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9900762529', '8660544866', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(567, 'CUBSPRIM1-0007', 'Hitansh', 'Oswal', 'Vikas', 'Pooja', '', '', 1, '2016-03-18 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9880065469', '9739871646', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(568, 'CUBSPRIM3-0284', 'Ishwar', 'Patil', 'Shivanagouda', 'Vaishnavi', '', '', 1, '2016-07-08 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9900536161', '9113997175', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(569, 'CUBSPRIM1-0052', 'Izyaan', 'Kerur', 'Altafhussain', 'Rubina', '', '', 1, '2015-11-06 00:00:00', 'Urdu', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '7676026868', '9901113896', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(570, 'CUBSPRIM1-0048', 'Janvi', 'Bajantri', 'Mantesh', 'Roopa', '', '', 1, '2016-01-12 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9880751214', '', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(571, 'CUBSPRIM3-0285', 'Kashvi', 'Jain', 'Ajeetkumar', 'Divya', '', '', 1, '2016-04-07 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9611489730', '7019560451', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(572, 'CUBSPRIM1-0034', 'Kushal', 'Jain', 'Mayur', 'Sapna', '', '', 1, '2016-01-23 00:00:00', 'Hindi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9844207964', '7676019519', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:04', 1),
(573, 'CUBSPRIM1-0009', 'Lakshit', 'Choudhary', 'Dinesh', 'Rekha', '', '', 1, '2016-01-18 00:00:00', 'Hindi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8792577721', '8660422428', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(574, 'CUBSPRIM1-0041', 'Manan', 'Jain', 'Rakesh', 'Kavita', '', '', 1, '2016-11-23 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9611489628', '9880557272', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(575, 'CUBSPRIM1-0050', 'Manvita', 'Kannur', 'Ramesh', 'Indumati', '', '', 1, '2016-11-25 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8197610350', '9481085628', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(576, 'CUBSPRIM1-0168', 'Nagarjun', 'Alur', 'Kirankumar', 'Shweta', '', '', 1, '2018-04-03 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9448644415', '8310681615', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(577, 'CUBSPRIM1-0065', 'Naksh', 'Shah', 'Lalit', 'Pooja', '', '', 1, '2015-09-04 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9343009125', '9945831188', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(578, 'CUBSPRIM1-0166', 'Nayera Anum', 'Sarawad', 'Waseemakram', 'Seemaanjum', '', '', 1, '2018-06-04 00:00:00', 'Urdu', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9035505717', '8050215788', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(579, 'CUBSPRIM1-0045', 'Nimisha', 'Jain', 'Bharat Kumar', 'Aruna', '', '', 1, '2015-11-12 00:00:00', 'Hindi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9886850405', '7259316727', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(580, 'CUBSPRIM1-0164', 'Nisha', 'Gavali', 'Ravikant', 'vijayalaxmi', '', '', 1, '2014-04-11 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9901754537', '9901521271', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(581, 'CUBSPRIM1-0159', 'Pranav', 'Bagali', 'Siddhanagouda', 'Laximbai', '', '', 1, '2018-02-02 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9739884700', '9686692722', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(582, 'CUBSPRIM1-0011', 'Prisha', 'Jain', 'Jaitesh', 'Ekta', '', '', 1, '2016-02-25 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9844118927', '9844848927', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(583, 'CUBSPRIM1-0027', 'Rachana', 'Myageri', 'Raghavendra', 'Pooja', '', '', 1, '2016-11-07 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8150049979', '8150049979', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(584, 'CUBSPRIM3-0283', 'Ramya', 'Chavan', 'Ramachandra', 'Ahwini', '', '', 1, '2017-10-02 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9535974444', '8861753333', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(585, 'CUBSPRIM1-0012', 'Rithvi', 'Jain', 'Vikram', 'Pinky', '', '', 1, '2016-03-26 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9986376723', '9008481725', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(586, 'CUBSPRIM1-0160', 'Rithvik', 'Bhansali', 'Mukesh', 'Suman', '', '', 1, '2017-07-05 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9886045144', '8884145144', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(587, 'CUBSPRIM1-0165', 'Rugvedsingh', 'Rajput', 'Randheersingh', 'Indira', '', '', 1, '0000-00-00 00:00:00', 'Hindi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9886950077', '8095164467', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(588, 'CUBSPRIM1-0036', 'Samiksha', 'Tosniwal', 'Brijmohan', 'Sangeeta', '', '', 1, '2015-10-04 00:00:00', 'Hindi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9036410718', '8867498426', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(589, 'CUBSPRIM2-0208', 'Sanketh', 'Kumbar', 'Suresh', 'Rajashri', '', '', 1, '2015-07-07 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8970352798', '9845058325', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(590, 'CUBSPRIM1-0051', 'Sanvi', 'Golasangi', 'Anil', 'Savitri', '', '', 1, '2017-01-07 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9880360181', '9019676565', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(591, 'CUBSPRIM1-0022', 'Sayeda Mahaboob', 'Burkaposh', 'Sayed Javeed Peeran', 'Sayeda Bibi Ayesha', '', '', 1, '2016-04-25 00:00:00', 'Urdu', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9632057861', '9900983786', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(592, 'CUBSPRIM1-0013', 'Shamika', 'Bhide', 'Shrikrishna', 'Vedika', '', '', 1, '2016-03-16 00:00:00', 'Marathi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9902691046', '9945258806', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(593, 'CUBSPRIM1-0033', 'Shashank', 'Desai', 'Anandkumar', 'Kamalaxi', '', '', 1, '2015-03-12 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9743003330', '9449243096', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(594, 'CUBSPRIM1-0161', 'Shlok', 'Kolli', 'Somesh', 'Nilu', '', '', 1, '2016-03-08 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9880647061', '9901644497', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(595, 'CUBSPRIM1-0198', 'Shourya', 'Sonagi', 'Anil', 'Shruti', '', '', 1, '2016-08-09 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9481881161', '', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1);
INSERT INTO `t_student` (`student_id`, `reg_no`, `first_name`, `last_name`, `father_name`, `mother_name`, `image`, `password`, `is_registered`, `dob`, `mother_tongue`, `is_male`, `nationality`, `blood_group`, `date_of_joining`, `date_of_leaving`, `address`, `landmark`, `city`, `state`, `country`, `pincode`, `stu_email_id`, `email_id`, `mobile_no`, `alt_mobile_no`, `remark`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`, `branch_id`) VALUES
(596, 'CUBSPRIM1-0017', 'Shreya', 'saddiwale', 'Dinesh', 'Harsha', '', '', 1, '0000-00-00 00:00:00', 'Hindi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9980082383', '7259867548', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(597, 'CUBSPRIM3-0304', 'Shrinika P', 'Patil', 'Prashant S', 'Manjula', '', '', 1, '2018-03-09 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9591345239', '9108476849', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(598, 'CUBSPRIM1-0030', 'Shrividya', 'Joshi', 'Gopal', 'Gayatri', '', '', 1, '2016-11-23 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9886763771', '7829170114', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(599, 'CUBSPRIM1-0042', 'Soubhgya', 'Jambagi', 'Somana', 'Roopa', '', '', 1, '2015-07-10 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9945015125', '9945015125', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(600, 'CUBSPRIM1-0162', 'Sujay', 'Jangalappanavar', 'Chetan', 'Revati', '', '', 1, '2017-04-12 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9686905121', '8147696878', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(601, 'CUBSPRIM1-0031', 'Unnati', 'Kabade', 'Vishwanath', 'Umashree', '', '', 1, '2016-03-25 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '7019110015', '7892455880', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(602, 'CUBSPRIM1-0163', 'Vedant', 'Anneppanavar', 'Neelkanth', 'Ashwini', '', '', 1, '2017-05-08 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9740580674', '9880509512', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(603, 'CUBSPRIM1-0167', 'Virat', 'Harishetti', 'Anand', 'Rupashri', '', '', 1, '2017-01-03 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9620042312', '9880731315', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(604, 'CUBSPRIM1-0044', 'Vivaan', 'Naidu', 'Vinay', 'Dr Shweta', '', '', 1, '2016-01-02 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9845854600', '9108177798', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(605, 'CUBSPRIM1-0028', 'Yukti', 'Agarwal', 'Deepak', 'Yogita', '', '', 1, '2016-04-25 00:00:00', 'Hindi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9845309030', '9686647300', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(606, 'CUBSPRIM1-0066', 'Aarohi', 'Banjantri', 'Deepak', 'Sunita', '', '', 1, '2015-06-23 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9901753181', '9901753181', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(607, 'CUBSPRIM1-0060', 'Adarsh', 'Mamadapur', 'Shashidhar', 'Rekha', '', '', 1, '2015-01-08 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9986791699', '8088771901', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(608, 'CUBSPRIM4-0296', 'Anuam', 'Nidoni', 'Riyaz Ahmed', 'Siddiqa', '', '', 1, '2015-04-03 00:00:00', 'Urdu', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9945458545', '7019984074', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(609, 'CUBSPRIM1-0170', 'Anvesha', 'Chavan', 'Appalal', 'Sunita', '', '', 1, '2016-05-02 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9880126191', '8971237038', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(610, 'CUBSPRIM1-0054', 'Bhavi', 'Jain', 'Vikas', 'Neelam', '', '', 1, '2015-07-30 00:00:00', 'Hindi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9844057825', '9591473740', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(611, 'CUBSPRIM1-0056', 'Diya', 'Saddiwale', 'Dinesh', 'Harsha', '', '', 1, '2014-11-04 00:00:00', 'Hindi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9980082383', '7259867548', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(612, 'CUBSPRIM2-0173', 'Jinaya', 'Jain', 'Dixitkumar', 'Renuka', '', '', 1, '2016-11-09 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9886916121', '9986893755', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(613, 'CUBSPRIM4-0175', 'Manvi', 'Upadhye', 'Sachin', 'Kajol', '', '', 1, '2015-10-03 00:00:00', 'Marati', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8792187797', '', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(614, 'CUBSPRIM1-0194', 'Md. Tameem', 'Inamdar', 'Md. Saleem', 'Kousar Banu', '', '', 1, '2015-08-04 00:00:00', 'Urdu', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9742441221', '8722177786', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(615, 'CUBSPRIM1-0061', 'Naveed', 'Jahageerdar', 'Husensab', 'Ayisha', '', '', 1, '2014-12-20 00:00:00', 'Urdu', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '7259911459', '6364272606', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(616, 'CUBSPRIM2-0171', 'Pakshal', 'Jain', 'Hitesh', 'Neetu', '', '', 1, '2015-03-04 00:00:00', 'Hindi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9844860325', '9901852790', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(617, 'CUBSPRIM1-0063', 'Prakul', 'Dodamani', 'Basvaraj', 'Chandrakala', '', '', 1, '0000-00-00 00:00:00', 'Kannda', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9481880496', '9535605778', '', 1, 1, '2024-10-01 11:36:00', 1, '2024-10-01 15:00:05', 1),
(618, 'CUBSPRIM1-0094', 'Ranjana', 'Myageri', 'Raghavendra', 'Pooja', '', '', 1, '2014-02-09 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '7892250226', '9380460882', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(619, 'CUBSPRIM4-0291', 'Ritveek', 'Yadave', 'Vasant D', 'Smita Vasant', '', '', 1, '2014-02-12 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9896486749', '8296331949', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(620, 'CUBSPRIM4-0305', 'Samarth R', 'Tarase', 'Rajesh', 'Jyoti', '', '', 1, '2015-02-06 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9449085255', '', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(621, 'CUBSPRIM3-0204', 'Siddharth', 'B S', 'Santhiosh', 'Pushpa', '', '', 1, '2016-04-08 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8880621234', '6363874929', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(622, 'CUBSPRIM4-0306', 'Tanviha', 'Bire', 'Vinodkumar', 'Tejaswini', '', '', 1, '2015-03-12 00:00:00', '', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8197276411', '7795661770', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(623, 'CUBSPRIM3-0203', 'Vaishanavi', 'Halli', 'Ashok', 'Lakshmi', '', '', 1, '2015-01-11 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9901081233', '8431104205', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(624, 'CUBSPRIM4-0321', 'Ayan', 'Mohanta', 'Prashanta Kumar', 'Sarmistha', '', '', 1, '2016-11-08 00:00:00', '', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9731646533', '', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(625, 'CUBSPRIM1-0068', 'Advit', 'Hiremath', 'Dr. Siddramayya', 'Medha', '', '', 1, '2014-01-14 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9844175679', '7259334324', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(626, 'CUBSPRIM1-0182', 'Anish', 'Desai', 'Kuntappa', 'Geeta', '', '', 1, '2014-09-10 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9741606501', '9743003330', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(627, 'CUBSPRIM1-0185', 'Dhruv', 'Jahagirdar', 'Anandkumar', 'Ashwini', '', '', 1, '2015-12-10 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '6361576758', '8999801090', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(628, 'CUBSPRIM3-0183', 'Jainam', 'Jain', 'Bunty', 'Neetha', '', '', 1, '2016-02-02 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '6361240330', '6361270358', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(629, 'CUBSPRIM3-0178', 'Mallikarjun', 'Tadalagi', 'Mahesh', 'Pooja', '', '', 1, '2014-07-10 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9945818185', '8217228680', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(630, 'CUBSPRIM1-0188', 'Manthan', 'Kabade', 'Manjunath', 'Vishala', '', '', 1, '2016-03-01 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9632229269', '8123331519', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(631, 'CUBSPRIM1-0076', 'Md Rayyan', 'Jumnal', 'Yamathulla', 'Sakeena', '', '', 1, '2013-03-25 00:00:00', 'Urdu', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9845920402', '9663291777', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(632, 'CUBSPRIM3-0179', 'Prajwal', 'Patil', 'Venkatesh', 'Triveni', '', '', 1, '2013-11-08 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9972387771', '7337656999', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(633, 'CUBSPRIM1-0074', 'Praneet', 'Kottalagi', 'Parashuram', 'Rekha', '', '', 1, '2014-05-19 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8073867707', '7411133376', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(634, 'CUBSPRIM1-0187', 'Pratamsing', 'Hajeri', 'Tulajaram', 'Rajashri', '', '', 1, '2015-05-08 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9686641563', '', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(635, 'CUBSPRIM1-0073', 'Saheed Afnan', 'Harapanahalli', 'Md.Farooq', 'Shahina', '', '', 1, '2014-09-19 00:00:00', 'Urdu', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '7019581811', '9449376816', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(636, 'CUBSPRIM5-0297', 'Sarthak', 'Ukumanal', 'Aravind', 'Manisha', '', '', 1, '2012-10-11 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9845239182', '9008537894', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(637, 'CUBSPRIM1-0081', 'Shrishant', 'Panalakar', 'Anil', 'Chaitra', '', '', 1, '2014-02-10 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8152851688', '9148776704', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(638, 'CUBSPRIM3-0181', 'Supreet', 'Dengi', 'Basavaraj', 'Indirabai', '', '', 1, '2014-06-10 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9663129990', '9886525550', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(639, 'CUBSPRIM1-0078', 'Suraj', 'Kumbar', 'Subhash', 'Balakka', '', '', 1, '2013-08-15 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9632709893', '8861476678', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(640, 'CUBSPRIM3-0180', 'Vaishanavi', 'Anneppanavar', 'Neelkanth', 'Ashwini', '', '', 1, '2015-10-02 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9740580674', '9880509512', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(641, 'CUBSPRIM1-0184', 'Vedant', 'Guttedar', 'Mahesh', 'Lalita', '', '', 1, '2014-10-04 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9480227777', '8971115999', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(642, 'CUBSPRIM1-0072', 'Vedanth', 'Kabade', 'Vishwanth', 'Umashree', '', '', 1, '0000-00-00 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '7019110015', '7892455880', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(643, 'CUBSPRIM1-0069', 'Vihaan', 'Devagirikar', 'Narayan', 'Ashwini', '', '', 1, '2013-11-29 00:00:00', 'Marathi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9844767604', '9972015238', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(644, 'CUBSPRIM5-0294', 'Vihan', 'Rathod', 'Ramu', 'Sunita', '', '', 1, '2017-05-03 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9591320401', '7498628869', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(645, 'CUBSPRIM1-0088', 'Aditi', 'Nagaralli', 'Milind', 'Prema', '', '', 1, '2013-02-16 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9503034095', '9620520920', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(646, 'CUBSPRIM5-0209', 'Aditi', 'Jahagirdar', 'Anandkumar', 'Ashwini', '', '', 1, '2012-07-12 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '6361576758', '8999801090', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(647, 'CUBSPRIM6-0278', 'Amulya', 'Patil', 'Shivanagouda', 'Vaishnavi', '', '', 1, '2015-02-08 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9900536161', '9113997175', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(648, 'CUBSPRIM1-0090', 'Gagan', 'Malipatil', 'Ashok', 'Vijayalaxmi', '', '', 1, '2012-12-14 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '7841061723', '8600217995', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(649, 'CUBSPRIM5-0210', 'Harshavarshan', 'Gadduge', 'Vishwanath', 'Vijaylaxmi', '', '', 1, '2013-09-01 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9886353996', '8310227151', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(650, 'CUBSPRIM6-0298', 'Kartik', 'Londe', 'Kumar', 'Kavita', '', '', 1, '2013-12-09 00:00:00', 'Marathi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8904911070', '', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(651, 'CUBSPRIM3-0299', 'Nandeesh', 'Patil', 'Bhimaray', 'Priyanka B', '', '', 1, '2017-06-06 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9945599231', '8951486959', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(652, 'CUBSPRIM1-0087', 'Navya', 'Nidoni', 'Somanna', 'Vidhyashree', '', '', 1, '2012-11-12 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9591342675', '8088929594', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(653, 'CUBSPRIM6-0293', 'Pankaj', 'Rathod', 'Ramu', 'Sunita', '', '', 1, '2013-03-07 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9591320401', '7498628869', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(654, 'CUBSPRIM1-0091', 'Punit', 'Dodamani', 'Basvaraj', 'Chandrakala', '', '', 1, '2014-06-03 00:00:00', 'Kannda', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9481880496', '9535605778', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(655, 'CUBSPRIM6-0313', 'Sangamesh', 'Walikar', 'Vidyadhar', 'Manjula', '', '', 1, '2014-09-11 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9886926666', '9739125212', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(656, 'CUBSPRIM1-0086', 'Varsha', 'Pujari', 'Shivakumar', 'Boramma', '', '', 1, '2012-08-09 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8147922508', '6363587033', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(657, 'CUBSPRIM6-0312', 'Sairam', 'Kori', 'Mahantesh V', 'Shaila M', '', '', 1, '2012-06-11 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9686912770', '8197261159', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(658, 'CUBSPRIM7-0280', 'Daneshwari', 'Math', 'Danayya', 'Sneha D', '', '', 1, '2011-10-03 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8310222627', '9606656686', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(659, 'CUBSPRIM1-0192', 'Kiran', 'Hiremath', 'Channayya', 'Vijayalaxmi', '', '', 1, '2011-09-12 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8217689812', '7483220268', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(660, 'CUBSPRIM7-0307', 'Nidhi', 'Gavali', 'Ravikant', 'Vijaylaxmi', '', '', 1, '2012-02-11 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9901754537', '9901521271', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(661, 'CUBSPRIM1-0189', 'Rishab', 'Bhansali', 'Vinodkumar', 'Dimple', '', '', 1, '2014-06-09 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '7019332167', '8310676667', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(662, 'CUBSPRIM5-0323', 'Arushi', 'Chavan', 'Suresh', 'Priti', '', '', 1, '2014-03-04 00:00:00', '', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '7588046642', '', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(663, 'CUBSPRIM5-0322', 'Shravan', 'Bajantri', 'Kartik', 'Shruti', '', '', 1, '2015-04-12 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9900822386', '9880137838', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(664, 'CUBSPRIM2-0319', 'Shrinivas', 'Yaragatti', 'Pandappa', 'Bhagyashri', '', '', 1, '2016-12-12 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9964882201', '8310386725', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(665, 'CUBSPRIM2-0324', 'Aaradhya', 'Chavan', 'Suresh', 'Priti', '', '', 1, '2018-03-07 00:00:00', '', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '7588046642', '7588942240', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(666, 'CUBSPRIM1-0314', 'Manzoor Hussain', 'Nadewale', 'Abdul Gabbar', 'Afreen', '', '', 1, '2017-12-07 00:00:00', 'urdu', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9035924711', '9110876732', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(667, 'CUBSPRIM1-0315', 'Chinmayi', 'Ganeshnavar', 'Vishwanath', 'Geeta', '', '', 1, '2018-03-10 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9449268775', '8904214715', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(668, 'CUBSPRIM1-0316', 'Sanvi', 'Math', 'Gurushantay', 'Jaylaxmi', '', '', 1, '2018-03-10 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9448840975', '9620634084', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(669, 'CUBSPRIM2-0325', 'Navami', 'R', 'Raviraj', 'Annapoorna', '', '', 1, '2016-03-02 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '', '9900150525', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(670, 'CUBSPRIM2-0326', 'Faiza', 'Makandar', 'Mohammadali', 'Bibi Farhana', '', '', 1, '2017-03-09 00:00:00', 'Urdu', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9901292909', '7019494389', '', 1, 1, '2024-10-01 11:36:01', 1, '2024-10-01 15:00:05', 1),
(671, 'CUBSPRIM1-0309', 'Advika', 'Mulasavalagi', 'Anandkumar', 'Sunaina', '', '', 1, '2020-03-12 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9075839839', '9071347341', '', 1, 1, '2024-10-01 15:00:03', 1, '2024-10-01 15:00:03', 1),
(672, 'CUBSPRIM1-0272', 'Deepa', 'Savalasang', 'Suresh G', 'Shaila', '', '', 1, '2019-04-09 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9742527316', '9945014725', '', 1, 1, '2024-10-01 15:00:04', 1, '2024-10-01 15:00:04', 1),
(673, 'CUBSPRIM1-0265', 'Md. Ayaan', 'Nidoni', 'Riyaz Ahmed', 'Siddiqa', '', '', 1, '2019-06-12 00:00:00', 'Urdu', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9945458545', '9538127388', '', 1, 1, '2024-10-01 15:00:04', 1, '2024-10-01 15:00:04', 1),
(674, 'CUBSPRIM1-0276', 'Pranathi', 'Teli', 'Rajendra', 'Savitri', '', '', 1, '2019-02-06 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '7020559305', '6363235209', '', 1, 1, '2024-10-01 15:00:04', 1, '2024-10-01 15:00:04', 1),
(675, 'CUBSPRIM1-0243', 'Ruthvi J', 'Jain', 'Jeevan', 'Meena', '', '', 1, '2019-11-06 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9060970064', '9629966213', '', 1, 1, '2024-10-01 15:00:04', 1, '2024-10-01 15:00:04', 1),
(676, 'CUBSPRIM1-0247', 'Shraddha', 'Somanakatti', 'Yamanappa', 'Asha', '', '', 1, '2019-09-05 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9740306237', '9972772864', '', 1, 1, '2024-10-01 15:00:04', 1, '2024-10-01 15:00:04', 1),
(677, 'CUBSPRIM1-0271', 'Vijay', 'Savalasang', 'Suresh G', 'Shaila', '', '', 1, '2019-04-09 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9742527316', '9945014725', '', 1, 1, '2024-10-01 15:00:04', 1, '2024-10-01 15:00:04', 1),
(678, 'CUBSPRIM1-0102', 'Anushree', 'Sulakhe', 'Dashrath', 'Shruthi', '', '', 1, '2018-11-03 00:00:00', 'Marathi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8073047702', '9108179326', '', 1, 1, '2024-10-01 15:00:04', 1, '2024-10-01 15:00:04', 1),
(679, 'CUBSPRIM2-0289', 'Md. Haziq', 'Inamdar', 'Md Saleem', 'Kousar Banu', '', '', 1, '2017-02-12 00:00:00', 'Urdu', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9742441221', '', '', 1, 1, '2024-10-01 15:00:04', 1, '2024-10-01 15:00:04', 1),
(680, 'CUBSPRIM1-0110', 'Rihav', 'porwal', 'Jayesh', 'Jigna', '', '', 1, '2018-10-09 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '7019468120', '9892084600', '', 1, 1, '2024-10-01 15:00:04', 1, '2024-10-01 15:00:04', 1),
(681, 'CUBSPRIM1-0149', 'Vaishanavi', 'Sangannavar', 'Pramodkumar', 'Deepa', '', '', 1, '2018-08-04 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9591335496', '7022084220', '', 1, 1, '2024-10-01 15:00:04', 1, '2024-10-01 15:00:04', 1),
(682, 'CUBSPRIM1-0043', 'Sayam', 'Gandhi', 'Amit', 'Shilpa', '', '', 1, '2016-03-08 00:00:00', 'Hindi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '7411348249', '9945342826', '', 1, 1, '2024-10-01 15:00:05', 1, '2024-10-01 15:00:05', 1),
(683, 'CUBSPRIM1-0029', 'Sayyida Munazzah', '', 'Sayyid', 'Rubina', '', '', 1, '2016-01-03 00:00:00', 'Urdu', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '7795003647', '7975327394', '', 1, 1, '2024-10-01 15:00:05', 1, '2024-10-01 15:00:05', 1),
(684, 'CUBSPRIM1-0024', 'Soham', 'Devagirkar', 'Dr. Amarnath', 'Dr. Rachana', '', '', 1, '2016-04-18 00:00:00', 'Marathi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9739037266', '9739037266', '', 1, 1, '2024-10-01 15:00:05', 1, '2024-10-01 15:00:05', 1),
(685, 'CUBSPRIM1-0014', 'Veer', 'Tiwadi', 'Nitin', 'Preeti', '', '', 1, '2016-07-18 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9844362759', '9591249922', '', 1, 1, '2024-10-01 15:00:05', 1, '2024-10-01 15:00:05', 1),
(686, 'CUBSPRIM1-0035', 'Vidit', 'Jain', 'Vipul', 'Sonal', '', '', 1, '2016-03-15 00:00:00', 'Marwadi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8867488667', '8095281013', '', 1, 1, '2024-10-01 15:00:05', 1, '2024-10-01 15:00:05', 1),
(687, 'CUBSPRIM1-0059', 'Muhammed. Sahad', 'Madabhavi', 'Maheboob', 'Rajakbi', '', '', 1, '2015-04-03 00:00:00', 'Hindi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '8971823140', '9686162832', '', 1, 1, '2024-10-01 15:00:05', 1, '2024-10-01 15:00:05', 1),
(688, 'CUBSPRIM4-0311', 'Mohit', 'Rokade', 'Shashikant R', 'Meenakshi S', '', '', 1, '2015-05-09 00:00:00', 'Marathi', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9886285808', '', '', 1, 1, '2024-10-01 15:00:05', 1, '2024-10-01 15:00:05', 1),
(689, 'CUBSPRIM4-0287', 'Naman', 'Heralagi', 'Dr Nagaraj S', 'Sharada N', '', '', 1, '2015-01-11 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '988616084', '9886614563', '', 1, 1, '2024-10-01 15:00:05', 1, '2024-10-01 15:00:05', 1),
(690, 'CUBSPRIM5-0290', 'Md. Sajid', 'Maniyar', 'Shakeel', 'Samrin huma S', '', '', 1, '2014-02-03 00:00:00', 'Urdu', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9448021828', '9449683013', '', 1, 1, '2024-10-01 15:00:05', 1, '2024-10-01 15:00:05', 1),
(691, 'CUBSPRIM5-0295', 'Viraj', 'Javali', 'Balbheem V', 'Shruti B', '', '', 1, '2014-05-11 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9860612435', '9284223907', '', 1, 1, '2024-10-01 15:00:05', 1, '2024-10-01 15:00:05', 1),
(692, 'CUBSPRIM3-0089', 'Vinayak', 'Byakod', 'Anilkumar', 'Mallamma', '', '', 1, '2013-01-01 00:00:00', 'Kannada', 0, '', '', '1970-01-01 18:30:00', '1970-01-01 18:30:00', '', '', '', '', '', '', '', '', '9341876511', '6361748267', '', 1, 1, '2024-10-01 15:00:05', 1, '2024-10-01 15:00:05', 1),
(693, 'CUBSPRIM1-0040', 'Omkar', 'Dodkondi', '', '', '', '', 1, '2024-10-05 12:59:07', '', 1, '', '', '2024-10-05 07:29:07', '2024-10-05 07:29:07', '', '', '', '', '', '', '', '', '', '', '', 1, 27, '2024-10-05 07:36:10', 27, '2024-10-05 07:36:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_student_activities`
--

CREATE TABLE `t_student_activities` (
  `student_activity` int(11) NOT NULL,
  `activity_level_id` int(11) DEFAULT NULL,
  `activity_id` int(11) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `batch_student_id` int(11) DEFAULT NULL,
  `grade_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_student_standard`
--

CREATE TABLE `t_student_standard` (
  `student_standard_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `standard_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_subject`
--

CREATE TABLE `t_subject` (
  `subject_id` int(11) NOT NULL,
  `standard_id` int(11) DEFAULT NULL,
  `subject_name` varchar(100) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_subject`
--

INSERT INTO `t_subject` (`subject_id`, `standard_id`, `subject_name`, `display_order`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`) VALUES
(1, 1, 'English', 1, 1, 1, '2024-10-15 10:11:08', 1, '0000-00-00 00:00:00'),
(2, 1, 'Kannada', 1, 1, 1, '2024-10-15 10:11:08', 1, '0000-00-00 00:00:00'),
(3, 1, 'Hindi', 1, 1, 1, '2024-10-15 10:11:08', 1, '0000-00-00 00:00:00'),
(4, 1, 'Mathematics', 1, 1, 1, '2024-10-15 10:11:08', 1, '0000-00-00 00:00:00'),
(5, 1, 'EVS', 1, 1, 1, '2024-10-15 10:11:08', 1, '0000-00-00 00:00:00'),
(6, 1, 'Logical Reasoning', 1, 1, 1, '2024-10-15 10:17:21', 1, '0000-00-00 00:00:00'),
(7, 2, 'English', 1, 1, 1, '2024-10-15 10:11:08', 1, '0000-00-00 00:00:00'),
(8, 2, 'Kannada', 1, 1, 1, '2024-10-15 10:16:42', 1, '0000-00-00 00:00:00'),
(9, 2, 'Hindi', 1, 1, 1, '2024-10-15 10:16:43', 1, '0000-00-00 00:00:00'),
(10, 2, 'Mathematics', 1, 1, 1, '2024-10-15 10:16:43', 1, '0000-00-00 00:00:00'),
(11, 2, 'EVS', 1, 1, 1, '2024-10-15 10:16:44', 1, '0000-00-00 00:00:00'),
(12, 2, 'Logical Reasoning', 1, 1, 1, '2024-10-15 10:16:44', 1, '0000-00-00 00:00:00'),
(13, 3, 'English', 1, 1, 1, '2024-10-15 10:21:02', 1, '0000-00-00 00:00:00'),
(14, 3, 'Kannada', 1, 1, 1, '2024-10-15 10:21:02', 1, '0000-00-00 00:00:00'),
(15, 3, 'Hindi', 1, 1, 1, '2024-10-15 10:21:02', 1, '0000-00-00 00:00:00'),
(16, 3, 'Mathematics', 1, 1, 1, '2024-10-15 10:21:02', 1, '0000-00-00 00:00:00'),
(17, 3, 'Science', 1, 1, 1, '2024-10-15 10:21:02', 1, '0000-00-00 00:00:00'),
(18, 3, 'Social Science', 1, 1, 1, '2024-10-15 10:21:02', 1, '0000-00-00 00:00:00'),
(19, 4, 'English', 1, 1, 1, '2024-10-15 10:23:45', 1, '0000-00-00 00:00:00'),
(20, 4, 'Kannada', 1, 1, 1, '2024-10-15 10:23:45', 1, '0000-00-00 00:00:00'),
(21, 4, 'Hindi', 1, 1, 1, '2024-10-15 10:23:45', 1, '0000-00-00 00:00:00'),
(22, 4, 'Mathematics', 1, 1, 1, '2024-10-15 10:23:45', 1, '0000-00-00 00:00:00'),
(23, 4, 'Science\r\n', 1, 1, 1, '2024-10-15 10:23:45', 1, '0000-00-00 00:00:00'),
(24, 4, 'Social Science', 1, 1, 1, '2024-10-15 10:23:45', 1, '0000-00-00 00:00:00'),
(25, 5, 'English', 1, 1, 1, '2024-10-15 10:31:17', 1, '0000-00-00 00:00:00'),
(26, 5, 'Kannada', 1, 1, 1, '2024-10-15 10:31:17', 1, '0000-00-00 00:00:00'),
(27, 5, 'Hindi', 1, 1, 1, '2024-10-15 10:31:17', 1, '0000-00-00 00:00:00'),
(28, NULL, 'Mathematics', 1, 1, 1, '2024-10-15 10:31:17', 1, '0000-00-00 00:00:00'),
(29, 5, 'Science', 1, 1, 1, '2024-10-15 10:31:17', 1, '0000-00-00 00:00:00'),
(30, 5, 'Social Science', 1, 1, 1, '2024-10-15 10:31:17', 1, '0000-00-00 00:00:00'),
(31, 6, 'English', 1, 1, 1, '2024-10-15 10:31:17', 1, '0000-00-00 00:00:00'),
(32, 6, 'Kannada', 1, 1, 1, '2024-10-15 10:31:17', 1, '0000-00-00 00:00:00'),
(33, 6, 'Hindi', 1, 1, 1, '2024-10-15 10:31:17', 1, '0000-00-00 00:00:00'),
(34, 6, 'Mathematics', 1, 1, 1, '2024-10-15 10:31:17', 1, '0000-00-00 00:00:00'),
(35, 6, 'Science', 1, 1, 1, '2024-10-15 10:31:17', 1, '0000-00-00 00:00:00'),
(36, 6, 'Social Science', 1, 1, 1, '2024-10-15 10:31:17', 1, '0000-00-00 00:00:00'),
(37, 7, 'English', 1, 1, 1, '2024-10-15 10:31:17', 1, '0000-00-00 00:00:00'),
(38, 7, 'Kannada', 1, 1, 1, '2024-10-15 10:31:17', 1, '0000-00-00 00:00:00'),
(39, 7, 'Hindi', 1, 1, 1, '2024-10-15 10:31:17', 1, '0000-00-00 00:00:00'),
(40, 7, 'Mathematics', 1, 1, 1, '2024-10-15 10:31:17', 1, '0000-00-00 00:00:00'),
(41, 7, 'Science', 1, 1, 1, '2024-10-15 10:31:17', 1, '0000-00-00 00:00:00'),
(42, 7, 'Social Science', 1, 1, 1, '2024-10-15 10:31:17', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_syllabus_topics`
--

CREATE TABLE `t_syllabus_topics` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `topic_name` text NOT NULL,
  `description` text NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_syllabus_topic_status`
--

CREATE TABLE `t_syllabus_topic_status` (
  `id` int(11) NOT NULL,
  `topicId` int(11) NOT NULL,
  `branchId` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `createdBy` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_syllabus_topic_status`
--

INSERT INTO `t_syllabus_topic_status` (`id`, `topicId`, `branchId`, `status`, `createdBy`, `updatedBy`, `createdAt`, `updatedAt`) VALUES
(1, 36, 1, 2, 1, 1, '2024-08-08 12:02:56', '2024-08-08 12:02:56');

-- --------------------------------------------------------

--
-- Table structure for table `t_teachers`
--

CREATE TABLE `t_teachers` (
  `teacher_id` int(11) NOT NULL,
  `reg_no` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `dob` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `mother_tongue` varchar(100) DEFAULT NULL,
  `is_male` tinyint(1) DEFAULT NULL,
  `nationality` varchar(100) DEFAULT NULL,
  `blood_group` varchar(10) DEFAULT NULL,
  `qualification` varchar(100) DEFAULT NULL,
  `date_of_joining` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `date_of_leaving` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `address` text,
  `landmark` varchar(1000) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `pincode` varchar(6) DEFAULT NULL,
  `email_id` varchar(100) DEFAULT NULL,
  `mobile_no` varchar(20) DEFAULT NULL,
  `alt_mobile_no` varchar(20) DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Branch_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_teachers`
--

INSERT INTO `t_teachers` (`teacher_id`, `reg_no`, `first_name`, `last_name`, `image`, `dob`, `mother_tongue`, `is_male`, `nationality`, `blood_group`, `qualification`, `date_of_joining`, `date_of_leaving`, `address`, `landmark`, `city`, `state`, `country`, `pincode`, `email_id`, `mobile_no`, `alt_mobile_no`, `remark`, `is_active`, `created_by`, `created_date`, `updated_by`, `updated_date`, `Branch_id`) VALUES
(70, 'CUBS_ECT07', 'keerthi', 'Kalloora', NULL, '2024-10-03 05:55:33', 'Kannada', 0, 'Indian', 'B+', 'BCA', '2023-05-31 18:30:00', '2024-10-03 05:55:33', 'No 1503, Siddheshwar Layout, KHB colony, Sai Park', 'Near Bharat Petrol Pump', 'Vijayapura', 'Karnataka', '', '586109', 'sunilkeerthi97@gmail.com', '8618070724', '', '', 1, 27, '2024-10-03 06:02:22', 1, '2024-10-03 09:22:50', 1),
(71, 'CUBS_EST09', 'Nagaveni', 'Kamble', NULL, '2024-10-03 09:17:35', 'Kannada', 2, 'Indian', 'A+', 'MSC', '2023-05-31 18:30:00', '2024-10-03 09:17:35', 'Sakaf Roza kardi colony vijayapur', 'Near Bus stand', 'Vijayapura', 'Karnataka', '', '586101', 'veni4527@gmail.com', '6363829817', '8904849529', '', 1, 1, '2024-10-03 09:28:30', 1, '2024-10-03 09:28:30', 1),
(72, 'CUBS_EST16', 'Bismilla', 'Nayakawadi', NULL, '2024-10-03 09:22:08', 'Urdu', 0, 'Indian', 'AB+', 'MA Bed', '2024-10-03 09:22:08', '2024-10-03 09:22:08', 'kaman Khan, Bazar Road', 'Near badikaman', 'Vijayapura', 'Karnataka', '', '586101', 'bismilla.4240@gmail.com', '9741364240', '', '', 1, 1, '2024-10-03 09:31:10', 1, '2024-10-03 09:31:10', 1),
(73, 'CUBS_ECT10', 'Priyanka', 'Borutagi', NULL, '2024-10-03 09:26:08', 'Kannada', 2, 'Indian', 'O+', 'B.Sc.B.Ed', '2023-05-31 18:30:00', '2024-10-03 09:26:08', 'Suraksha colony,', 'Near Mahadev Marble,', 'Vijayapur', 'Karnataka', '', '586104', 'priyankamanami6363@gmail.com', '6363259982', '', '', 1, 1, '2024-10-03 09:41:50', 1, '2024-10-03 10:20:31', 1),
(74, 'CUBS-EST15', 'CHANDANI', 'MUJAWAR', NULL, '2024-10-03 09:35:33', 'Urdu', 2, 'Indian', 'B+', 'B.ed', '2024-01-05 18:30:00', '2024-10-03 09:35:33', 'Near Sainik School,', 'First Gate', 'Vijayapur', 'Karnataka', '', '586101', 'chandanimujawar13@gmail.com', '9742487821', '', '', 1, 1, '2024-10-03 09:49:13', 1, '2024-10-03 09:49:13', 1),
(75, 'CUBS- ECT14', 'NEETA', 'VAIDYA', NULL, '2024-10-02 18:30:00', 'KANNADA', 2, 'INDIAN', 'A+', 'B.Ed', '2024-05-31 18:30:00', '2024-10-03 09:43:03', 'NEAR ASHRAM,', 'SURAKSHA COLONY,', 'VIJAYAPUR', 'KARNATAKA', '', '586104', 'rekhavaidaya08@gmail.com', '9591291354', '', '', 1, 1, '2024-10-03 09:54:13', 1, '2024-10-03 09:54:13', 1),
(76, 'CUBS-EAT19', 'SEEMA', 'JOSHI', NULL, '2024-10-03 09:47:51', 'KANNADA', 2, 'INDIAN', 'O+', 'B.Ed', '2024-05-31 18:30:00', '2024-10-03 09:47:51', 'CHIDAMBER, BEHIND 10 NO. SCHOOL', 'JORAPUR PETH', 'VIJAYAPUR', 'KARNATAKA', '', '586101', 'seema.joshi.5758@gmail.com', '9874165220', '', '', 1, 1, '2024-10-03 09:59:03', 1, '2024-10-03 09:59:03', 1),
(77, 'CUBS-EST24', 'SATIRAVVA', 'PATIL', NULL, '2024-10-03 09:52:52', 'KANNADA', 2, 'INDIAN', 'O+', 'PUC', '2024-07-04 18:30:00', '2024-10-03 09:52:52', 'I. B. BIRADAR. GANG BOUDI', 'K.S.R.T.C COLONY,', 'VIJAYAPUR', 'KARNATAKA', '', '586101', 'satiravvapatil@gmail.com', '9663119899', '', '', 1, 1, '2024-10-03 10:02:06', 1, '2024-10-03 10:02:06', 1),
(78, 'CUBS-EST21', 'FIRDOS', 'MULLA', NULL, '2024-10-03 09:55:46', 'URDU', 2, 'INDIAN', 'A+', 'B.Ed', '2024-05-31 18:30:00', '2024-10-03 09:55:46', 'WARD.NO. 35, ATALATTI ROAD,', 'RADIO KENDRA, MADINA NAGAR,', 'VIJAYAPUR', 'KARNATAKA', '', '586106', 'firdosmulla1991@gmail.com', '7337707544', '', '', 1, 1, '2024-10-03 10:04:48', 1, '2024-10-03 10:04:48', 1),
(79, 'CUBS-EST12', 'MANJUNATH', 'HONAKERI', NULL, '2024-10-03 09:58:35', 'KANNADA', 1, 'INDIAN', 'O+', 'B.Ed', '2024-05-31 18:30:00', '2024-10-03 09:58:35', 'NEAR OLD EMPLOYMENT OFFICE,', 'GYANG BOUDI', 'VIJAYAPUR', 'KARNATAKA', '', '586101', 'mrhonakeri5@gmail.com', '9880495715', '', '', 1, 1, '2024-10-03 10:08:27', 1, '2024-10-03 10:08:27', 1),
(80, 'CUBS-ECT17', 'VIDYA', 'BIRADAR', NULL, '2024-10-03 10:02:17', 'KANNDADA', 2, 'INDIAN', 'B+', 'B.Sc', '2024-05-31 18:30:00', '2024-10-03 10:02:17', 'PADMAVATI COLONY,', 'NEAR LADIES HOSTEL, ASHRAM ROAD,', 'VIJAYPUR.', 'KARNATAKA', '', '586103', 'vidyabiradar99@gmail.com', '9014345973', '', '', 1, 1, '2024-10-03 10:11:19', 1, '2024-10-03 10:11:19', 1),
(81, 'CUBS-ECT11', 'BIBI FARHANA', 'MAKANDAR', NULL, '2024-10-03 10:05:03', 'URDU', 2, 'INDIAN', 'B+', 'D.Ed. B.Sc B.ed', '2023-07-02 18:30:00', '2024-10-03 10:05:03', 'C/O. S. R. MAKANDAR.', 'HUDCO COLONY, JALA NAGAR, NEAR SANTOSHI MATA TEMPLE,', 'VIJAYAPUR', 'KARNATAKA', '', '586109', 'farahanfaizafaham@gmail.com', '7019494389', '', '', 1, 1, '2024-10-03 10:16:12', 1, '2024-10-03 10:16:12', 1),
(82, 'CUBS-EST08', 'NAGAVENI', 'BENUR', NULL, '2024-10-03 10:09:54', 'KANNADA', 2, 'INDIAN', 'O+', 'D.Ed. B.A', '2023-04-02 18:30:00', '2024-10-03 10:09:54', 'E.W.S 108, ADARSH NAGAR,', 'ASHRAM ROAD,', 'VIJAYAPUR', 'KARNATAKA', '', '586103', 'nagavenibenur@gmail.com', '9900909547', '', '', 1, 1, '2024-10-03 10:19:41', 1, '2024-10-03 10:19:41', 1),
(83, 'CUBS-EST13', 'NIRANJAN', 'HIREMATH', NULL, '2024-10-03 10:14:16', 'KANNADA', 1, 'INDIAN', 'B+', 'M.A', '2024-05-31 18:30:00', '2024-10-03 10:14:16', 'KANAKADAS BADAWANE', '', 'VIJAYAPUR', 'KARNATAKA', '', '586101', 'nshsir0019@gmail.con', '8147158219', '', '', 1, 1, '2024-10-03 10:25:58', 1, '2024-10-03 10:25:58', 1),
(84, 'CUBS_EAT18', 'BHAGYASHREE', 'HOSAMANI', NULL, '2024-10-03 10:19:41', 'HINDI', 2, 'INDIAN', 'A+', 'M.Sc', '2024-06-30 18:30:00', '2024-10-03 10:19:41', 'KANAKADAS BADAWANE', 'NEAR, Z.P.OFFICE,', 'VIJAYAPUR', 'KARNATAKA', '', '586109', 'bhagyashree21390@gmail.com', '8600822498', '', '', 1, 1, '2024-10-03 10:30:21', 1, '2024-10-03 10:30:21', 1),
(85, 'CUBS_EACT20', 'SHRIDEVI', 'SHETTAR', NULL, '2024-10-03 10:24:02', 'KANNADA', 2, 'INDIAN', 'AB+', '', '2023-08-15 18:30:00', '2024-10-03 10:24:02', 'JALA NAGAR,', 'NEAR SANTOSHIMATA TEMPLE,', 'VIJAYAPUR', 'KARNATAKA', '', '586101', 'shridevitushar07@gmail.com', '7676853696', '', '', 1, 1, '2024-10-03 10:33:00', 1, '2024-10-03 10:33:00', 1),
(86, 'CUBS_EAT18', 'RAJESHWARI', 'NEERUGGI', NULL, '2024-10-03 10:27:36', 'KANNADA', 2, 'INDIAN', 'O+', 'M.Sc. Agri', '2024-06-30 18:30:00', '2024-10-03 10:27:36', 'AT & POST - MASUTI.', 'TAL - BASAVAN BAGEWADI.', 'VIJAYAPUR', 'KARNATAKA', '', '586121', 'rajeshwarineeruggi0817@gmail.com', '9108433883', '', '', 1, 1, '2024-10-03 10:39:11', 1, '2024-10-03 10:39:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `t_tickets`
--

CREATE TABLE `t_tickets` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `message` text NOT NULL,
  `comment` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `branchId` int(2) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_ticket_coments`
--

CREATE TABLE `t_ticket_coments` (
  `id` int(11) NOT NULL,
  `ticketId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `comment` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_ticket_status`
--

CREATE TABLE `t_ticket_status` (
  `id` int(11) NOT NULL,
  `status` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_ticket_status`
--

INSERT INTO `t_ticket_status` (`id`, `status`, `createdAt`) VALUES
(1, 'Created', '2024-06-14 06:10:48'),
(2, 'Processing', '2024-06-14 06:11:01'),
(3, 'Resolved', '2024-06-14 06:13:59'),
(4, '', '2024-06-14 06:13:59');

-- --------------------------------------------------------

--
-- Table structure for table `t_topic_status`
--

CREATE TABLE `t_topic_status` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `name` varchar(100) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_topic_status`
--

INSERT INTO `t_topic_status` (`id`, `status`, `name`, `createdAt`) VALUES
(1, 1, 'Not Started', '2024-08-07 11:26:12'),
(2, 2, 'In Progress', '2024-08-07 11:26:12'),
(3, 3, 'Completed', '2024-08-07 11:26:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_activities`
--
ALTER TABLE `t_activities`
  ADD PRIMARY KEY (`activity_id`),
  ADD KEY `program_id` (`standard_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `Branch_id` (`Branch_id`);

--
-- Indexes for table `t_activities_level`
--
ALTER TABLE `t_activities_level`
  ADD PRIMARY KEY (`activity_level_id`),
  ADD UNIQUE KEY `activity_id_2` (`activity_id`,`level_id`),
  ADD KEY `level_id` (`level_id`),
  ADD KEY `activity_id` (`activity_id`);

--
-- Indexes for table `t_administration`
--
ALTER TABLE `t_administration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_admin_category`
--
ALTER TABLE `t_admin_category`
  ADD PRIMARY KEY (`admin_category_id`);

--
-- Indexes for table `t_admin_pages`
--
ALTER TABLE `t_admin_pages`
  ADD PRIMARY KEY (`admin_pages_id`),
  ADD KEY `admin_category_id` (`admin_category_id`);

--
-- Indexes for table `t_admin_user`
--
ALTER TABLE `t_admin_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `Branch_id` (`Branch_id`),
  ADD KEY `Role_id` (`Role_id`);

--
-- Indexes for table `t_album`
--
ALTER TABLE `t_album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `Branch_id` (`Branch_id`);

--
-- Indexes for table `t_attandance`
--
ALTER TABLE `t_attandance`
  ADD PRIMARY KEY (`attandance_id`),
  ADD KEY `t_attandance_ibfk_1` (`batch_student_id`);

--
-- Indexes for table `t_batch`
--
ALTER TABLE `t_batch`
  ADD PRIMARY KEY (`batch_id`),
  ADD KEY `program_id` (`standard_id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `Branch_id` (`Branch_id`);

--
-- Indexes for table `t_batch_students`
--
ALTER TABLE `t_batch_students`
  ADD PRIMARY KEY (`batch_student_id`),
  ADD KEY `batch_id` (`batch_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `t_branch`
--
ALTER TABLE `t_branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `t_branch_standard`
--
ALTER TABLE `t_branch_standard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_dairy`
--
ALTER TABLE `t_dairy`
  ADD PRIMARY KEY (`dairy_id`),
  ADD KEY `batch_id` (`batch_id`),
  ADD KEY `standard_id` (`standard_id`),
  ADD KEY `Branch_id` (`Branch_id`);

--
-- Indexes for table `t_event`
--
ALTER TABLE `t_event`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `Branch_id` (`Branch_id`);

--
-- Indexes for table `t_exam`
--
ALTER TABLE `t_exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_exam_result`
--
ALTER TABLE `t_exam_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_exam_subject`
--
ALTER TABLE `t_exam_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_exception`
--
ALTER TABLE `t_exception`
  ADD PRIMARY KEY (`exception_id`),
  ADD KEY `exception_id` (`exception_id`);

--
-- Indexes for table `t_fee`
--
ALTER TABLE `t_fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_feeback`
--
ALTER TABLE `t_feeback`
  ADD PRIMARY KEY (`feeback_id`);

--
-- Indexes for table `t_fee_transactions`
--
ALTER TABLE `t_fee_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_gallery`
--
ALTER TABLE `t_gallery`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `album_id` (`album_id`),
  ADD KEY `Branch_id` (`Branch_id`);

--
-- Indexes for table `t_grade`
--
ALTER TABLE `t_grade`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `t_leave`
--
ALTER TABLE `t_leave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_levels`
--
ALTER TABLE `t_levels`
  ADD PRIMARY KEY (`level_id`);

--
-- Indexes for table `t_permission_assignment`
--
ALTER TABLE `t_permission_assignment`
  ADD PRIMARY KEY (`permission_assignment_id`),
  ADD KEY `admin_pages_id` (`admin_pages_id`);

--
-- Indexes for table `t_roles`
--
ALTER TABLE `t_roles`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `t_scrool`
--
ALTER TABLE `t_scrool`
  ADD PRIMARY KEY (`scrool_id`);

--
-- Indexes for table `t_sms_templates`
--
ALTER TABLE `t_sms_templates`
  ADD PRIMARY KEY (`sms_id`);

--
-- Indexes for table `t_songs`
--
ALTER TABLE `t_songs`
  ADD PRIMARY KEY (`song_id`);

--
-- Indexes for table `t_special_notes`
--
ALTER TABLE `t_special_notes`
  ADD PRIMARY KEY (`note_id`),
  ADD KEY `batch_id` (`batch_id`),
  ADD KEY `studentid` (`standardid`);

--
-- Indexes for table `t_standard`
--
ALTER TABLE `t_standard`
  ADD PRIMARY KEY (`standard_id`);

--
-- Indexes for table `t_student`
--
ALTER TABLE `t_student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `t_student_activities`
--
ALTER TABLE `t_student_activities`
  ADD PRIMARY KEY (`student_activity`),
  ADD KEY `t_student_activities_ibfk_1` (`activity_id`),
  ADD KEY `t_student_activities_ibfk_3` (`level_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `activity_level_id` (`activity_level_id`),
  ADD KEY `grade_id` (`grade_id`),
  ADD KEY `t_student_activities_ibfk_4` (`batch_student_id`);

--
-- Indexes for table `t_student_standard`
--
ALTER TABLE `t_student_standard`
  ADD PRIMARY KEY (`student_standard_id`),
  ADD UNIQUE KEY `student_id` (`student_id`,`standard_id`),
  ADD KEY `standard_id` (`standard_id`);

--
-- Indexes for table `t_subject`
--
ALTER TABLE `t_subject`
  ADD PRIMARY KEY (`subject_id`),
  ADD KEY `standard_id` (`standard_id`);

--
-- Indexes for table `t_syllabus_topics`
--
ALTER TABLE `t_syllabus_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_syllabus_topic_status`
--
ALTER TABLE `t_syllabus_topic_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_teachers`
--
ALTER TABLE `t_teachers`
  ADD PRIMARY KEY (`teacher_id`),
  ADD KEY `Branch_id` (`Branch_id`);

--
-- Indexes for table `t_tickets`
--
ALTER TABLE `t_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_ticket_status`
--
ALTER TABLE `t_ticket_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_topic_status`
--
ALTER TABLE `t_topic_status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_activities`
--
ALTER TABLE `t_activities`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=558;

--
-- AUTO_INCREMENT for table `t_activities_level`
--
ALTER TABLE `t_activities_level`
  MODIFY `activity_level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2229;

--
-- AUTO_INCREMENT for table `t_administration`
--
ALTER TABLE `t_administration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `t_admin_category`
--
ALTER TABLE `t_admin_category`
  MODIFY `admin_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `t_admin_pages`
--
ALTER TABLE `t_admin_pages`
  MODIFY `admin_pages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `t_admin_user`
--
ALTER TABLE `t_admin_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `t_album`
--
ALTER TABLE `t_album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `t_attandance`
--
ALTER TABLE `t_attandance`
  MODIFY `attandance_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_batch`
--
ALTER TABLE `t_batch`
  MODIFY `batch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `t_batch_students`
--
ALTER TABLE `t_batch_students`
  MODIFY `batch_student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2154;

--
-- AUTO_INCREMENT for table `t_branch`
--
ALTER TABLE `t_branch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_branch_standard`
--
ALTER TABLE `t_branch_standard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `t_dairy`
--
ALTER TABLE `t_dairy`
  MODIFY `dairy_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1296;

--
-- AUTO_INCREMENT for table `t_event`
--
ALTER TABLE `t_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=418;

--
-- AUTO_INCREMENT for table `t_exam`
--
ALTER TABLE `t_exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `t_exam_result`
--
ALTER TABLE `t_exam_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_exam_subject`
--
ALTER TABLE `t_exam_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_exception`
--
ALTER TABLE `t_exception`
  MODIFY `exception_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_fee`
--
ALTER TABLE `t_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `t_feeback`
--
ALTER TABLE `t_feeback`
  MODIFY `feeback_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_fee_transactions`
--
ALTER TABLE `t_fee_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;

--
-- AUTO_INCREMENT for table `t_gallery`
--
ALTER TABLE `t_gallery`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `t_grade`
--
ALTER TABLE `t_grade`
  MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `t_leave`
--
ALTER TABLE `t_leave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_levels`
--
ALTER TABLE `t_levels`
  MODIFY `level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `t_permission_assignment`
--
ALTER TABLE `t_permission_assignment`
  MODIFY `permission_assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `t_roles`
--
ALTER TABLE `t_roles`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `t_scrool`
--
ALTER TABLE `t_scrool`
  MODIFY `scrool_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_sms_templates`
--
ALTER TABLE `t_sms_templates`
  MODIFY `sms_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `t_songs`
--
ALTER TABLE `t_songs`
  MODIFY `song_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_special_notes`
--
ALTER TABLE `t_special_notes`
  MODIFY `note_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1158;

--
-- AUTO_INCREMENT for table `t_standard`
--
ALTER TABLE `t_standard`
  MODIFY `standard_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `t_student`
--
ALTER TABLE `t_student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=695;

--
-- AUTO_INCREMENT for table `t_student_activities`
--
ALTER TABLE `t_student_activities`
  MODIFY `student_activity` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_student_standard`
--
ALTER TABLE `t_student_standard`
  MODIFY `student_standard_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_subject`
--
ALTER TABLE `t_subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `t_syllabus_topics`
--
ALTER TABLE `t_syllabus_topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_syllabus_topic_status`
--
ALTER TABLE `t_syllabus_topic_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_teachers`
--
ALTER TABLE `t_teachers`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `t_tickets`
--
ALTER TABLE `t_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_ticket_status`
--
ALTER TABLE `t_ticket_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `t_topic_status`
--
ALTER TABLE `t_topic_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_activities`
--
ALTER TABLE `t_activities`
  ADD CONSTRAINT `t_activities_ibfk_1` FOREIGN KEY (`standard_id`) REFERENCES `t_standard` (`standard_id`),
  ADD CONSTRAINT `t_activities_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `t_subject` (`subject_id`),
  ADD CONSTRAINT `t_activities_ibfk_3` FOREIGN KEY (`Branch_id`) REFERENCES `t_branch` (`branch_id`);

--
-- Constraints for table `t_activities_level`
--
ALTER TABLE `t_activities_level`
  ADD CONSTRAINT `t_activities_level_ibfk_1` FOREIGN KEY (`level_id`) REFERENCES `t_levels` (`level_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `t_activities_level_ibfk_2` FOREIGN KEY (`activity_id`) REFERENCES `t_activities` (`activity_id`) ON DELETE CASCADE;

--
-- Constraints for table `t_admin_pages`
--
ALTER TABLE `t_admin_pages`
  ADD CONSTRAINT `t_admin_pages_ibfk_1` FOREIGN KEY (`admin_category_id`) REFERENCES `t_admin_category` (`admin_category_id`);

--
-- Constraints for table `t_admin_user`
--
ALTER TABLE `t_admin_user`
  ADD CONSTRAINT `t_admin_user_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `t_teachers` (`teacher_id`),
  ADD CONSTRAINT `t_admin_user_ibfk_2` FOREIGN KEY (`Branch_id`) REFERENCES `t_branch` (`branch_id`),
  ADD CONSTRAINT `t_admin_user_ibfk_3` FOREIGN KEY (`Role_id`) REFERENCES `t_roles` (`Id`);

--
-- Constraints for table `t_album`
--
ALTER TABLE `t_album`
  ADD CONSTRAINT `t_album_ibfk_1` FOREIGN KEY (`Branch_id`) REFERENCES `t_branch` (`branch_id`);

--
-- Constraints for table `t_attandance`
--
ALTER TABLE `t_attandance`
  ADD CONSTRAINT `t_attandance_ibfk_1` FOREIGN KEY (`batch_student_id`) REFERENCES `t_batch_students` (`batch_student_id`) ON DELETE CASCADE;

--
-- Constraints for table `t_batch`
--
ALTER TABLE `t_batch`
  ADD CONSTRAINT `t_batch_ibfk_1` FOREIGN KEY (`standard_id`) REFERENCES `t_standard` (`standard_id`),
  ADD CONSTRAINT `t_batch_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `t_teachers` (`teacher_id`),
  ADD CONSTRAINT `t_batch_ibfk_3` FOREIGN KEY (`Branch_id`) REFERENCES `t_branch` (`branch_id`);

--
-- Constraints for table `t_batch_students`
--
ALTER TABLE `t_batch_students`
  ADD CONSTRAINT `t_batch_students_ibfk_1` FOREIGN KEY (`batch_id`) REFERENCES `t_batch` (`batch_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `t_batch_students_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `t_student` (`student_id`) ON DELETE CASCADE;

--
-- Constraints for table `t_dairy`
--
ALTER TABLE `t_dairy`
  ADD CONSTRAINT `t_dairy_ibfk_1` FOREIGN KEY (`batch_id`) REFERENCES `t_batch` (`batch_id`),
  ADD CONSTRAINT `t_dairy_ibfk_2` FOREIGN KEY (`standard_id`) REFERENCES `t_standard` (`standard_id`),
  ADD CONSTRAINT `t_dairy_ibfk_3` FOREIGN KEY (`Branch_id`) REFERENCES `t_branch` (`branch_id`);

--
-- Constraints for table `t_event`
--
ALTER TABLE `t_event`
  ADD CONSTRAINT `t_event_ibfk_1` FOREIGN KEY (`Branch_id`) REFERENCES `t_branch` (`branch_id`);

--
-- Constraints for table `t_gallery`
--
ALTER TABLE `t_gallery`
  ADD CONSTRAINT `t_gallery_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `t_album` (`album_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `t_gallery_ibfk_2` FOREIGN KEY (`Branch_id`) REFERENCES `t_branch` (`branch_id`);

--
-- Constraints for table `t_permission_assignment`
--
ALTER TABLE `t_permission_assignment`
  ADD CONSTRAINT `t_permission_assignment_ibfk_1` FOREIGN KEY (`admin_pages_id`) REFERENCES `t_admin_pages` (`admin_pages_id`);

--
-- Constraints for table `t_special_notes`
--
ALTER TABLE `t_special_notes`
  ADD CONSTRAINT `t_special_notes_ibfk_1` FOREIGN KEY (`batch_id`) REFERENCES `t_batch` (`batch_id`),
  ADD CONSTRAINT `t_special_notes_ibfk_2` FOREIGN KEY (`standardid`) REFERENCES `t_standard` (`standard_id`);

--
-- Constraints for table `t_student_activities`
--
ALTER TABLE `t_student_activities`
  ADD CONSTRAINT `t_student_activities_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `t_activities` (`activity_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `t_student_activities_ibfk_3` FOREIGN KEY (`level_id`) REFERENCES `t_levels` (`level_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `t_student_activities_ibfk_4` FOREIGN KEY (`batch_student_id`) REFERENCES `t_batch_students` (`batch_student_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `t_student_activities_ibfk_5` FOREIGN KEY (`student_id`) REFERENCES `t_student` (`student_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `t_student_activities_ibfk_6` FOREIGN KEY (`activity_level_id`) REFERENCES `t_activities_level` (`activity_level_id`),
  ADD CONSTRAINT `t_student_activities_ibfk_7` FOREIGN KEY (`grade_id`) REFERENCES `t_grade` (`grade_id`);

--
-- Constraints for table `t_student_standard`
--
ALTER TABLE `t_student_standard`
  ADD CONSTRAINT `t_student_standard_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `t_student` (`student_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `t_student_standard_ibfk_2` FOREIGN KEY (`standard_id`) REFERENCES `t_standard` (`standard_id`);

--
-- Constraints for table `t_subject`
--
ALTER TABLE `t_subject`
  ADD CONSTRAINT `t_subject_ibfk_1` FOREIGN KEY (`standard_id`) REFERENCES `t_standard` (`standard_id`);

--
-- Constraints for table `t_teachers`
--
ALTER TABLE `t_teachers`
  ADD CONSTRAINT `t_teachers_ibfk_1` FOREIGN KEY (`Branch_id`) REFERENCES `t_branch` (`branch_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

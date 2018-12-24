/*
Navicat MySQL Data Transfer

Source Server         : Mysql for local
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : db_jiajiao

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-05-27 05:46:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tab_china_citys
-- ----------------------------
DROP TABLE IF EXISTS `tab_china_citys`;
CREATE TABLE `tab_china_citys` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='城市信息表(勿清)';

-- ----------------------------
-- Records of tab_china_citys
-- ----------------------------
INSERT INTO `tab_china_citys` VALUES ('0', '中国', '-1');
INSERT INTO `tab_china_citys` VALUES ('110000', '北京市', '0');
INSERT INTO `tab_china_citys` VALUES ('110100', '东城区', '110000');
INSERT INTO `tab_china_citys` VALUES ('110200', '西城区', '110000');
INSERT INTO `tab_china_citys` VALUES ('110500', '朝阳区', '110000');
INSERT INTO `tab_china_citys` VALUES ('110600', '丰台区', '110000');
INSERT INTO `tab_china_citys` VALUES ('110700', '石景山区', '110000');
INSERT INTO `tab_china_citys` VALUES ('110800', '海淀区', '110000');
INSERT INTO `tab_china_citys` VALUES ('110900', '门头沟区', '110000');
INSERT INTO `tab_china_citys` VALUES ('111100', '房山区', '110000');
INSERT INTO `tab_china_citys` VALUES ('111200', '通州区', '110000');
INSERT INTO `tab_china_citys` VALUES ('111300', '顺义区', '110000');
INSERT INTO `tab_china_citys` VALUES ('111400', '昌平区', '110000');
INSERT INTO `tab_china_citys` VALUES ('111500', '大兴区', '110000');
INSERT INTO `tab_china_citys` VALUES ('111600', '怀柔区', '110000');
INSERT INTO `tab_china_citys` VALUES ('111700', '平谷区', '110000');
INSERT INTO `tab_china_citys` VALUES ('112800', '密云县', '110000');
INSERT INTO `tab_china_citys` VALUES ('112900', '延庆县', '110000');
INSERT INTO `tab_china_citys` VALUES ('120000', '天津市', '0');
INSERT INTO `tab_china_citys` VALUES ('120100', '和平区', '120000');
INSERT INTO `tab_china_citys` VALUES ('120200', '河东区', '120000');
INSERT INTO `tab_china_citys` VALUES ('120300', '河西区', '120000');
INSERT INTO `tab_china_citys` VALUES ('120400', '南开区', '120000');
INSERT INTO `tab_china_citys` VALUES ('120500', '河北区', '120000');
INSERT INTO `tab_china_citys` VALUES ('120600', '红桥区', '120000');
INSERT INTO `tab_china_citys` VALUES ('120900', '滨海新区', '120000');
INSERT INTO `tab_china_citys` VALUES ('121000', '东丽区', '120000');
INSERT INTO `tab_china_citys` VALUES ('121100', '西青区', '120000');
INSERT INTO `tab_china_citys` VALUES ('121200', '津南区', '120000');
INSERT INTO `tab_china_citys` VALUES ('121300', '北辰区', '120000');
INSERT INTO `tab_china_citys` VALUES ('121400', '武清区', '120000');
INSERT INTO `tab_china_citys` VALUES ('121500', '宝坻区', '120000');
INSERT INTO `tab_china_citys` VALUES ('122100', '宁河县', '120000');
INSERT INTO `tab_china_citys` VALUES ('122300', '静海县', '120000');
INSERT INTO `tab_china_citys` VALUES ('122500', '蓟县', '120000');
INSERT INTO `tab_china_citys` VALUES ('130000', '河北省', '0');
INSERT INTO `tab_china_citys` VALUES ('130100', '石家庄市', '130000');
INSERT INTO `tab_china_citys` VALUES ('130101', '市辖区', '130100');
INSERT INTO `tab_china_citys` VALUES ('130102', '长安区', '130101');
INSERT INTO `tab_china_citys` VALUES ('130103', '桥东区', '130101');
INSERT INTO `tab_china_citys` VALUES ('130104', '桥西区', '130101');
INSERT INTO `tab_china_citys` VALUES ('130105', '新华区', '130101');
INSERT INTO `tab_china_citys` VALUES ('130107', '井陉矿区', '130101');
INSERT INTO `tab_china_citys` VALUES ('130108', '裕华区', '130101');
INSERT INTO `tab_china_citys` VALUES ('130121', '井陉县', '130100');
INSERT INTO `tab_china_citys` VALUES ('130123', '正定县', '130100');
INSERT INTO `tab_china_citys` VALUES ('130124', '栾城县', '130100');
INSERT INTO `tab_china_citys` VALUES ('130125', '行唐县', '130100');
INSERT INTO `tab_china_citys` VALUES ('130126', '灵寿县', '130100');
INSERT INTO `tab_china_citys` VALUES ('130127', '高邑县', '130100');
INSERT INTO `tab_china_citys` VALUES ('130128', '深泽县', '130100');
INSERT INTO `tab_china_citys` VALUES ('130129', '赞皇县', '130100');
INSERT INTO `tab_china_citys` VALUES ('130130', '无极县', '130100');
INSERT INTO `tab_china_citys` VALUES ('130131', '平山县', '130100');
INSERT INTO `tab_china_citys` VALUES ('130132', '元氏县', '130100');
INSERT INTO `tab_china_citys` VALUES ('130133', '赵县', '130100');
INSERT INTO `tab_china_citys` VALUES ('130181', '辛集市', '130100');
INSERT INTO `tab_china_citys` VALUES ('130182', '藁城市', '130100');
INSERT INTO `tab_china_citys` VALUES ('130183', '晋州市', '130100');
INSERT INTO `tab_china_citys` VALUES ('130184', '新乐市', '130100');
INSERT INTO `tab_china_citys` VALUES ('130185', '鹿泉市', '130100');
INSERT INTO `tab_china_citys` VALUES ('130200', '唐山市', '130000');
INSERT INTO `tab_china_citys` VALUES ('130201', '市辖区', '130200');
INSERT INTO `tab_china_citys` VALUES ('130202', '路南区', '130201');
INSERT INTO `tab_china_citys` VALUES ('130203', '路北区', '130201');
INSERT INTO `tab_china_citys` VALUES ('130204', '古冶区', '130201');
INSERT INTO `tab_china_citys` VALUES ('130205', '开平区', '130201');
INSERT INTO `tab_china_citys` VALUES ('130207', '丰南区', '130201');
INSERT INTO `tab_china_citys` VALUES ('130208', '丰润区', '130201');
INSERT INTO `tab_china_citys` VALUES ('130223', '滦县', '130200');
INSERT INTO `tab_china_citys` VALUES ('130224', '滦南县', '130200');
INSERT INTO `tab_china_citys` VALUES ('130225', '乐亭县', '130200');
INSERT INTO `tab_china_citys` VALUES ('130227', '迁西县', '130200');
INSERT INTO `tab_china_citys` VALUES ('130229', '玉田县', '130200');
INSERT INTO `tab_china_citys` VALUES ('130230', '唐海县', '130200');
INSERT INTO `tab_china_citys` VALUES ('130281', '遵化市', '130200');
INSERT INTO `tab_china_citys` VALUES ('130283', '迁安市', '130200');
INSERT INTO `tab_china_citys` VALUES ('130300', '秦皇岛市', '130000');
INSERT INTO `tab_china_citys` VALUES ('130301', '海港区', '130300');
INSERT INTO `tab_china_citys` VALUES ('130303', '山海关区', '130300');
INSERT INTO `tab_china_citys` VALUES ('130304', '北戴河区', '130300');
INSERT INTO `tab_china_citys` VALUES ('130321', '青龙满族自治县', '130300');
INSERT INTO `tab_china_citys` VALUES ('130322', '昌黎县', '130300');
INSERT INTO `tab_china_citys` VALUES ('130323', '抚宁县', '130300');
INSERT INTO `tab_china_citys` VALUES ('130324', '卢龙县', '130300');
INSERT INTO `tab_china_citys` VALUES ('130400', '邯郸市', '130000');
INSERT INTO `tab_china_citys` VALUES ('130401', '市辖区', '130400');
INSERT INTO `tab_china_citys` VALUES ('130402', '邯山区', '130401');
INSERT INTO `tab_china_citys` VALUES ('130403', '丛台区', '130401');
INSERT INTO `tab_china_citys` VALUES ('130404', '复兴区', '130401');
INSERT INTO `tab_china_citys` VALUES ('130406', '峰峰矿区', '130401');
INSERT INTO `tab_china_citys` VALUES ('130421', '邯郸县', '130400');
INSERT INTO `tab_china_citys` VALUES ('130423', '临漳县', '130400');
INSERT INTO `tab_china_citys` VALUES ('130424', '成安县', '130400');
INSERT INTO `tab_china_citys` VALUES ('130425', '大名县', '130400');
INSERT INTO `tab_china_citys` VALUES ('130426', '涉县', '130400');
INSERT INTO `tab_china_citys` VALUES ('130427', '磁县', '130400');
INSERT INTO `tab_china_citys` VALUES ('130428', '肥乡县', '130400');
INSERT INTO `tab_china_citys` VALUES ('130429', '永年县', '130400');
INSERT INTO `tab_china_citys` VALUES ('130430', '邱县', '130400');
INSERT INTO `tab_china_citys` VALUES ('130431', '鸡泽县', '130400');
INSERT INTO `tab_china_citys` VALUES ('130432', '广平县', '130400');
INSERT INTO `tab_china_citys` VALUES ('130433', '馆陶县', '130400');
INSERT INTO `tab_china_citys` VALUES ('130434', '魏县', '130400');
INSERT INTO `tab_china_citys` VALUES ('130435', '曲周县', '130400');
INSERT INTO `tab_china_citys` VALUES ('130481', '武安市', '130400');
INSERT INTO `tab_china_citys` VALUES ('130500', '邢台市', '130000');
INSERT INTO `tab_china_citys` VALUES ('130501', '市辖区', '130500');
INSERT INTO `tab_china_citys` VALUES ('130502', '桥东区', '130501');
INSERT INTO `tab_china_citys` VALUES ('130503', '桥西区', '130501');
INSERT INTO `tab_china_citys` VALUES ('130521', '邢台县', '130500');
INSERT INTO `tab_china_citys` VALUES ('130522', '临城县', '130500');
INSERT INTO `tab_china_citys` VALUES ('130523', '内丘县', '130500');
INSERT INTO `tab_china_citys` VALUES ('130524', '柏乡县', '130500');
INSERT INTO `tab_china_citys` VALUES ('130525', '隆尧县', '130500');
INSERT INTO `tab_china_citys` VALUES ('130526', '任县', '130500');
INSERT INTO `tab_china_citys` VALUES ('130527', '南和县', '130500');
INSERT INTO `tab_china_citys` VALUES ('130528', '宁晋县', '130500');
INSERT INTO `tab_china_citys` VALUES ('130529', '巨鹿县', '130529');
INSERT INTO `tab_china_citys` VALUES ('130530', '新河县', '130500');
INSERT INTO `tab_china_citys` VALUES ('130531', '广宗县', '130500');
INSERT INTO `tab_china_citys` VALUES ('130532', '平乡县', '130500');
INSERT INTO `tab_china_citys` VALUES ('130533', '威县', '130500');
INSERT INTO `tab_china_citys` VALUES ('130534', '清河县', '130500');
INSERT INTO `tab_china_citys` VALUES ('130535', '临西县', '130500');
INSERT INTO `tab_china_citys` VALUES ('130581', '南宫市', '130500');
INSERT INTO `tab_china_citys` VALUES ('130582', '沙河市', '130500');
INSERT INTO `tab_china_citys` VALUES ('130600', '保定市', '130000');
INSERT INTO `tab_china_citys` VALUES ('130601', '新市区', '130600');
INSERT INTO `tab_china_citys` VALUES ('130603', '北市区', '130600');
INSERT INTO `tab_china_citys` VALUES ('130604', '南市区', '130600');
INSERT INTO `tab_china_citys` VALUES ('130621', '满城县', '130600');
INSERT INTO `tab_china_citys` VALUES ('130622', '清苑县', '130600');
INSERT INTO `tab_china_citys` VALUES ('130623', '涞水县', '130600');
INSERT INTO `tab_china_citys` VALUES ('130624', '阜平县', '130600');
INSERT INTO `tab_china_citys` VALUES ('130625', '徐水县', '130600');
INSERT INTO `tab_china_citys` VALUES ('130626', '定兴县', '130600');
INSERT INTO `tab_china_citys` VALUES ('130627', '唐县', '130600');
INSERT INTO `tab_china_citys` VALUES ('130628', '高阳县', '130600');
INSERT INTO `tab_china_citys` VALUES ('130629', '容城县', '130600');
INSERT INTO `tab_china_citys` VALUES ('130630', '涞源县', '130600');
INSERT INTO `tab_china_citys` VALUES ('130631', '望都县', '130600');
INSERT INTO `tab_china_citys` VALUES ('130632', '安新县', '130600');
INSERT INTO `tab_china_citys` VALUES ('130633', '易县', '130600');
INSERT INTO `tab_china_citys` VALUES ('130634', '曲阳县', '130600');
INSERT INTO `tab_china_citys` VALUES ('130635', '蠡县', '130600');
INSERT INTO `tab_china_citys` VALUES ('130636', '顺平县', '130600');
INSERT INTO `tab_china_citys` VALUES ('130637', '博野县', '130600');
INSERT INTO `tab_china_citys` VALUES ('130638', '雄县', '130600');
INSERT INTO `tab_china_citys` VALUES ('130681', '涿州市', '130600');
INSERT INTO `tab_china_citys` VALUES ('130682', '定州市', '130600');
INSERT INTO `tab_china_citys` VALUES ('130683', '安国市', '130600');
INSERT INTO `tab_china_citys` VALUES ('130684', '高碑店市', '130600');
INSERT INTO `tab_china_citys` VALUES ('130685', '白沟新城县', '130600');
INSERT INTO `tab_china_citys` VALUES ('130700', '张家口市', '130000');
INSERT INTO `tab_china_citys` VALUES ('130701', '市辖区', '130700');
INSERT INTO `tab_china_citys` VALUES ('130702', '桥东区', '130701');
INSERT INTO `tab_china_citys` VALUES ('130703', '桥西区', '130701');
INSERT INTO `tab_china_citys` VALUES ('130705', '宣化区', '130701');
INSERT INTO `tab_china_citys` VALUES ('130706', '下花园区', '130701');
INSERT INTO `tab_china_citys` VALUES ('130721', '宣化县', '130700');
INSERT INTO `tab_china_citys` VALUES ('130722', '张北县', '130700');
INSERT INTO `tab_china_citys` VALUES ('130723', '康保县', '130700');
INSERT INTO `tab_china_citys` VALUES ('130724', '沽源县', '130700');
INSERT INTO `tab_china_citys` VALUES ('130725', '尚义县', '130700');
INSERT INTO `tab_china_citys` VALUES ('130726', '蔚县', '130700');
INSERT INTO `tab_china_citys` VALUES ('130727', '阳原县', '130700');
INSERT INTO `tab_china_citys` VALUES ('130728', '怀安县', '130700');
INSERT INTO `tab_china_citys` VALUES ('130729', '万全县', '130700');
INSERT INTO `tab_china_citys` VALUES ('130730', '怀来县', '130700');
INSERT INTO `tab_china_citys` VALUES ('130731', '涿鹿县', '130700');
INSERT INTO `tab_china_citys` VALUES ('130732', '赤城县', '130700');
INSERT INTO `tab_china_citys` VALUES ('130733', '崇礼县', '130700');
INSERT INTO `tab_china_citys` VALUES ('130800', '承德市', '130000');
INSERT INTO `tab_china_citys` VALUES ('130801', '市辖区', '130800');
INSERT INTO `tab_china_citys` VALUES ('130802', '双桥区', '130801');
INSERT INTO `tab_china_citys` VALUES ('130803', '双滦区', '130801');
INSERT INTO `tab_china_citys` VALUES ('130804', '鹰手营子矿区', '130801');
INSERT INTO `tab_china_citys` VALUES ('130821', '承德县', '130800');
INSERT INTO `tab_china_citys` VALUES ('130822', '兴隆县', '130800');
INSERT INTO `tab_china_citys` VALUES ('130823', '平泉县', '130800');
INSERT INTO `tab_china_citys` VALUES ('130824', '滦平县', '130800');
INSERT INTO `tab_china_citys` VALUES ('130825', '隆化县', '130800');
INSERT INTO `tab_china_citys` VALUES ('130826', '丰宁满族自治县', '130800');
INSERT INTO `tab_china_citys` VALUES ('130827', '宽城满族自治县', '130800');
INSERT INTO `tab_china_citys` VALUES ('130828', '围场满族蒙古族自治县', '130800');
INSERT INTO `tab_china_citys` VALUES ('130900', '沧州市', '130000');
INSERT INTO `tab_china_citys` VALUES ('130901', '市辖区', '130900');
INSERT INTO `tab_china_citys` VALUES ('130902', '新华区', '130901');
INSERT INTO `tab_china_citys` VALUES ('130903', '运河区', '130901');
INSERT INTO `tab_china_citys` VALUES ('130921', '沧县', '130900');
INSERT INTO `tab_china_citys` VALUES ('130922', '青县', '130900');
INSERT INTO `tab_china_citys` VALUES ('130923', '东光县', '130900');
INSERT INTO `tab_china_citys` VALUES ('130924', '海兴县', '130900');
INSERT INTO `tab_china_citys` VALUES ('130925', '盐山县', '130900');
INSERT INTO `tab_china_citys` VALUES ('130926', '肃宁县', '130900');
INSERT INTO `tab_china_citys` VALUES ('130927', '南皮县', '130900');
INSERT INTO `tab_china_citys` VALUES ('130928', '吴桥县', '130900');
INSERT INTO `tab_china_citys` VALUES ('130929', '献县', '130900');
INSERT INTO `tab_china_citys` VALUES ('130930', '孟村回族自治县', '130900');
INSERT INTO `tab_china_citys` VALUES ('130981', '泊头市', '130900');
INSERT INTO `tab_china_citys` VALUES ('130982', '任丘市', '130900');
INSERT INTO `tab_china_citys` VALUES ('130983', '黄骅市', '130900');
INSERT INTO `tab_china_citys` VALUES ('130984', '河间市', '130900');
INSERT INTO `tab_china_citys` VALUES ('131000', '廊坊市', '130000');
INSERT INTO `tab_china_citys` VALUES ('131001', '市辖区', '131000');
INSERT INTO `tab_china_citys` VALUES ('131002', '安次区', '131001');
INSERT INTO `tab_china_citys` VALUES ('131003', '广阳区', '131001');
INSERT INTO `tab_china_citys` VALUES ('131022', '固安县', '131000');
INSERT INTO `tab_china_citys` VALUES ('131023', '永清县', '131000');
INSERT INTO `tab_china_citys` VALUES ('131024', '香河县', '131000');
INSERT INTO `tab_china_citys` VALUES ('131025', '大城县', '131000');
INSERT INTO `tab_china_citys` VALUES ('131026', '文安县', '131000');
INSERT INTO `tab_china_citys` VALUES ('131028', '大厂回族自治县', '131000');
INSERT INTO `tab_china_citys` VALUES ('131081', '霸州市', '131000');
INSERT INTO `tab_china_citys` VALUES ('131082', '三河市', '131000');
INSERT INTO `tab_china_citys` VALUES ('131100', '衡水市', '130000');
INSERT INTO `tab_china_citys` VALUES ('131101', '市辖区', '131100');
INSERT INTO `tab_china_citys` VALUES ('131102', '桃城区', '131101');
INSERT INTO `tab_china_citys` VALUES ('131121', '枣强县', '131100');
INSERT INTO `tab_china_citys` VALUES ('131122', '武邑县', '131100');
INSERT INTO `tab_china_citys` VALUES ('131123', '武强县', '131100');
INSERT INTO `tab_china_citys` VALUES ('131124', '饶阳县', '131100');
INSERT INTO `tab_china_citys` VALUES ('131125', '安平县', '131100');
INSERT INTO `tab_china_citys` VALUES ('131126', '故城县', '131100');
INSERT INTO `tab_china_citys` VALUES ('131127', '景县', '131100');
INSERT INTO `tab_china_citys` VALUES ('131128', '阜城县', '131100');
INSERT INTO `tab_china_citys` VALUES ('131181', '冀州市', '131100');
INSERT INTO `tab_china_citys` VALUES ('131182', '深州市', '131100');
INSERT INTO `tab_china_citys` VALUES ('140000', '山西省', '0');
INSERT INTO `tab_china_citys` VALUES ('140100', '太原市', '140000');
INSERT INTO `tab_china_citys` VALUES ('140101', '市辖区', '140100');
INSERT INTO `tab_china_citys` VALUES ('140105', '小店区', '140101');
INSERT INTO `tab_china_citys` VALUES ('140106', '迎泽区', '140101');
INSERT INTO `tab_china_citys` VALUES ('140107', '杏花岭区', '140101');
INSERT INTO `tab_china_citys` VALUES ('140108', '尖草坪区', '140101');
INSERT INTO `tab_china_citys` VALUES ('140109', '万柏林区', '140101');
INSERT INTO `tab_china_citys` VALUES ('140110', '晋源区', '140101');
INSERT INTO `tab_china_citys` VALUES ('140121', '清徐县', '140100');
INSERT INTO `tab_china_citys` VALUES ('140122', '阳曲县', '140100');
INSERT INTO `tab_china_citys` VALUES ('140123', '娄烦县', '140100');
INSERT INTO `tab_china_citys` VALUES ('140181', '古交市', '140100');
INSERT INTO `tab_china_citys` VALUES ('140200', '大同市', '140000');
INSERT INTO `tab_china_citys` VALUES ('140201', '市辖区', '140200');
INSERT INTO `tab_china_citys` VALUES ('140202', '城区', '140201');
INSERT INTO `tab_china_citys` VALUES ('140203', '矿区', '140201');
INSERT INTO `tab_china_citys` VALUES ('140211', '南郊区', '140201');
INSERT INTO `tab_china_citys` VALUES ('140212', '新荣区', '140201');
INSERT INTO `tab_china_citys` VALUES ('140221', '阳高县', '140200');
INSERT INTO `tab_china_citys` VALUES ('140222', '天镇县', '140200');
INSERT INTO `tab_china_citys` VALUES ('140223', '广灵县', '140200');
INSERT INTO `tab_china_citys` VALUES ('140224', '灵丘县', '140200');
INSERT INTO `tab_china_citys` VALUES ('140225', '浑源县', '140200');
INSERT INTO `tab_china_citys` VALUES ('140226', '左云县', '140200');
INSERT INTO `tab_china_citys` VALUES ('140227', '大同县', '140200');
INSERT INTO `tab_china_citys` VALUES ('140300', '阳泉市', '140000');
INSERT INTO `tab_china_citys` VALUES ('140301', '市辖区', '140300');
INSERT INTO `tab_china_citys` VALUES ('140302', '城区', '140301');
INSERT INTO `tab_china_citys` VALUES ('140303', '矿区', '140301');
INSERT INTO `tab_china_citys` VALUES ('140311', '郊区', '140301');
INSERT INTO `tab_china_citys` VALUES ('140321', '平定县', '140300');
INSERT INTO `tab_china_citys` VALUES ('140322', '盂县', '140300');
INSERT INTO `tab_china_citys` VALUES ('140400', '长治市', '140000');
INSERT INTO `tab_china_citys` VALUES ('140401', '市辖区', '140400');
INSERT INTO `tab_china_citys` VALUES ('140402', '城区', '140401');
INSERT INTO `tab_china_citys` VALUES ('140411', '郊区', '140401');
INSERT INTO `tab_china_citys` VALUES ('140421', '长治县', '140400');
INSERT INTO `tab_china_citys` VALUES ('140423', '襄垣县', '140400');
INSERT INTO `tab_china_citys` VALUES ('140424', '屯留县', '140400');
INSERT INTO `tab_china_citys` VALUES ('140425', '平顺县', '140400');
INSERT INTO `tab_china_citys` VALUES ('140426', '黎城县', '140400');
INSERT INTO `tab_china_citys` VALUES ('140427', '壶关县', '140400');
INSERT INTO `tab_china_citys` VALUES ('140428', '长子县', '140400');
INSERT INTO `tab_china_citys` VALUES ('140429', '武乡县', '140400');
INSERT INTO `tab_china_citys` VALUES ('140430', '沁县', '140400');
INSERT INTO `tab_china_citys` VALUES ('140431', '沁源县', '140400');
INSERT INTO `tab_china_citys` VALUES ('140481', '潞城市', '140400');
INSERT INTO `tab_china_citys` VALUES ('140500', '晋城市', '140000');
INSERT INTO `tab_china_citys` VALUES ('140501', '市辖区', '140500');
INSERT INTO `tab_china_citys` VALUES ('140502', '城区', '140501');
INSERT INTO `tab_china_citys` VALUES ('140521', '沁水县', '140500');
INSERT INTO `tab_china_citys` VALUES ('140522', '阳城县', '140500');
INSERT INTO `tab_china_citys` VALUES ('140524', '陵川县', '140500');
INSERT INTO `tab_china_citys` VALUES ('140525', '泽州县', '140500');
INSERT INTO `tab_china_citys` VALUES ('140581', '高平市', '140500');
INSERT INTO `tab_china_citys` VALUES ('140600', '朔州市', '140000');
INSERT INTO `tab_china_citys` VALUES ('140601', '市辖区', '140600');
INSERT INTO `tab_china_citys` VALUES ('140602', '朔城区', '140601');
INSERT INTO `tab_china_citys` VALUES ('140603', '平鲁区', '140601');
INSERT INTO `tab_china_citys` VALUES ('140621', '山阴县', '140600');
INSERT INTO `tab_china_citys` VALUES ('140622', '应县', '140600');
INSERT INTO `tab_china_citys` VALUES ('140623', '右玉县', '140600');
INSERT INTO `tab_china_citys` VALUES ('140624', '怀仁县', '140600');
INSERT INTO `tab_china_citys` VALUES ('140700', '晋中市', '140000');
INSERT INTO `tab_china_citys` VALUES ('140701', '市辖区', '140700');
INSERT INTO `tab_china_citys` VALUES ('140702', '榆次区', '140701');
INSERT INTO `tab_china_citys` VALUES ('140721', '榆社县', '140700');
INSERT INTO `tab_china_citys` VALUES ('140722', '左权县', '140700');
INSERT INTO `tab_china_citys` VALUES ('140723', '和顺县', '140700');
INSERT INTO `tab_china_citys` VALUES ('140724', '昔阳县', '140700');
INSERT INTO `tab_china_citys` VALUES ('140725', '寿阳县', '140700');
INSERT INTO `tab_china_citys` VALUES ('140726', '太谷县', '140700');
INSERT INTO `tab_china_citys` VALUES ('140727', '祁县', '140700');
INSERT INTO `tab_china_citys` VALUES ('140728', '平遥县', '140700');
INSERT INTO `tab_china_citys` VALUES ('140729', '灵石县', '140700');
INSERT INTO `tab_china_citys` VALUES ('140781', '介休市', '140700');
INSERT INTO `tab_china_citys` VALUES ('140800', '运城市', '140000');
INSERT INTO `tab_china_citys` VALUES ('140801', '市辖区', '140800');
INSERT INTO `tab_china_citys` VALUES ('140802', '盐湖区', '140801');
INSERT INTO `tab_china_citys` VALUES ('140821', '临猗县', '140800');
INSERT INTO `tab_china_citys` VALUES ('140822', '万荣县', '140800');
INSERT INTO `tab_china_citys` VALUES ('140823', '闻喜县', '140800');
INSERT INTO `tab_china_citys` VALUES ('140824', '稷山县', '140800');
INSERT INTO `tab_china_citys` VALUES ('140825', '新绛县', '140800');
INSERT INTO `tab_china_citys` VALUES ('140826', '绛县', '140800');
INSERT INTO `tab_china_citys` VALUES ('140827', '垣曲县', '140800');
INSERT INTO `tab_china_citys` VALUES ('140828', '夏县', '140800');
INSERT INTO `tab_china_citys` VALUES ('140829', '平陆县', '140800');
INSERT INTO `tab_china_citys` VALUES ('140830', '芮城县', '140800');
INSERT INTO `tab_china_citys` VALUES ('140881', '永济市', '140800');
INSERT INTO `tab_china_citys` VALUES ('140882', '河津市', '140800');
INSERT INTO `tab_china_citys` VALUES ('140900', '忻州市', '140000');
INSERT INTO `tab_china_citys` VALUES ('140901', '忻府区', '140900');
INSERT INTO `tab_china_citys` VALUES ('140921', '定襄县', '140900');
INSERT INTO `tab_china_citys` VALUES ('140922', '五台县', '140900');
INSERT INTO `tab_china_citys` VALUES ('140923', '代县', '140900');
INSERT INTO `tab_china_citys` VALUES ('140924', '繁峙县', '140900');
INSERT INTO `tab_china_citys` VALUES ('140925', '宁武县', '140900');
INSERT INTO `tab_china_citys` VALUES ('140926', '静乐县', '140900');
INSERT INTO `tab_china_citys` VALUES ('140927', '神池县', '140900');
INSERT INTO `tab_china_citys` VALUES ('140928', '五寨县', '140900');
INSERT INTO `tab_china_citys` VALUES ('140929', '岢岚县', '140900');
INSERT INTO `tab_china_citys` VALUES ('140930', '河曲县', '140900');
INSERT INTO `tab_china_citys` VALUES ('140931', '保德县', '140900');
INSERT INTO `tab_china_citys` VALUES ('140932', '偏关县', '140900');
INSERT INTO `tab_china_citys` VALUES ('140981', '原平市', '140900');
INSERT INTO `tab_china_citys` VALUES ('141000', '临汾市', '140000');
INSERT INTO `tab_china_citys` VALUES ('141001', '市辖区', '141000');
INSERT INTO `tab_china_citys` VALUES ('141002', '尧都区', '141000');
INSERT INTO `tab_china_citys` VALUES ('141021', '曲沃县', '141000');
INSERT INTO `tab_china_citys` VALUES ('141022', '翼城县', '141000');
INSERT INTO `tab_china_citys` VALUES ('141023', '襄汾县', '141000');
INSERT INTO `tab_china_citys` VALUES ('141024', '洪洞县', '141000');
INSERT INTO `tab_china_citys` VALUES ('141025', '古县', '141000');
INSERT INTO `tab_china_citys` VALUES ('141026', '安泽县', '141000');
INSERT INTO `tab_china_citys` VALUES ('141027', '浮山县', '141000');
INSERT INTO `tab_china_citys` VALUES ('141028', '吉县', '141000');
INSERT INTO `tab_china_citys` VALUES ('141029', '乡宁县', '141000');
INSERT INTO `tab_china_citys` VALUES ('141030', '大宁县', '141000');
INSERT INTO `tab_china_citys` VALUES ('141031', '隰县', '141000');
INSERT INTO `tab_china_citys` VALUES ('141032', '永和县', '141000');
INSERT INTO `tab_china_citys` VALUES ('141033', '蒲县', '141000');
INSERT INTO `tab_china_citys` VALUES ('141034', '汾西县', '141000');
INSERT INTO `tab_china_citys` VALUES ('141081', '侯马市', '141000');
INSERT INTO `tab_china_citys` VALUES ('141082', '霍州市', '141000');
INSERT INTO `tab_china_citys` VALUES ('141100', '吕梁市', '140000');
INSERT INTO `tab_china_citys` VALUES ('141101', '市辖区', '141100');
INSERT INTO `tab_china_citys` VALUES ('141102', '离石区', '141101');
INSERT INTO `tab_china_citys` VALUES ('141121', '文水县', '141100');
INSERT INTO `tab_china_citys` VALUES ('141122', '交城县', '141100');
INSERT INTO `tab_china_citys` VALUES ('141123', '兴县', '141100');
INSERT INTO `tab_china_citys` VALUES ('141124', '临县', '141100');
INSERT INTO `tab_china_citys` VALUES ('141125', '柳林县', '141100');
INSERT INTO `tab_china_citys` VALUES ('141126', '石楼县', '141100');
INSERT INTO `tab_china_citys` VALUES ('141127', '岚县', '141100');
INSERT INTO `tab_china_citys` VALUES ('141128', '方山县', '141100');
INSERT INTO `tab_china_citys` VALUES ('141129', '中阳县', '141100');
INSERT INTO `tab_china_citys` VALUES ('141130', '交口县', '141100');
INSERT INTO `tab_china_citys` VALUES ('141181', '孝义市', '141100');
INSERT INTO `tab_china_citys` VALUES ('141182', '汾阳市', '141100');
INSERT INTO `tab_china_citys` VALUES ('150000', '内蒙古自治区', '0');
INSERT INTO `tab_china_citys` VALUES ('150100', '呼和浩特市', '150000');
INSERT INTO `tab_china_citys` VALUES ('150101', '市辖区', '150100');
INSERT INTO `tab_china_citys` VALUES ('150102', '新城区', '150101');
INSERT INTO `tab_china_citys` VALUES ('150103', '回民区', '150101');
INSERT INTO `tab_china_citys` VALUES ('150104', '玉泉区', '150101');
INSERT INTO `tab_china_citys` VALUES ('150105', '赛罕区', '150101');
INSERT INTO `tab_china_citys` VALUES ('150121', '土默特左旗', '150100');
INSERT INTO `tab_china_citys` VALUES ('150122', '托克托县', '150100');
INSERT INTO `tab_china_citys` VALUES ('150123', '和林格尔县', '150100');
INSERT INTO `tab_china_citys` VALUES ('150124', '清水河县', '150100');
INSERT INTO `tab_china_citys` VALUES ('150125', '武川县', '150100');
INSERT INTO `tab_china_citys` VALUES ('150200', '包头市', '150000');
INSERT INTO `tab_china_citys` VALUES ('150201', '市辖区', '150200');
INSERT INTO `tab_china_citys` VALUES ('150202', '东河区', '150201');
INSERT INTO `tab_china_citys` VALUES ('150203', '昆都仑区', '150201');
INSERT INTO `tab_china_citys` VALUES ('150204', '青山区', '150201');
INSERT INTO `tab_china_citys` VALUES ('150205', '石拐区', '150201');
INSERT INTO `tab_china_citys` VALUES ('150206', '白云矿区', '150201');
INSERT INTO `tab_china_citys` VALUES ('150207', '九原区', '150201');
INSERT INTO `tab_china_citys` VALUES ('150221', '土默特右旗', '150200');
INSERT INTO `tab_china_citys` VALUES ('150222', '固阳县', '150200');
INSERT INTO `tab_china_citys` VALUES ('150223', '达尔罕茂明安联合旗', '150200');
INSERT INTO `tab_china_citys` VALUES ('150300', '乌海市', '150000');
INSERT INTO `tab_china_citys` VALUES ('150301', '市辖区', '150300');
INSERT INTO `tab_china_citys` VALUES ('150302', '海勃湾区', '150301');
INSERT INTO `tab_china_citys` VALUES ('150303', '海南区', '150301');
INSERT INTO `tab_china_citys` VALUES ('150304', '乌达区', '150301');
INSERT INTO `tab_china_citys` VALUES ('150400', '赤峰市', '150000');
INSERT INTO `tab_china_citys` VALUES ('150401', '市辖区', '150400');
INSERT INTO `tab_china_citys` VALUES ('150402', '红山区', '150401');
INSERT INTO `tab_china_citys` VALUES ('150403', '元宝山区', '150401');
INSERT INTO `tab_china_citys` VALUES ('150404', '松山区', '150401');
INSERT INTO `tab_china_citys` VALUES ('150421', '阿鲁科尔沁旗', '150400');
INSERT INTO `tab_china_citys` VALUES ('150422', '巴林左旗', '150400');
INSERT INTO `tab_china_citys` VALUES ('150423', '巴林右旗', '150400');
INSERT INTO `tab_china_citys` VALUES ('150424', '林西县', '150400');
INSERT INTO `tab_china_citys` VALUES ('150425', '克什克腾旗', '150400');
INSERT INTO `tab_china_citys` VALUES ('150426', '翁牛特旗', '150400');
INSERT INTO `tab_china_citys` VALUES ('150428', '喀喇沁旗', '150400');
INSERT INTO `tab_china_citys` VALUES ('150429', '宁城县', '150400');
INSERT INTO `tab_china_citys` VALUES ('150430', '敖汉旗', '150400');
INSERT INTO `tab_china_citys` VALUES ('150500', '通辽市', '150000');
INSERT INTO `tab_china_citys` VALUES ('150501', '市辖区', '150500');
INSERT INTO `tab_china_citys` VALUES ('150502', '科尔沁区', '150501');
INSERT INTO `tab_china_citys` VALUES ('150521', '科尔沁左翼中旗', '150500');
INSERT INTO `tab_china_citys` VALUES ('150522', '科尔沁左翼后旗', '150500');
INSERT INTO `tab_china_citys` VALUES ('150523', '开鲁县', '150500');
INSERT INTO `tab_china_citys` VALUES ('150524', '库伦旗', '150500');
INSERT INTO `tab_china_citys` VALUES ('150525', '奈曼旗', '150500');
INSERT INTO `tab_china_citys` VALUES ('150526', '扎鲁特旗', '150500');
INSERT INTO `tab_china_citys` VALUES ('150581', '霍林郭勒市', '150500');
INSERT INTO `tab_china_citys` VALUES ('150600', '鄂尔多斯市', '150000');
INSERT INTO `tab_china_citys` VALUES ('150602', '东胜区', '150600');
INSERT INTO `tab_china_citys` VALUES ('150621', '达拉特旗', '150600');
INSERT INTO `tab_china_citys` VALUES ('150622', '准格尔旗', '150600');
INSERT INTO `tab_china_citys` VALUES ('150623', '鄂托克前旗', '150600');
INSERT INTO `tab_china_citys` VALUES ('150624', '鄂托克旗', '150600');
INSERT INTO `tab_china_citys` VALUES ('150625', '杭锦旗', '150600');
INSERT INTO `tab_china_citys` VALUES ('150626', '乌审旗', '150600');
INSERT INTO `tab_china_citys` VALUES ('150627', '伊金霍洛旗', '150600');
INSERT INTO `tab_china_citys` VALUES ('150700', '呼伦贝尔市', '150000');
INSERT INTO `tab_china_citys` VALUES ('150701', '市辖区', '150700');
INSERT INTO `tab_china_citys` VALUES ('150702', '海拉尔区', '150701');
INSERT INTO `tab_china_citys` VALUES ('150721', '阿荣旗', '150700');
INSERT INTO `tab_china_citys` VALUES ('150722', '莫力达瓦达斡尔族自治旗', '150700');
INSERT INTO `tab_china_citys` VALUES ('150723', '鄂伦春自治旗', '150700');
INSERT INTO `tab_china_citys` VALUES ('150724', '鄂温克族自治旗', '150700');
INSERT INTO `tab_china_citys` VALUES ('150725', '陈巴尔虎旗', '150700');
INSERT INTO `tab_china_citys` VALUES ('150726', '新巴尔虎左旗', '150700');
INSERT INTO `tab_china_citys` VALUES ('150727', '新巴尔虎右旗', '150700');
INSERT INTO `tab_china_citys` VALUES ('150781', '满洲里市', '150700');
INSERT INTO `tab_china_citys` VALUES ('150782', '牙克石市', '150700');
INSERT INTO `tab_china_citys` VALUES ('150783', '扎兰屯市', '150700');
INSERT INTO `tab_china_citys` VALUES ('150784', '额尔古纳市', '150700');
INSERT INTO `tab_china_citys` VALUES ('150785', '根河市', '150700');
INSERT INTO `tab_china_citys` VALUES ('150800', '巴彦淖尔市', '150000');
INSERT INTO `tab_china_citys` VALUES ('150801', '市辖区', '150800');
INSERT INTO `tab_china_citys` VALUES ('150802', '临河区', '150800');
INSERT INTO `tab_china_citys` VALUES ('150821', '五原县', '150800');
INSERT INTO `tab_china_citys` VALUES ('150822', '磴口县', '150800');
INSERT INTO `tab_china_citys` VALUES ('150823', '乌拉特前旗', '150800');
INSERT INTO `tab_china_citys` VALUES ('150824', '乌拉特中旗', '150800');
INSERT INTO `tab_china_citys` VALUES ('150825', '乌拉特后旗', '150800');
INSERT INTO `tab_china_citys` VALUES ('150826', '杭锦后旗', '150800');
INSERT INTO `tab_china_citys` VALUES ('150900', '乌兰察布市', '150000');
INSERT INTO `tab_china_citys` VALUES ('150901', '市辖区', '150900');
INSERT INTO `tab_china_citys` VALUES ('150902', '集宁区', '150901');
INSERT INTO `tab_china_citys` VALUES ('150921', '卓资县', '150900');
INSERT INTO `tab_china_citys` VALUES ('150922', '化德县', '150900');
INSERT INTO `tab_china_citys` VALUES ('150923', '商都县', '150900');
INSERT INTO `tab_china_citys` VALUES ('150924', '兴和县', '150900');
INSERT INTO `tab_china_citys` VALUES ('150925', '凉城县', '150900');
INSERT INTO `tab_china_citys` VALUES ('150926', '察哈尔右翼前旗', '150900');
INSERT INTO `tab_china_citys` VALUES ('150927', '察哈尔右翼中旗', '150900');
INSERT INTO `tab_china_citys` VALUES ('150928', '察哈尔右翼后旗', '150900');
INSERT INTO `tab_china_citys` VALUES ('150929', '四子王旗', '150900');
INSERT INTO `tab_china_citys` VALUES ('150981', '丰镇市', '150900');
INSERT INTO `tab_china_citys` VALUES ('152200', '兴安盟', '150000');
INSERT INTO `tab_china_citys` VALUES ('152201', '乌兰浩特市', '152200');
INSERT INTO `tab_china_citys` VALUES ('152202', '阿尔山市', '152200');
INSERT INTO `tab_china_citys` VALUES ('152221', '科尔沁右翼前旗', '152200');
INSERT INTO `tab_china_citys` VALUES ('152222', '科尔沁右翼中旗', '152200');
INSERT INTO `tab_china_citys` VALUES ('152223', '扎赉特旗', '152200');
INSERT INTO `tab_china_citys` VALUES ('152224', '突泉县', '152200');
INSERT INTO `tab_china_citys` VALUES ('152500', '锡林郭勒盟', '150000');
INSERT INTO `tab_china_citys` VALUES ('152501', '二连浩特市', '152500');
INSERT INTO `tab_china_citys` VALUES ('152502', '锡林浩特市', '152500');
INSERT INTO `tab_china_citys` VALUES ('152522', '阿巴嘎旗', '152500');
INSERT INTO `tab_china_citys` VALUES ('152523', '苏尼特左旗', '152500');
INSERT INTO `tab_china_citys` VALUES ('152524', '苏尼特右旗', '152500');
INSERT INTO `tab_china_citys` VALUES ('152525', '东乌珠穆沁旗', '152500');
INSERT INTO `tab_china_citys` VALUES ('152526', '西乌珠穆沁旗', '152500');
INSERT INTO `tab_china_citys` VALUES ('152527', '太仆寺旗', '152500');
INSERT INTO `tab_china_citys` VALUES ('152528', '镶黄旗', '152500');
INSERT INTO `tab_china_citys` VALUES ('152529', '正镶白旗', '152500');
INSERT INTO `tab_china_citys` VALUES ('152530', '正蓝旗', '152500');
INSERT INTO `tab_china_citys` VALUES ('152531', '多伦县', '152500');
INSERT INTO `tab_china_citys` VALUES ('152900', '阿拉善盟', '150000');
INSERT INTO `tab_china_citys` VALUES ('152921', '阿拉善左旗', '152900');
INSERT INTO `tab_china_citys` VALUES ('152922', '阿拉善右旗', '152900');
INSERT INTO `tab_china_citys` VALUES ('152923', '额济纳旗', '152900');
INSERT INTO `tab_china_citys` VALUES ('210000', '辽宁省', '0');
INSERT INTO `tab_china_citys` VALUES ('210100', '沈阳市', '210000');
INSERT INTO `tab_china_citys` VALUES ('210101', '市辖区', '210100');
INSERT INTO `tab_china_citys` VALUES ('210102', '和平区', '210101');
INSERT INTO `tab_china_citys` VALUES ('210103', '沈河区', '210101');
INSERT INTO `tab_china_citys` VALUES ('210104', '大东区', '210101');
INSERT INTO `tab_china_citys` VALUES ('210105', '皇姑区', '210101');
INSERT INTO `tab_china_citys` VALUES ('210106', '铁西区', '210101');
INSERT INTO `tab_china_citys` VALUES ('210111', '苏家屯区', '210101');
INSERT INTO `tab_china_citys` VALUES ('210112', '东陵区', '210101');
INSERT INTO `tab_china_citys` VALUES ('210113', '新城子区', '210101');
INSERT INTO `tab_china_citys` VALUES ('210114', '于洪区', '210101');
INSERT INTO `tab_china_citys` VALUES ('210122', '辽中县', '210100');
INSERT INTO `tab_china_citys` VALUES ('210123', '康平县', '210100');
INSERT INTO `tab_china_citys` VALUES ('210124', '法库县', '210100');
INSERT INTO `tab_china_citys` VALUES ('210181', '新民市', '210100');
INSERT INTO `tab_china_citys` VALUES ('210182', '沈北新区', '210100');
INSERT INTO `tab_china_citys` VALUES ('210200', '大连市', '210000');
INSERT INTO `tab_china_citys` VALUES ('210201', '市辖区', '210200');
INSERT INTO `tab_china_citys` VALUES ('210202', '中山区', '210201');
INSERT INTO `tab_china_citys` VALUES ('210203', '西岗区', '210201');
INSERT INTO `tab_china_citys` VALUES ('210204', '沙河口区', '210201');
INSERT INTO `tab_china_citys` VALUES ('210211', '甘井子区', '210201');
INSERT INTO `tab_china_citys` VALUES ('210212', '旅顺口区', '210201');
INSERT INTO `tab_china_citys` VALUES ('210213', '金州区', '210201');
INSERT INTO `tab_china_citys` VALUES ('210224', '长海县', '210200');
INSERT INTO `tab_china_citys` VALUES ('210281', '瓦房店市', '210200');
INSERT INTO `tab_china_citys` VALUES ('210282', '普兰店市', '210200');
INSERT INTO `tab_china_citys` VALUES ('210283', '庄河市', '210200');
INSERT INTO `tab_china_citys` VALUES ('210300', '鞍山市', '210000');
INSERT INTO `tab_china_citys` VALUES ('210301', '市辖区', '210300');
INSERT INTO `tab_china_citys` VALUES ('210302', '铁东区', '210301');
INSERT INTO `tab_china_citys` VALUES ('210303', '铁西区', '210301');
INSERT INTO `tab_china_citys` VALUES ('210304', '立山区', '210301');
INSERT INTO `tab_china_citys` VALUES ('210311', '千山区', '210301');
INSERT INTO `tab_china_citys` VALUES ('210321', '台安县', '210300');
INSERT INTO `tab_china_citys` VALUES ('210323', '岫岩满族自治县', '210300');
INSERT INTO `tab_china_citys` VALUES ('210381', '海城市', '210300');
INSERT INTO `tab_china_citys` VALUES ('210400', '抚顺市', '210000');
INSERT INTO `tab_china_citys` VALUES ('210401', '市辖区', '210400');
INSERT INTO `tab_china_citys` VALUES ('210402', '新抚区', '210401');
INSERT INTO `tab_china_citys` VALUES ('210403', '东洲区', '210401');
INSERT INTO `tab_china_citys` VALUES ('210404', '望花区', '210401');
INSERT INTO `tab_china_citys` VALUES ('210411', '顺城区', '210401');
INSERT INTO `tab_china_citys` VALUES ('210421', '抚顺县', '210400');
INSERT INTO `tab_china_citys` VALUES ('210422', '新宾满族自治县', '210400');
INSERT INTO `tab_china_citys` VALUES ('210423', '清原满族自治县', '210400');
INSERT INTO `tab_china_citys` VALUES ('210500', '本溪市', '210000');
INSERT INTO `tab_china_citys` VALUES ('210501', '市辖区', '210500');
INSERT INTO `tab_china_citys` VALUES ('210502', '平山区', '210501');
INSERT INTO `tab_china_citys` VALUES ('210503', '溪湖??', '210501');
INSERT INTO `tab_china_citys` VALUES ('210504', '明山区', '210501');
INSERT INTO `tab_china_citys` VALUES ('210505', '南芬区', '210501');
INSERT INTO `tab_china_citys` VALUES ('210521', '本溪满族自治县', '210500');
INSERT INTO `tab_china_citys` VALUES ('210522', '桓仁满族自治县', '210500');
INSERT INTO `tab_china_citys` VALUES ('210600', '丹东市', '210000');
INSERT INTO `tab_china_citys` VALUES ('210601', '市辖区', '210600');
INSERT INTO `tab_china_citys` VALUES ('210602', '元宝区', '210601');
INSERT INTO `tab_china_citys` VALUES ('210603', '振兴区', '210601');
INSERT INTO `tab_china_citys` VALUES ('210604', '振安区', '210601');
INSERT INTO `tab_china_citys` VALUES ('210624', '宽甸满族自治县', '210600');
INSERT INTO `tab_china_citys` VALUES ('210681', '东港市', '210600');
INSERT INTO `tab_china_citys` VALUES ('210682', '凤城市', '210600');
INSERT INTO `tab_china_citys` VALUES ('210700', '锦州市', '210000');
INSERT INTO `tab_china_citys` VALUES ('210701', '市辖区', '210700');
INSERT INTO `tab_china_citys` VALUES ('210702', '古塔区', '210701');
INSERT INTO `tab_china_citys` VALUES ('210703', '凌河区', '210701');
INSERT INTO `tab_china_citys` VALUES ('210711', '太和区', '210701');
INSERT INTO `tab_china_citys` VALUES ('210726', '黑山县', '210700');
INSERT INTO `tab_china_citys` VALUES ('210727', '义县', '210700');
INSERT INTO `tab_china_citys` VALUES ('210781', '凌海市', '210700');
INSERT INTO `tab_china_citys` VALUES ('210782', '北宁市', '210700');
INSERT INTO `tab_china_citys` VALUES ('210800', '营口市', '210000');
INSERT INTO `tab_china_citys` VALUES ('210801', '市辖区', '210800');
INSERT INTO `tab_china_citys` VALUES ('210802', '站前区', '210801');
INSERT INTO `tab_china_citys` VALUES ('210803', '西市区', '210801');
INSERT INTO `tab_china_citys` VALUES ('210804', '鲅鱼圈区', '210801');
INSERT INTO `tab_china_citys` VALUES ('210811', '老边区', '210801');
INSERT INTO `tab_china_citys` VALUES ('210881', '盖州市', '210800');
INSERT INTO `tab_china_citys` VALUES ('210882', '大石桥市', '210800');
INSERT INTO `tab_china_citys` VALUES ('210900', '阜新市', '210000');
INSERT INTO `tab_china_citys` VALUES ('210901', '市辖区', '210900');
INSERT INTO `tab_china_citys` VALUES ('210902', '海州区', '210901');
INSERT INTO `tab_china_citys` VALUES ('210903', '新邱区', '210901');
INSERT INTO `tab_china_citys` VALUES ('210904', '太平区', '210901');
INSERT INTO `tab_china_citys` VALUES ('210905', '清河门区', '210901');
INSERT INTO `tab_china_citys` VALUES ('210911', '细河区', '210901');
INSERT INTO `tab_china_citys` VALUES ('210921', '阜新蒙古族自治县', '210900');
INSERT INTO `tab_china_citys` VALUES ('210922', '彰武县', '210900');
INSERT INTO `tab_china_citys` VALUES ('211000', '辽阳市', '210000');
INSERT INTO `tab_china_citys` VALUES ('211001', '市辖区', '211000');
INSERT INTO `tab_china_citys` VALUES ('211002', '白塔区', '211001');
INSERT INTO `tab_china_citys` VALUES ('211003', '文圣区', '211001');
INSERT INTO `tab_china_citys` VALUES ('211004', '宏伟区', '211001');
INSERT INTO `tab_china_citys` VALUES ('211005', '弓长岭区', '211001');
INSERT INTO `tab_china_citys` VALUES ('211011', '太子河区', '211001');
INSERT INTO `tab_china_citys` VALUES ('211021', '辽阳县', '211000');
INSERT INTO `tab_china_citys` VALUES ('211081', '灯塔市', '211000');
INSERT INTO `tab_china_citys` VALUES ('211100', '盘锦市', '210000');
INSERT INTO `tab_china_citys` VALUES ('211101', '市辖区', '211100');
INSERT INTO `tab_china_citys` VALUES ('211102', '双台子区', '211101');
INSERT INTO `tab_china_citys` VALUES ('211103', '兴隆台区', '211101');
INSERT INTO `tab_china_citys` VALUES ('211121', '大洼县', '211100');
INSERT INTO `tab_china_citys` VALUES ('211122', '盘山县', '211100');
INSERT INTO `tab_china_citys` VALUES ('211200', '铁岭市', '210000');
INSERT INTO `tab_china_citys` VALUES ('211201', '市辖区', '211200');
INSERT INTO `tab_china_citys` VALUES ('211202', '银州区', '211201');
INSERT INTO `tab_china_citys` VALUES ('211204', '清河区', '211201');
INSERT INTO `tab_china_citys` VALUES ('211221', '铁岭县', '211200');
INSERT INTO `tab_china_citys` VALUES ('211223', '西丰县', '211200');
INSERT INTO `tab_china_citys` VALUES ('211224', '昌图县', '211200');
INSERT INTO `tab_china_citys` VALUES ('211281', '调兵山市', '211200');
INSERT INTO `tab_china_citys` VALUES ('211282', '开原市', '211200');
INSERT INTO `tab_china_citys` VALUES ('211300', '朝阳市', '210000');
INSERT INTO `tab_china_citys` VALUES ('211301', '市辖区', '211300');
INSERT INTO `tab_china_citys` VALUES ('211302', '双塔区', '211301');
INSERT INTO `tab_china_citys` VALUES ('211303', '龙城区', '211301');
INSERT INTO `tab_china_citys` VALUES ('211321', '朝阳县', '211300');
INSERT INTO `tab_china_citys` VALUES ('211322', '建平县', '211300');
INSERT INTO `tab_china_citys` VALUES ('211324', '喀喇沁左翼蒙古族自治县', '211300');
INSERT INTO `tab_china_citys` VALUES ('211381', '北票市', '211300');
INSERT INTO `tab_china_citys` VALUES ('211382', '凌源市', '211300');
INSERT INTO `tab_china_citys` VALUES ('211400', '葫芦岛市', '210000');
INSERT INTO `tab_china_citys` VALUES ('211401', '市辖区', '211400');
INSERT INTO `tab_china_citys` VALUES ('211402', '连山区', '211401');
INSERT INTO `tab_china_citys` VALUES ('211403', '龙港区', '211401');
INSERT INTO `tab_china_citys` VALUES ('211404', '南票区', '211401');
INSERT INTO `tab_china_citys` VALUES ('211421', '绥中县', '211400');
INSERT INTO `tab_china_citys` VALUES ('211422', '建昌县', '211400');
INSERT INTO `tab_china_citys` VALUES ('211481', '兴城市', '211400');
INSERT INTO `tab_china_citys` VALUES ('220000', '吉林省', '0');
INSERT INTO `tab_china_citys` VALUES ('220100', '长春市', '220000');
INSERT INTO `tab_china_citys` VALUES ('220101', '市辖区', '220100');
INSERT INTO `tab_china_citys` VALUES ('220102', '南关区', '220101');
INSERT INTO `tab_china_citys` VALUES ('220103', '宽城区', '220101');
INSERT INTO `tab_china_citys` VALUES ('220104', '朝阳区', '220101');
INSERT INTO `tab_china_citys` VALUES ('220105', '二道区', '220101');
INSERT INTO `tab_china_citys` VALUES ('220106', '绿园区', '220101');
INSERT INTO `tab_china_citys` VALUES ('220112', '双阳区', '220101');
INSERT INTO `tab_china_citys` VALUES ('220122', '农安县', '220100');
INSERT INTO `tab_china_citys` VALUES ('220181', '九台市', '220100');
INSERT INTO `tab_china_citys` VALUES ('220182', '榆树市', '220100');
INSERT INTO `tab_china_citys` VALUES ('220183', '德惠市', '220100');
INSERT INTO `tab_china_citys` VALUES ('220200', '吉林市', '220000');
INSERT INTO `tab_china_citys` VALUES ('220201', '市辖区', '220200');
INSERT INTO `tab_china_citys` VALUES ('220202', '昌邑区', '220201');
INSERT INTO `tab_china_citys` VALUES ('220203', '龙潭区', '220201');
INSERT INTO `tab_china_citys` VALUES ('220204', '船营区', '220201');
INSERT INTO `tab_china_citys` VALUES ('220211', '丰满区', '220201');
INSERT INTO `tab_china_citys` VALUES ('220221', '永吉县', '220200');
INSERT INTO `tab_china_citys` VALUES ('220281', '蛟河市', '220200');
INSERT INTO `tab_china_citys` VALUES ('220282', '桦甸市', '220200');
INSERT INTO `tab_china_citys` VALUES ('220283', '舒兰市', '220200');
INSERT INTO `tab_china_citys` VALUES ('220284', '磐石市', '220200');
INSERT INTO `tab_china_citys` VALUES ('220300', '四平市', '220000');
INSERT INTO `tab_china_citys` VALUES ('220301', '市辖区', '220300');
INSERT INTO `tab_china_citys` VALUES ('220302', '铁西区', '220301');
INSERT INTO `tab_china_citys` VALUES ('220303', '铁东区', '220301');
INSERT INTO `tab_china_citys` VALUES ('220322', '梨树县', '220300');
INSERT INTO `tab_china_citys` VALUES ('220323', '伊通满族自治县', '220300');
INSERT INTO `tab_china_citys` VALUES ('220381', '公主岭市', '220300');
INSERT INTO `tab_china_citys` VALUES ('220382', '双辽市', '220300');
INSERT INTO `tab_china_citys` VALUES ('220400', '辽源市', '220000');
INSERT INTO `tab_china_citys` VALUES ('220401', '市辖区', '220400');
INSERT INTO `tab_china_citys` VALUES ('220402', '龙山区', '220401');
INSERT INTO `tab_china_citys` VALUES ('220403', '西安区', '220401');
INSERT INTO `tab_china_citys` VALUES ('220421', '东丰县', '220400');
INSERT INTO `tab_china_citys` VALUES ('220422', '东辽县', '220400');
INSERT INTO `tab_china_citys` VALUES ('220500', '通化市', '220000');
INSERT INTO `tab_china_citys` VALUES ('220501', '市辖区', '220500');
INSERT INTO `tab_china_citys` VALUES ('220502', '东昌区', '220501');
INSERT INTO `tab_china_citys` VALUES ('220503', '二道江区', '220501');
INSERT INTO `tab_china_citys` VALUES ('220521', '通化县', '220500');
INSERT INTO `tab_china_citys` VALUES ('220523', '辉南县', '220500');
INSERT INTO `tab_china_citys` VALUES ('220524', '柳河县', '220500');
INSERT INTO `tab_china_citys` VALUES ('220581', '梅河口市', '220500');
INSERT INTO `tab_china_citys` VALUES ('220582', '集安市', '220500');
INSERT INTO `tab_china_citys` VALUES ('220600', '白山市', '220000');
INSERT INTO `tab_china_citys` VALUES ('220601', '市辖区', '220600');
INSERT INTO `tab_china_citys` VALUES ('220602', '八道江区', '220601');
INSERT INTO `tab_china_citys` VALUES ('220621', '抚松县', '220600');
INSERT INTO `tab_china_citys` VALUES ('220622', '靖宇县', '220600');
INSERT INTO `tab_china_citys` VALUES ('220623', '长白朝鲜族自治县', '220600');
INSERT INTO `tab_china_citys` VALUES ('220625', '江源区', '220600');
INSERT INTO `tab_china_citys` VALUES ('220681', '临江市', '220600');
INSERT INTO `tab_china_citys` VALUES ('220700', '松原市', '220000');
INSERT INTO `tab_china_citys` VALUES ('220701', '市辖区', '220700');
INSERT INTO `tab_china_citys` VALUES ('220702', '宁江区', '220701');
INSERT INTO `tab_china_citys` VALUES ('220721', '前郭尔罗斯蒙古族自治县', '220700');
INSERT INTO `tab_china_citys` VALUES ('220722', '长岭县', '220700');
INSERT INTO `tab_china_citys` VALUES ('220723', '乾安县', '220700');
INSERT INTO `tab_china_citys` VALUES ('220724', '扶余市', '220700');
INSERT INTO `tab_china_citys` VALUES ('220800', '白城市', '220000');
INSERT INTO `tab_china_citys` VALUES ('220801', '市辖区', '220800');
INSERT INTO `tab_china_citys` VALUES ('220802', '洮北区', '220800');
INSERT INTO `tab_china_citys` VALUES ('220821', '镇赉县', '220800');
INSERT INTO `tab_china_citys` VALUES ('220822', '通榆县', '220800');
INSERT INTO `tab_china_citys` VALUES ('220881', '洮南市', '220800');
INSERT INTO `tab_china_citys` VALUES ('220882', '大安市', '220800');
INSERT INTO `tab_china_citys` VALUES ('222400', '延边朝鲜族自治州', '220000');
INSERT INTO `tab_china_citys` VALUES ('222401', '延吉市', '222400');
INSERT INTO `tab_china_citys` VALUES ('222402', '图们市', '222400');
INSERT INTO `tab_china_citys` VALUES ('222403', '敦化市', '222400');
INSERT INTO `tab_china_citys` VALUES ('222404', '珲春市', '222400');
INSERT INTO `tab_china_citys` VALUES ('222405', '龙井市', '222400');
INSERT INTO `tab_china_citys` VALUES ('222406', '和龙市', '222400');
INSERT INTO `tab_china_citys` VALUES ('222424', '汪清县', '222400');
INSERT INTO `tab_china_citys` VALUES ('222426', '安图县', '222400');
INSERT INTO `tab_china_citys` VALUES ('230000', '黑龙江省', '0');
INSERT INTO `tab_china_citys` VALUES ('230100', '哈尔滨市', '230000');
INSERT INTO `tab_china_citys` VALUES ('230101', '市辖区', '230100');
INSERT INTO `tab_china_citys` VALUES ('230102', '道里区', '230101');
INSERT INTO `tab_china_citys` VALUES ('230103', '南岗区', '230101');
INSERT INTO `tab_china_citys` VALUES ('230104', '道外区', '230101');
INSERT INTO `tab_china_citys` VALUES ('230106', '香坊区', '230101');
INSERT INTO `tab_china_citys` VALUES ('230107', '动力区', '230101');
INSERT INTO `tab_china_citys` VALUES ('230108', '平房区', '230101');
INSERT INTO `tab_china_citys` VALUES ('230109', '松北区', '230101');
INSERT INTO `tab_china_citys` VALUES ('230111', '呼兰区', '230101');
INSERT INTO `tab_china_citys` VALUES ('230123', '依兰县', '230100');
INSERT INTO `tab_china_citys` VALUES ('230124', '方正县', '230100');
INSERT INTO `tab_china_citys` VALUES ('230125', '宾县', '230100');
INSERT INTO `tab_china_citys` VALUES ('230126', '巴彦县', '230100');
INSERT INTO `tab_china_citys` VALUES ('230127', '木兰县', '230100');
INSERT INTO `tab_china_citys` VALUES ('230128', '通河县', '230100');
INSERT INTO `tab_china_citys` VALUES ('230129', '延寿县', '230100');
INSERT INTO `tab_china_citys` VALUES ('230181', '阿城市', '230100');
INSERT INTO `tab_china_citys` VALUES ('230182', '双城市', '230100');
INSERT INTO `tab_china_citys` VALUES ('230183', '尚志市', '230100');
INSERT INTO `tab_china_citys` VALUES ('230184', '五常市', '230100');
INSERT INTO `tab_china_citys` VALUES ('230200', '齐齐哈尔市', '230000');
INSERT INTO `tab_china_citys` VALUES ('230201', '市辖区', '230200');
INSERT INTO `tab_china_citys` VALUES ('230202', '龙沙区', '230201');
INSERT INTO `tab_china_citys` VALUES ('230203', '建华区', '230201');
INSERT INTO `tab_china_citys` VALUES ('230204', '铁锋区', '230201');
INSERT INTO `tab_china_citys` VALUES ('230205', '昂昂溪区', '230201');
INSERT INTO `tab_china_citys` VALUES ('230206', '富拉尔基区', '230201');
INSERT INTO `tab_china_citys` VALUES ('230207', '碾子山区', '230201');
INSERT INTO `tab_china_citys` VALUES ('230208', '梅里斯达斡尔族区', '230201');
INSERT INTO `tab_china_citys` VALUES ('230221', '龙江县', '230200');
INSERT INTO `tab_china_citys` VALUES ('230223', '依安县', '230200');
INSERT INTO `tab_china_citys` VALUES ('230224', '泰来县', '230200');
INSERT INTO `tab_china_citys` VALUES ('230225', '甘南县', '230200');
INSERT INTO `tab_china_citys` VALUES ('230227', '富裕县', '230200');
INSERT INTO `tab_china_citys` VALUES ('230229', '克山县', '230200');
INSERT INTO `tab_china_citys` VALUES ('230230', '克东县', '230200');
INSERT INTO `tab_china_citys` VALUES ('230231', '拜泉县', '230200');
INSERT INTO `tab_china_citys` VALUES ('230281', '讷河市', '230200');
INSERT INTO `tab_china_citys` VALUES ('230300', '鸡西市', '230000');
INSERT INTO `tab_china_citys` VALUES ('230301', '市辖区', '230300');
INSERT INTO `tab_china_citys` VALUES ('230302', '鸡冠区', '230301');
INSERT INTO `tab_china_citys` VALUES ('230303', '恒山区', '230301');
INSERT INTO `tab_china_citys` VALUES ('230304', '滴道区', '230301');
INSERT INTO `tab_china_citys` VALUES ('230305', '梨树区', '230301');
INSERT INTO `tab_china_citys` VALUES ('230306', '城子河区', '230301');
INSERT INTO `tab_china_citys` VALUES ('230307', '麻山区', '230301');
INSERT INTO `tab_china_citys` VALUES ('230321', '鸡东县', '230300');
INSERT INTO `tab_china_citys` VALUES ('230381', '虎林市', '230300');
INSERT INTO `tab_china_citys` VALUES ('230382', '密山市', '230300');
INSERT INTO `tab_china_citys` VALUES ('230400', '鹤岗市', '230000');
INSERT INTO `tab_china_citys` VALUES ('230401', '市辖区', '230400');
INSERT INTO `tab_china_citys` VALUES ('230402', '向阳区', '230401');
INSERT INTO `tab_china_citys` VALUES ('230403', '工农区', '230401');
INSERT INTO `tab_china_citys` VALUES ('230404', '南山区', '230401');
INSERT INTO `tab_china_citys` VALUES ('230405', '兴安区', '230401');
INSERT INTO `tab_china_citys` VALUES ('230406', '东山区', '230401');
INSERT INTO `tab_china_citys` VALUES ('230407', '兴山区', '230401');
INSERT INTO `tab_china_citys` VALUES ('230421', '萝北县', '230400');
INSERT INTO `tab_china_citys` VALUES ('230422', '绥滨县', '230400');
INSERT INTO `tab_china_citys` VALUES ('230500', '双鸭山市', '230000');
INSERT INTO `tab_china_citys` VALUES ('230501', '市辖区', '230500');
INSERT INTO `tab_china_citys` VALUES ('230502', '尖山区', '230501');
INSERT INTO `tab_china_citys` VALUES ('230503', '岭东区', '230501');
INSERT INTO `tab_china_citys` VALUES ('230505', '四方台区', '230501');
INSERT INTO `tab_china_citys` VALUES ('230506', '宝山区', '230501');
INSERT INTO `tab_china_citys` VALUES ('230521', '集贤县', '230500');
INSERT INTO `tab_china_citys` VALUES ('230522', '友谊县', '230500');
INSERT INTO `tab_china_citys` VALUES ('230523', '宝清县', '230500');
INSERT INTO `tab_china_citys` VALUES ('230524', '饶河县', '230500');
INSERT INTO `tab_china_citys` VALUES ('230600', '大庆市', '230000');
INSERT INTO `tab_china_citys` VALUES ('230601', '市辖区', '230600');
INSERT INTO `tab_china_citys` VALUES ('230602', '萨尔图区', '230601');
INSERT INTO `tab_china_citys` VALUES ('230603', '龙凤区', '230601');
INSERT INTO `tab_china_citys` VALUES ('230604', '让胡路区', '230601');
INSERT INTO `tab_china_citys` VALUES ('230605', '红岗区', '230601');
INSERT INTO `tab_china_citys` VALUES ('230606', '大同区', '230601');
INSERT INTO `tab_china_citys` VALUES ('230621', '肇州县', '230600');
INSERT INTO `tab_china_citys` VALUES ('230622', '肇源县', '230600');
INSERT INTO `tab_china_citys` VALUES ('230623', '林甸县', '230600');
INSERT INTO `tab_china_citys` VALUES ('230624', '杜尔伯特蒙古族自治县', '230600');
INSERT INTO `tab_china_citys` VALUES ('230700', '伊春市', '230000');
INSERT INTO `tab_china_citys` VALUES ('230701', '市辖区', '230700');
INSERT INTO `tab_china_citys` VALUES ('230702', '伊春区', '230701');
INSERT INTO `tab_china_citys` VALUES ('230703', '南岔区', '230701');
INSERT INTO `tab_china_citys` VALUES ('230704', '友好区', '230701');
INSERT INTO `tab_china_citys` VALUES ('230705', '西林区', '230701');
INSERT INTO `tab_china_citys` VALUES ('230706', '翠峦区', '230701');
INSERT INTO `tab_china_citys` VALUES ('230707', '新青区', '230701');
INSERT INTO `tab_china_citys` VALUES ('230708', '美溪区', '230701');
INSERT INTO `tab_china_citys` VALUES ('230709', '金山屯区', '230701');
INSERT INTO `tab_china_citys` VALUES ('230710', '五营区', '230701');
INSERT INTO `tab_china_citys` VALUES ('230711', '乌马河区', '230701');
INSERT INTO `tab_china_citys` VALUES ('230712', '汤旺河区', '230701');
INSERT INTO `tab_china_citys` VALUES ('230713', '带岭区', '230701');
INSERT INTO `tab_china_citys` VALUES ('230714', '乌伊岭区', '230701');
INSERT INTO `tab_china_citys` VALUES ('230715', '红星区', '230701');
INSERT INTO `tab_china_citys` VALUES ('230716', '上甘岭区', '230701');
INSERT INTO `tab_china_citys` VALUES ('230722', '嘉荫县', '230700');
INSERT INTO `tab_china_citys` VALUES ('230781', '铁力市', '230700');
INSERT INTO `tab_china_citys` VALUES ('230800', '佳木斯市', '230000');
INSERT INTO `tab_china_citys` VALUES ('230801', '市辖区', '230800');
INSERT INTO `tab_china_citys` VALUES ('230803', '向阳区', '230801');
INSERT INTO `tab_china_citys` VALUES ('230804', '前进区', '230801');
INSERT INTO `tab_china_citys` VALUES ('230805', '东风区', '230801');
INSERT INTO `tab_china_citys` VALUES ('230811', '郊区', '230801');
INSERT INTO `tab_china_citys` VALUES ('230822', '桦南县', '230800');
INSERT INTO `tab_china_citys` VALUES ('230826', '桦川县', '230800');
INSERT INTO `tab_china_citys` VALUES ('230828', '汤原县', '230800');
INSERT INTO `tab_china_citys` VALUES ('230833', '抚远县', '230800');
INSERT INTO `tab_china_citys` VALUES ('230881', '同江市', '230800');
INSERT INTO `tab_china_citys` VALUES ('230882', '富锦市', '230800');
INSERT INTO `tab_china_citys` VALUES ('230900', '七台河市', '230000');
INSERT INTO `tab_china_citys` VALUES ('230901', '市辖区', '230900');
INSERT INTO `tab_china_citys` VALUES ('230902', '新兴区', '230901');
INSERT INTO `tab_china_citys` VALUES ('230903', '桃山区', '230901');
INSERT INTO `tab_china_citys` VALUES ('230904', '茄子河区', '230901');
INSERT INTO `tab_china_citys` VALUES ('230921', '勃利县', '230900');
INSERT INTO `tab_china_citys` VALUES ('231000', '牡丹江市', '230000');
INSERT INTO `tab_china_citys` VALUES ('231001', '市辖区', '231000');
INSERT INTO `tab_china_citys` VALUES ('231002', '东安区', '231001');
INSERT INTO `tab_china_citys` VALUES ('231003', '阳明区', '231001');
INSERT INTO `tab_china_citys` VALUES ('231004', '爱民区', '231001');
INSERT INTO `tab_china_citys` VALUES ('231005', '西安区', '231001');
INSERT INTO `tab_china_citys` VALUES ('231024', '东宁县', '231000');
INSERT INTO `tab_china_citys` VALUES ('231025', '林口县', '231000');
INSERT INTO `tab_china_citys` VALUES ('231081', '绥芬河市', '231000');
INSERT INTO `tab_china_citys` VALUES ('231083', '海林市', '231000');
INSERT INTO `tab_china_citys` VALUES ('231084', '宁安市', '231000');
INSERT INTO `tab_china_citys` VALUES ('231085', '穆棱市', '231000');
INSERT INTO `tab_china_citys` VALUES ('231100', '黑河市', '230000');
INSERT INTO `tab_china_citys` VALUES ('231101', '市辖区', '231100');
INSERT INTO `tab_china_citys` VALUES ('231102', '爱辉区', '231101');
INSERT INTO `tab_china_citys` VALUES ('231121', '嫩江县', '231100');
INSERT INTO `tab_china_citys` VALUES ('231123', '逊克县', '231100');
INSERT INTO `tab_china_citys` VALUES ('231124', '孙吴县', '231100');
INSERT INTO `tab_china_citys` VALUES ('231181', '北安市', '231100');
INSERT INTO `tab_china_citys` VALUES ('231182', '五大连池市', '231100');
INSERT INTO `tab_china_citys` VALUES ('231200', '绥化市', '230000');
INSERT INTO `tab_china_citys` VALUES ('231201', '北林区', '231200');
INSERT INTO `tab_china_citys` VALUES ('231221', '望奎县', '231200');
INSERT INTO `tab_china_citys` VALUES ('231222', '兰西县', '231200');
INSERT INTO `tab_china_citys` VALUES ('231223', '青冈县', '231200');
INSERT INTO `tab_china_citys` VALUES ('231224', '庆安县', '231200');
INSERT INTO `tab_china_citys` VALUES ('231225', '明水县', '231200');
INSERT INTO `tab_china_citys` VALUES ('231226', '绥棱县', '231200');
INSERT INTO `tab_china_citys` VALUES ('231281', '安达市', '231200');
INSERT INTO `tab_china_citys` VALUES ('231282', '肇东市', '231200');
INSERT INTO `tab_china_citys` VALUES ('231283', '海伦市', '231200');
INSERT INTO `tab_china_citys` VALUES ('232700', '大兴安岭地区', '230000');
INSERT INTO `tab_china_citys` VALUES ('232701', '加格达奇区', '232700');
INSERT INTO `tab_china_citys` VALUES ('232702', '松岭区', '232700');
INSERT INTO `tab_china_citys` VALUES ('232703', '新林区', '232700');
INSERT INTO `tab_china_citys` VALUES ('232704', '呼中区', '232700');
INSERT INTO `tab_china_citys` VALUES ('232721', '呼玛县', '232700');
INSERT INTO `tab_china_citys` VALUES ('232722', '塔河县', '232700');
INSERT INTO `tab_china_citys` VALUES ('232723', '漠河县', '232700');
INSERT INTO `tab_china_citys` VALUES ('310000', '上海市', '0');
INSERT INTO `tab_china_citys` VALUES ('310100', '黄浦区', '310000');
INSERT INTO `tab_china_citys` VALUES ('310300', '卢湾区', '310000');
INSERT INTO `tab_china_citys` VALUES ('310400', '徐汇区', '310000');
INSERT INTO `tab_china_citys` VALUES ('310500', '长宁区', '310000');
INSERT INTO `tab_china_citys` VALUES ('310600', '静安区', '310000');
INSERT INTO `tab_china_citys` VALUES ('310700', '普陀区', '310000');
INSERT INTO `tab_china_citys` VALUES ('310800', '闸北区', '310000');
INSERT INTO `tab_china_citys` VALUES ('310900', '虹口区', '310000');
INSERT INTO `tab_china_citys` VALUES ('311000', '杨浦区', '310000');
INSERT INTO `tab_china_citys` VALUES ('311200', '闵行区', '310000');
INSERT INTO `tab_china_citys` VALUES ('311300', '宝山区', '310000');
INSERT INTO `tab_china_citys` VALUES ('311400', '嘉定区', '310000');
INSERT INTO `tab_china_citys` VALUES ('311500', '浦东新区', '310000');
INSERT INTO `tab_china_citys` VALUES ('311600', '金山区', '310000');
INSERT INTO `tab_china_citys` VALUES ('311700', '松江区', '310000');
INSERT INTO `tab_china_citys` VALUES ('311800', '青浦区', '310000');
INSERT INTO `tab_china_citys` VALUES ('311900', '南汇区', '310000');
INSERT INTO `tab_china_citys` VALUES ('312000', '奉贤区', '310000');
INSERT INTO `tab_china_citys` VALUES ('313000', '崇明县', '310000');
INSERT INTO `tab_china_citys` VALUES ('320000', '江苏省', '0');
INSERT INTO `tab_china_citys` VALUES ('320100', '南京市', '320000');
INSERT INTO `tab_china_citys` VALUES ('320101', '市辖区', '320100');
INSERT INTO `tab_china_citys` VALUES ('320102', '玄武区', '320101');
INSERT INTO `tab_china_citys` VALUES ('320103', '白下区', '320101');
INSERT INTO `tab_china_citys` VALUES ('320104', '秦淮区', '320101');
INSERT INTO `tab_china_citys` VALUES ('320105', '建邺区', '320101');
INSERT INTO `tab_china_citys` VALUES ('320106', '鼓楼区', '320101');
INSERT INTO `tab_china_citys` VALUES ('320107', '下关区', '320101');
INSERT INTO `tab_china_citys` VALUES ('320111', '浦口区', '320101');
INSERT INTO `tab_china_citys` VALUES ('320113', '栖霞区', '320101');
INSERT INTO `tab_china_citys` VALUES ('320114', '雨花台区', '320101');
INSERT INTO `tab_china_citys` VALUES ('320115', '江宁区', '320101');
INSERT INTO `tab_china_citys` VALUES ('320116', '六合区', '320101');
INSERT INTO `tab_china_citys` VALUES ('320124', '溧水区', '320100');
INSERT INTO `tab_china_citys` VALUES ('320125', '高淳区', '320100');
INSERT INTO `tab_china_citys` VALUES ('320200', '无锡市', '320000');
INSERT INTO `tab_china_citys` VALUES ('320201', '市辖区', '320200');
INSERT INTO `tab_china_citys` VALUES ('320202', '崇安区', '320201');
INSERT INTO `tab_china_citys` VALUES ('320203', '南长区', '320201');
INSERT INTO `tab_china_citys` VALUES ('320204', '北塘区', '320201');
INSERT INTO `tab_china_citys` VALUES ('320205', '锡山区', '320201');
INSERT INTO `tab_china_citys` VALUES ('320206', '惠山区', '320201');
INSERT INTO `tab_china_citys` VALUES ('320211', '滨湖区', '320201');
INSERT INTO `tab_china_citys` VALUES ('320281', '江阴市', '320200');
INSERT INTO `tab_china_citys` VALUES ('320282', '宜兴市', '320200');
INSERT INTO `tab_china_citys` VALUES ('320300', '徐州市', '320000');
INSERT INTO `tab_china_citys` VALUES ('320301', '泉山区', '320300');
INSERT INTO `tab_china_citys` VALUES ('320302', '鼓楼区', '320300');
INSERT INTO `tab_china_citys` VALUES ('320303', '云龙区', '320300');
INSERT INTO `tab_china_citys` VALUES ('320304', '九里区', '320301');
INSERT INTO `tab_china_citys` VALUES ('320305', '贾汪区', '320300');
INSERT INTO `tab_china_citys` VALUES ('320321', '丰县', '320300');
INSERT INTO `tab_china_citys` VALUES ('320322', '沛县', '320300');
INSERT INTO `tab_china_citys` VALUES ('320323', '铜山县', '320300');
INSERT INTO `tab_china_citys` VALUES ('320324', '睢宁县', '320300');
INSERT INTO `tab_china_citys` VALUES ('320381', '新沂市', '320300');
INSERT INTO `tab_china_citys` VALUES ('320382', '邳州市', '320300');
INSERT INTO `tab_china_citys` VALUES ('320400', '常州市', '320000');
INSERT INTO `tab_china_citys` VALUES ('320401', '市辖区', '320400');
INSERT INTO `tab_china_citys` VALUES ('320402', '天宁区', '320401');
INSERT INTO `tab_china_citys` VALUES ('320404', '钟楼区', '320401');
INSERT INTO `tab_china_citys` VALUES ('320405', '戚墅堰区', '320401');
INSERT INTO `tab_china_citys` VALUES ('320411', '新北区', '320401');
INSERT INTO `tab_china_citys` VALUES ('320412', '武进区', '320401');
INSERT INTO `tab_china_citys` VALUES ('320481', '溧阳市', '320400');
INSERT INTO `tab_china_citys` VALUES ('320482', '金坛市', '320400');
INSERT INTO `tab_china_citys` VALUES ('320500', '苏州市', '320000');
INSERT INTO `tab_china_citys` VALUES ('320501', '市辖区', '320500');
INSERT INTO `tab_china_citys` VALUES ('320502', '沧浪区', '320501');
INSERT INTO `tab_china_citys` VALUES ('320503', '平江区', '320501');
INSERT INTO `tab_china_citys` VALUES ('320504', '金阊区', '320501');
INSERT INTO `tab_china_citys` VALUES ('320505', '虎丘区', '320501');
INSERT INTO `tab_china_citys` VALUES ('320506', '吴中区', '320501');
INSERT INTO `tab_china_citys` VALUES ('320507', '相城区', '320501');
INSERT INTO `tab_china_citys` VALUES ('320581', '常熟市', '320500');
INSERT INTO `tab_china_citys` VALUES ('320582', '张家港市', '320500');
INSERT INTO `tab_china_citys` VALUES ('320583', '昆山市', '320500');
INSERT INTO `tab_china_citys` VALUES ('320584', '吴江市', '320500');
INSERT INTO `tab_china_citys` VALUES ('320585', '太仓市', '320500');
INSERT INTO `tab_china_citys` VALUES ('320600', '南通市', '320000');
INSERT INTO `tab_china_citys` VALUES ('320601', '市辖区', '320600');
INSERT INTO `tab_china_citys` VALUES ('320602', '崇川区', '320601');
INSERT INTO `tab_china_citys` VALUES ('320611', '港闸区', '320601');
INSERT INTO `tab_china_citys` VALUES ('320621', '海安县', '320600');
INSERT INTO `tab_china_citys` VALUES ('320623', '如东县', '320600');
INSERT INTO `tab_china_citys` VALUES ('320681', '启东市', '320600');
INSERT INTO `tab_china_citys` VALUES ('320682', '如皋市', '320600');
INSERT INTO `tab_china_citys` VALUES ('320683', '通州市', '320600');
INSERT INTO `tab_china_citys` VALUES ('320684', '海门市', '320600');
INSERT INTO `tab_china_citys` VALUES ('320700', '连云港市', '320000');
INSERT INTO `tab_china_citys` VALUES ('320701', '市辖区', '320700');
INSERT INTO `tab_china_citys` VALUES ('320703', '连云区', '320701');
INSERT INTO `tab_china_citys` VALUES ('320705', '新浦区', '320701');
INSERT INTO `tab_china_citys` VALUES ('320706', '海州区', '320701');
INSERT INTO `tab_china_citys` VALUES ('320721', '赣榆县', '320700');
INSERT INTO `tab_china_citys` VALUES ('320722', '东海县', '320700');
INSERT INTO `tab_china_citys` VALUES ('320723', '灌云县', '320700');
INSERT INTO `tab_china_citys` VALUES ('320724', '灌南县', '320700');
INSERT INTO `tab_china_citys` VALUES ('320800', '淮安市', '320000');
INSERT INTO `tab_china_citys` VALUES ('320801', '市辖区', '320800');
INSERT INTO `tab_china_citys` VALUES ('320802', '清河区', '320801');
INSERT INTO `tab_china_citys` VALUES ('320803', '楚州区', '320801');
INSERT INTO `tab_china_citys` VALUES ('320804', '淮阴区', '320801');
INSERT INTO `tab_china_citys` VALUES ('320811', '清浦区', '320801');
INSERT INTO `tab_china_citys` VALUES ('320826', '涟水县', '320800');
INSERT INTO `tab_china_citys` VALUES ('320829', '洪泽县', '320800');
INSERT INTO `tab_china_citys` VALUES ('320830', '盱眙县', '320800');
INSERT INTO `tab_china_citys` VALUES ('320831', '金湖县', '320800');
INSERT INTO `tab_china_citys` VALUES ('320900', '盐城市', '320000');
INSERT INTO `tab_china_citys` VALUES ('320901', '市辖区', '320900');
INSERT INTO `tab_china_citys` VALUES ('320902', '亭湖区', '320901');
INSERT INTO `tab_china_citys` VALUES ('320903', '盐都区', '320901');
INSERT INTO `tab_china_citys` VALUES ('320921', '响水县', '320900');
INSERT INTO `tab_china_citys` VALUES ('320922', '滨海县', '320900');
INSERT INTO `tab_china_citys` VALUES ('320923', '阜宁县', '320900');
INSERT INTO `tab_china_citys` VALUES ('320924', '射阳县', '320900');
INSERT INTO `tab_china_citys` VALUES ('320925', '建湖县', '320900');
INSERT INTO `tab_china_citys` VALUES ('320981', '东台市', '320900');
INSERT INTO `tab_china_citys` VALUES ('320982', '大丰市', '320900');
INSERT INTO `tab_china_citys` VALUES ('321000', '扬州市', '320000');
INSERT INTO `tab_china_citys` VALUES ('321001', '市辖区', '321000');
INSERT INTO `tab_china_citys` VALUES ('321002', '广陵区', '321001');
INSERT INTO `tab_china_citys` VALUES ('321003', '邗江区', '321001');
INSERT INTO `tab_china_citys` VALUES ('321011', '维扬区', '321001');
INSERT INTO `tab_china_citys` VALUES ('321023', '宝应县', '321000');
INSERT INTO `tab_china_citys` VALUES ('321081', '仪征市', '321000');
INSERT INTO `tab_china_citys` VALUES ('321084', '高邮市', '321000');
INSERT INTO `tab_china_citys` VALUES ('321088', '江都市', '321000');
INSERT INTO `tab_china_citys` VALUES ('321100', '镇江市', '320000');
INSERT INTO `tab_china_citys` VALUES ('321101', '市辖区', '321100');
INSERT INTO `tab_china_citys` VALUES ('321102', '京口区', '321101');
INSERT INTO `tab_china_citys` VALUES ('321111', '润州区', '321101');
INSERT INTO `tab_china_citys` VALUES ('321112', '丹徒区', '321101');
INSERT INTO `tab_china_citys` VALUES ('321181', '丹阳市', '321100');
INSERT INTO `tab_china_citys` VALUES ('321182', '扬中市', '321100');
INSERT INTO `tab_china_citys` VALUES ('321183', '句容市', '321100');
INSERT INTO `tab_china_citys` VALUES ('321200', '泰州市', '320000');
INSERT INTO `tab_china_citys` VALUES ('321201', '市辖区', '321200');
INSERT INTO `tab_china_citys` VALUES ('321202', '海陵区', '321201');
INSERT INTO `tab_china_citys` VALUES ('321203', '高港区', '321201');
INSERT INTO `tab_china_citys` VALUES ('321281', '兴化市', '321200');
INSERT INTO `tab_china_citys` VALUES ('321282', '靖江市', '321200');
INSERT INTO `tab_china_citys` VALUES ('321283', '泰兴市', '321200');
INSERT INTO `tab_china_citys` VALUES ('321284', '姜堰市', '321200');
INSERT INTO `tab_china_citys` VALUES ('321300', '宿迁市', '320000');
INSERT INTO `tab_china_citys` VALUES ('321301', '市辖区', '321300');
INSERT INTO `tab_china_citys` VALUES ('321302', '宿城区', '321301');
INSERT INTO `tab_china_citys` VALUES ('321311', '宿豫区', '321301');
INSERT INTO `tab_china_citys` VALUES ('321322', '沭阳县', '321300');
INSERT INTO `tab_china_citys` VALUES ('321323', '泗阳县', '321300');
INSERT INTO `tab_china_citys` VALUES ('321324', '泗洪县', '321300');
INSERT INTO `tab_china_citys` VALUES ('330000', '浙江省', '0');
INSERT INTO `tab_china_citys` VALUES ('330100', '杭州市', '330000');
INSERT INTO `tab_china_citys` VALUES ('330101', '市辖区', '330100');
INSERT INTO `tab_china_citys` VALUES ('330102', '上城区', '330101');
INSERT INTO `tab_china_citys` VALUES ('330103', '下城区', '330101');
INSERT INTO `tab_china_citys` VALUES ('330104', '江干区', '330101');
INSERT INTO `tab_china_citys` VALUES ('330105', '拱墅区', '330101');
INSERT INTO `tab_china_citys` VALUES ('330106', '西湖区', '330101');
INSERT INTO `tab_china_citys` VALUES ('330108', '滨江区', '330101');
INSERT INTO `tab_china_citys` VALUES ('330109', '萧山区', '330101');
INSERT INTO `tab_china_citys` VALUES ('330110', '余杭区', '330101');
INSERT INTO `tab_china_citys` VALUES ('330122', '桐庐县', '330100');
INSERT INTO `tab_china_citys` VALUES ('330127', '淳安县', '330100');
INSERT INTO `tab_china_citys` VALUES ('330182', '建德市', '330100');
INSERT INTO `tab_china_citys` VALUES ('330183', '富阳市', '330100');
INSERT INTO `tab_china_citys` VALUES ('330185', '临安市', '330100');
INSERT INTO `tab_china_citys` VALUES ('330200', '宁波市', '330000');
INSERT INTO `tab_china_citys` VALUES ('330201', '市辖区', '330200');
INSERT INTO `tab_china_citys` VALUES ('330203', '海曙区', '330201');
INSERT INTO `tab_china_citys` VALUES ('330204', '江东区', '330201');
INSERT INTO `tab_china_citys` VALUES ('330205', '江北区', '330201');
INSERT INTO `tab_china_citys` VALUES ('330206', '北仑区', '330201');
INSERT INTO `tab_china_citys` VALUES ('330211', '镇海区', '330201');
INSERT INTO `tab_china_citys` VALUES ('330212', '鄞州区', '330201');
INSERT INTO `tab_china_citys` VALUES ('330225', '象山县', '330200');
INSERT INTO `tab_china_citys` VALUES ('330226', '宁海县', '330200');
INSERT INTO `tab_china_citys` VALUES ('330281', '余姚市', '330200');
INSERT INTO `tab_china_citys` VALUES ('330282', '慈溪市', '330200');
INSERT INTO `tab_china_citys` VALUES ('330283', '奉化市', '330200');
INSERT INTO `tab_china_citys` VALUES ('330300', '温州市', '330000');
INSERT INTO `tab_china_citys` VALUES ('330301', '市辖区', '330300');
INSERT INTO `tab_china_citys` VALUES ('330302', '鹿城区', '330301');
INSERT INTO `tab_china_citys` VALUES ('330303', '龙湾区', '330301');
INSERT INTO `tab_china_citys` VALUES ('330304', '瓯海区', '330301');
INSERT INTO `tab_china_citys` VALUES ('330322', '洞头县', '330300');
INSERT INTO `tab_china_citys` VALUES ('330324', '永嘉县', '330300');
INSERT INTO `tab_china_citys` VALUES ('330326', '平阳县', '330300');
INSERT INTO `tab_china_citys` VALUES ('330327', '苍南县', '330300');
INSERT INTO `tab_china_citys` VALUES ('330328', '文成县', '330300');
INSERT INTO `tab_china_citys` VALUES ('330329', '泰顺县', '330300');
INSERT INTO `tab_china_citys` VALUES ('330381', '瑞安市', '330300');
INSERT INTO `tab_china_citys` VALUES ('330382', '乐清市', '330300');
INSERT INTO `tab_china_citys` VALUES ('330400', '嘉兴市', '330000');
INSERT INTO `tab_china_citys` VALUES ('330401', '市辖区', '330400');
INSERT INTO `tab_china_citys` VALUES ('330402', '南湖区', '330401');
INSERT INTO `tab_china_citys` VALUES ('330411', '秀洲区', '330401');
INSERT INTO `tab_china_citys` VALUES ('330421', '嘉善县', '330400');
INSERT INTO `tab_china_citys` VALUES ('330424', '海盐县', '330400');
INSERT INTO `tab_china_citys` VALUES ('330481', '海宁市', '330400');
INSERT INTO `tab_china_citys` VALUES ('330482', '平湖市', '330400');
INSERT INTO `tab_china_citys` VALUES ('330483', '桐乡市', '330400');
INSERT INTO `tab_china_citys` VALUES ('330500', '湖州市', '330000');
INSERT INTO `tab_china_citys` VALUES ('330501', '市辖区', '330500');
INSERT INTO `tab_china_citys` VALUES ('330502', '吴兴区', '330501');
INSERT INTO `tab_china_citys` VALUES ('330503', '南浔区', '330501');
INSERT INTO `tab_china_citys` VALUES ('330521', '德清县', '330500');
INSERT INTO `tab_china_citys` VALUES ('330522', '长兴县', '330500');
INSERT INTO `tab_china_citys` VALUES ('330523', '安吉县', '330500');
INSERT INTO `tab_china_citys` VALUES ('330600', '绍兴市', '330000');
INSERT INTO `tab_china_citys` VALUES ('330601', '市辖区', '330600');
INSERT INTO `tab_china_citys` VALUES ('330602', '越城区', '330601');
INSERT INTO `tab_china_citys` VALUES ('330621', '绍兴县', '330600');
INSERT INTO `tab_china_citys` VALUES ('330624', '新昌县', '330600');
INSERT INTO `tab_china_citys` VALUES ('330681', '诸暨市', '330600');
INSERT INTO `tab_china_citys` VALUES ('330682', '上虞市', '330600');
INSERT INTO `tab_china_citys` VALUES ('330683', '嵊州市', '330600');
INSERT INTO `tab_china_citys` VALUES ('330700', '金华市', '330000');
INSERT INTO `tab_china_citys` VALUES ('330701', '市辖区', '330700');
INSERT INTO `tab_china_citys` VALUES ('330702', '婺城区', '330701');
INSERT INTO `tab_china_citys` VALUES ('330703', '金东区', '330701');
INSERT INTO `tab_china_citys` VALUES ('330723', '武义县', '330700');
INSERT INTO `tab_china_citys` VALUES ('330726', '浦江县', '330700');
INSERT INTO `tab_china_citys` VALUES ('330727', '磐安县', '330700');
INSERT INTO `tab_china_citys` VALUES ('330781', '兰溪市', '330700');
INSERT INTO `tab_china_citys` VALUES ('330782', '义乌市', '330700');
INSERT INTO `tab_china_citys` VALUES ('330783', '东阳市', '330700');
INSERT INTO `tab_china_citys` VALUES ('330784', '永康市', '330700');
INSERT INTO `tab_china_citys` VALUES ('330800', '衢州市', '330000');
INSERT INTO `tab_china_citys` VALUES ('330801', '市辖区', '330800');
INSERT INTO `tab_china_citys` VALUES ('330802', '柯城区', '330801');
INSERT INTO `tab_china_citys` VALUES ('330803', '衢江区', '330801');
INSERT INTO `tab_china_citys` VALUES ('330822', '常山县', '330800');
INSERT INTO `tab_china_citys` VALUES ('330824', '开化县', '330800');
INSERT INTO `tab_china_citys` VALUES ('330825', '龙游县', '330800');
INSERT INTO `tab_china_citys` VALUES ('330881', '江山市', '330800');
INSERT INTO `tab_china_citys` VALUES ('330900', '舟山市', '330000');
INSERT INTO `tab_china_citys` VALUES ('330901', '市辖区', '330900');
INSERT INTO `tab_china_citys` VALUES ('330902', '定海区', '330901');
INSERT INTO `tab_china_citys` VALUES ('330903', '普陀区', '330901');
INSERT INTO `tab_china_citys` VALUES ('330921', '岱山县', '330900');
INSERT INTO `tab_china_citys` VALUES ('330922', '嵊泗县', '330900');
INSERT INTO `tab_china_citys` VALUES ('331000', '台州市', '330000');
INSERT INTO `tab_china_citys` VALUES ('331001', '市辖区', '331000');
INSERT INTO `tab_china_citys` VALUES ('331002', '椒江区', '331001');
INSERT INTO `tab_china_citys` VALUES ('331003', '黄岩区', '331001');
INSERT INTO `tab_china_citys` VALUES ('331004', '路桥区', '331001');
INSERT INTO `tab_china_citys` VALUES ('331021', '玉环县', '331000');
INSERT INTO `tab_china_citys` VALUES ('331022', '三门县', '331000');
INSERT INTO `tab_china_citys` VALUES ('331023', '天台县', '331000');
INSERT INTO `tab_china_citys` VALUES ('331024', '仙居县', '331000');
INSERT INTO `tab_china_citys` VALUES ('331081', '温岭市', '331000');
INSERT INTO `tab_china_citys` VALUES ('331082', '临海市', '331000');
INSERT INTO `tab_china_citys` VALUES ('331100', '丽水市', '330000');
INSERT INTO `tab_china_citys` VALUES ('331101', '市辖区', '331100');
INSERT INTO `tab_china_citys` VALUES ('331102', '莲都区', '331101');
INSERT INTO `tab_china_citys` VALUES ('331121', '青田县', '331100');
INSERT INTO `tab_china_citys` VALUES ('331122', '缙云县', '331100');
INSERT INTO `tab_china_citys` VALUES ('331123', '遂昌县', '331100');
INSERT INTO `tab_china_citys` VALUES ('331124', '松阳县', '331100');
INSERT INTO `tab_china_citys` VALUES ('331125', '云和县', '331100');
INSERT INTO `tab_china_citys` VALUES ('331126', '庆元县', '331100');
INSERT INTO `tab_china_citys` VALUES ('331127', '景宁畲族自治县', '331100');
INSERT INTO `tab_china_citys` VALUES ('331181', '龙泉市', '331100');
INSERT INTO `tab_china_citys` VALUES ('340000', '安徽省', '0');
INSERT INTO `tab_china_citys` VALUES ('340100', '合肥市', '340000');
INSERT INTO `tab_china_citys` VALUES ('340101', '市辖区', '340100');
INSERT INTO `tab_china_citys` VALUES ('340102', '瑶海区', '340101');
INSERT INTO `tab_china_citys` VALUES ('340103', '庐阳区', '340101');
INSERT INTO `tab_china_citys` VALUES ('340104', '蜀山区', '340101');
INSERT INTO `tab_china_citys` VALUES ('340111', '包河区', '340101');
INSERT INTO `tab_china_citys` VALUES ('340121', '长丰县', '340100');
INSERT INTO `tab_china_citys` VALUES ('340122', '肥东县', '340100');
INSERT INTO `tab_china_citys` VALUES ('340123', '肥西县', '340100');
INSERT INTO `tab_china_citys` VALUES ('340124', '庐江县', '340100');
INSERT INTO `tab_china_citys` VALUES ('340181', '巢湖市', '340100');
INSERT INTO `tab_china_citys` VALUES ('340200', '芜湖市', '340000');
INSERT INTO `tab_china_citys` VALUES ('340201', '市辖区', '340200');
INSERT INTO `tab_china_citys` VALUES ('340202', '镜湖区', '340201');
INSERT INTO `tab_china_citys` VALUES ('340203', '马塘区', '340201');
INSERT INTO `tab_china_citys` VALUES ('340207', '鸠江区', '340201');
INSERT INTO `tab_china_citys` VALUES ('340221', '芜湖县', '340200');
INSERT INTO `tab_china_citys` VALUES ('340222', '繁昌县', '340200');
INSERT INTO `tab_china_citys` VALUES ('340223', '南陵县', '340200');
INSERT INTO `tab_china_citys` VALUES ('340225', '无为县', '340200');
INSERT INTO `tab_china_citys` VALUES ('340300', '蚌埠市', '340000');
INSERT INTO `tab_china_citys` VALUES ('340301', '市辖区', '340300');
INSERT INTO `tab_china_citys` VALUES ('340302', '龙子湖区', '340301');
INSERT INTO `tab_china_citys` VALUES ('340303', '蚌山区', '340301');
INSERT INTO `tab_china_citys` VALUES ('340304', '禹会区', '340301');
INSERT INTO `tab_china_citys` VALUES ('340311', '淮上区', '340301');
INSERT INTO `tab_china_citys` VALUES ('340321', '怀远县', '340300');
INSERT INTO `tab_china_citys` VALUES ('340322', '五河县', '340300');
INSERT INTO `tab_china_citys` VALUES ('340323', '固镇县', '340300');
INSERT INTO `tab_china_citys` VALUES ('340400', '淮南市', '340000');
INSERT INTO `tab_china_citys` VALUES ('340401', '市辖区', '340400');
INSERT INTO `tab_china_citys` VALUES ('340402', '大通区', '340401');
INSERT INTO `tab_china_citys` VALUES ('340403', '田家庵区', '340401');
INSERT INTO `tab_china_citys` VALUES ('340404', '谢家集区', '340401');
INSERT INTO `tab_china_citys` VALUES ('340405', '八公山区', '340401');
INSERT INTO `tab_china_citys` VALUES ('340406', '潘集区', '340401');
INSERT INTO `tab_china_citys` VALUES ('340421', '凤台县', '340400');
INSERT INTO `tab_china_citys` VALUES ('340500', '马鞍山市', '340000');
INSERT INTO `tab_china_citys` VALUES ('340501', '市辖区', '340500');
INSERT INTO `tab_china_citys` VALUES ('340502', '金家庄区', '340501');
INSERT INTO `tab_china_citys` VALUES ('340503', '花山区', '340501');
INSERT INTO `tab_china_citys` VALUES ('340504', '雨山区', '340501');
INSERT INTO `tab_china_citys` VALUES ('340521', '当涂县', '340500');
INSERT INTO `tab_china_citys` VALUES ('340522', '含山县', '340500');
INSERT INTO `tab_china_citys` VALUES ('340523', '和县', '340500');
INSERT INTO `tab_china_citys` VALUES ('340600', '淮北市', '340000');
INSERT INTO `tab_china_citys` VALUES ('340601', '市辖区', '340600');
INSERT INTO `tab_china_citys` VALUES ('340602', '杜集区', '340601');
INSERT INTO `tab_china_citys` VALUES ('340603', '相山区', '340601');
INSERT INTO `tab_china_citys` VALUES ('340604', '烈山区', '340601');
INSERT INTO `tab_china_citys` VALUES ('340621', '濉溪县', '340600');
INSERT INTO `tab_china_citys` VALUES ('340700', '铜陵市', '340000');
INSERT INTO `tab_china_citys` VALUES ('340701', '市辖区', '340700');
INSERT INTO `tab_china_citys` VALUES ('340702', '铜官山区', '340701');
INSERT INTO `tab_china_citys` VALUES ('340703', '狮子山区', '340701');
INSERT INTO `tab_china_citys` VALUES ('340711', '郊区', '340701');
INSERT INTO `tab_china_citys` VALUES ('340721', '铜陵县', '340700');
INSERT INTO `tab_china_citys` VALUES ('340800', '安庆市', '340000');
INSERT INTO `tab_china_citys` VALUES ('340801', '市辖区', '340800');
INSERT INTO `tab_china_citys` VALUES ('340802', '迎江区', '340801');
INSERT INTO `tab_china_citys` VALUES ('340803', '大观区', '340801');
INSERT INTO `tab_china_citys` VALUES ('340811', '宜秀区', '340801');
INSERT INTO `tab_china_citys` VALUES ('340822', '怀宁县', '340800');
INSERT INTO `tab_china_citys` VALUES ('340823', '枞阳县', '340800');
INSERT INTO `tab_china_citys` VALUES ('340824', '潜山县', '340800');
INSERT INTO `tab_china_citys` VALUES ('340825', '太湖县', '340800');
INSERT INTO `tab_china_citys` VALUES ('340826', '宿松县', '340800');
INSERT INTO `tab_china_citys` VALUES ('340827', '望江县', '340800');
INSERT INTO `tab_china_citys` VALUES ('340828', '岳西县', '340800');
INSERT INTO `tab_china_citys` VALUES ('340881', '桐城市', '340800');
INSERT INTO `tab_china_citys` VALUES ('341000', '黄山市', '340000');
INSERT INTO `tab_china_citys` VALUES ('341001', '黄山区', '341000');
INSERT INTO `tab_china_citys` VALUES ('341002', '屯溪区', '341000');
INSERT INTO `tab_china_citys` VALUES ('341004', '徽州区', '341000');
INSERT INTO `tab_china_citys` VALUES ('341021', '歙县', '341000');
INSERT INTO `tab_china_citys` VALUES ('341022', '休宁县', '341000');
INSERT INTO `tab_china_citys` VALUES ('341023', '黟县', '341000');
INSERT INTO `tab_china_citys` VALUES ('341024', '祁门县', '341000');
INSERT INTO `tab_china_citys` VALUES ('341091', '汤口镇', '341000');
INSERT INTO `tab_china_citys` VALUES ('341100', '滁州市', '340000');
INSERT INTO `tab_china_citys` VALUES ('341101', '市辖区', '341100');
INSERT INTO `tab_china_citys` VALUES ('341102', '琅琊区', '341101');
INSERT INTO `tab_china_citys` VALUES ('341103', '南谯区', '341101');
INSERT INTO `tab_china_citys` VALUES ('341122', '来安县', '341100');
INSERT INTO `tab_china_citys` VALUES ('341124', '全椒县', '341100');
INSERT INTO `tab_china_citys` VALUES ('341125', '定远县', '341100');
INSERT INTO `tab_china_citys` VALUES ('341126', '凤阳县', '341100');
INSERT INTO `tab_china_citys` VALUES ('341181', '天长市', '341100');
INSERT INTO `tab_china_citys` VALUES ('341182', '明光市', '341100');
INSERT INTO `tab_china_citys` VALUES ('341200', '阜阳市', '340000');
INSERT INTO `tab_china_citys` VALUES ('341201', '颍泉区', '341200');
INSERT INTO `tab_china_citys` VALUES ('341202', '颍州区', '341200');
INSERT INTO `tab_china_citys` VALUES ('341203', '颍东区', '341200');
INSERT INTO `tab_china_citys` VALUES ('341221', '临泉县', '341200');
INSERT INTO `tab_china_citys` VALUES ('341222', '太和县', '341200');
INSERT INTO `tab_china_citys` VALUES ('341225', '阜南县', '341200');
INSERT INTO `tab_china_citys` VALUES ('341226', '颍上县', '341200');
INSERT INTO `tab_china_citys` VALUES ('341282', '界首市', '341200');
INSERT INTO `tab_china_citys` VALUES ('341300', '宿州市', '340000');
INSERT INTO `tab_china_citys` VALUES ('341301', '市辖区', '341300');
INSERT INTO `tab_china_citys` VALUES ('341302', '埇桥区', '341301');
INSERT INTO `tab_china_citys` VALUES ('341321', '砀山县', '341300');
INSERT INTO `tab_china_citys` VALUES ('341322', '萧县', '341300');
INSERT INTO `tab_china_citys` VALUES ('341323', '灵璧县', '341300');
INSERT INTO `tab_china_citys` VALUES ('341324', '泗县', '341300');

-- ----------------------------
-- Table structure for tab_comment
-- ----------------------------
DROP TABLE IF EXISTS `tab_comment`;
CREATE TABLE `tab_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` varchar(2048) NOT NULL,
  `publish_time` varchar(255) NOT NULL,
  `publish_user` int(11) NOT NULL,
  `reply_user` int(11) DEFAULT NULL COMMENT '回复给 -(回复用户id)',
  `is_del` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000' COMMENT '0:正常 1:被删除',
  PRIMARY KEY (`id`),
  KEY `publish_user` (`publish_user`),
  KEY `reply_user` (`reply_user`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户评论表';

-- ----------------------------
-- Records of tab_comment
-- ----------------------------
INSERT INTO `tab_comment` VALUES ('1', '签完到', '2018-05-27 03:46:43', '1', '5', '00000000000');
INSERT INTO `tab_comment` VALUES ('2', 'qwdq', '2018-05-27 04:11:43', '4', '5', '00000000000');
INSERT INTO `tab_comment` VALUES ('3', 'awfe', '2018-05-27 04:18:36', '4', '1', '00000000000');

-- ----------------------------
-- Table structure for tab_course
-- ----------------------------
DROP TABLE IF EXISTS `tab_course`;
CREATE TABLE `tab_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course` varchar(255) NOT NULL,
  `add_time` varchar(255) NOT NULL,
  `add_user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `add_user` (`add_user`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='课程表';

-- ----------------------------
-- Records of tab_course
-- ----------------------------
INSERT INTO `tab_course` VALUES ('7', '语文', '2018-05-27 02:21:00', '1');
INSERT INTO `tab_course` VALUES ('8', '英语', '2018-05-27 02:21:29', '1');

-- ----------------------------
-- Table structure for tab_notice
-- ----------------------------
DROP TABLE IF EXISTS `tab_notice`;
CREATE TABLE `tab_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(1024) NOT NULL,
  `info` varchar(2048) DEFAULT NULL,
  `publish_time` varchar(255) DEFAULT NULL,
  `publish_user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `publish_user_w` (`publish_user`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='系统公告表';

-- ----------------------------
-- Records of tab_notice
-- ----------------------------
INSERT INTO `tab_notice` VALUES ('6', '第一个公告', '这里是公告的内容\n1\n2\n3\n4\n5\n6\n', '2018-05-27 02:22:29', '1');
INSERT INTO `tab_notice` VALUES ('7', '第二条公告', '', '2018-05-27 02:24:45', '1');
INSERT INTO `tab_notice` VALUES ('8', '第三条公告', '', '2018-05-27 02:24:51', '1');

-- ----------------------------
-- Table structure for tab_role
-- ----------------------------
DROP TABLE IF EXISTS `tab_role`;
CREATE TABLE `tab_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `role` varchar(255) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户角色表(勿动)';

-- ----------------------------
-- Records of tab_role
-- ----------------------------
INSERT INTO `tab_role` VALUES ('1', '系统管理员');
INSERT INTO `tab_role` VALUES ('2', '教员');
INSERT INTO `tab_role` VALUES ('3', '学员');

-- ----------------------------
-- Table structure for tab_stu_study_course
-- ----------------------------
DROP TABLE IF EXISTS `tab_stu_study_course`;
CREATE TABLE `tab_stu_study_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `note` varchar(2048) DEFAULT NULL COMMENT '要求/选择备注',
  `publish_time` varchar(255) DEFAULT NULL,
  `teach_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_user_id` (`student_user_id`),
  KEY `teach_user_id` (`teach_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_stu_study_course
-- ----------------------------
INSERT INTO `tab_stu_study_course` VALUES ('1', '4', '7', null, '2018-05-27 04:38:33', '5');
INSERT INTO `tab_stu_study_course` VALUES ('2', '4', '1', null, '2018-05-27 05:01:36', '5');

-- ----------------------------
-- Table structure for tab_teach_course
-- ----------------------------
DROP TABLE IF EXISTS `tab_teach_course`;
CREATE TABLE `tab_teach_course` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `teacher` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `course_id` (`course_id`),
  KEY `teacher` (`teacher`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tab_teach_course
-- ----------------------------
INSERT INTO `tab_teach_course` VALUES ('1', '7', '5');

-- ----------------------------
-- Table structure for tab_user_info
-- ----------------------------
DROP TABLE IF EXISTS `tab_user_info`;
CREATE TABLE `tab_user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `user_password` varchar(512) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_sex` varchar(255) DEFAULT NULL,
  `user_age` varchar(255) DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `user_address_city` int(11) DEFAULT NULL COMMENT '用户所在城市',
  `user_role` int(11) NOT NULL,
  `user_resume_file` varchar(512) DEFAULT NULL COMMENT '用户简历文件-用于教员',
  `user_is_examine` int(11) DEFAULT '0' COMMENT '用户是否已审核-用于教员',
  `user_resume_is_show` int(11) unsigned zerofill DEFAULT '00000000000',
  PRIMARY KEY (`id`),
  KEY `user_role` (`user_role`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of tab_user_info
-- ----------------------------
INSERT INTO `tab_user_info` VALUES ('1', 'admin', 'admin123', '管理员', '男', '21', '你猜猜', '110000', '1', null, '1', '00000000000');
INSERT INTO `tab_user_info` VALUES ('4', 'xueyuan', 'xueyuan123', '学员1', '女', '21', '区政府', '111200', '3', null, '0', '00000000000');
INSERT INTO `tab_user_info` VALUES ('5', 'jiaoyuan', 'jiaoyuan123', '教员1', '男', '21', '签完到', '111200', '2', null, '1', '00000000000');
INSERT INTO `tab_user_info` VALUES ('6', 'xueyuan2', 'xueyuan123', '', '女', '2', '123', '111200', '2', null, '0', '00000000000');

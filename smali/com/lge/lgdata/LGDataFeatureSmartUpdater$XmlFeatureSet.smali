.class public Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;
.super Lcom/lge/lgdata/ILGDataFeatureSet;
.source "LGDataFeatureSmartUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdata/LGDataFeatureSmartUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "XmlFeatureSet"
.end annotation


# instance fields
.field private mXmlFeatureSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lge/lgdata/LGDataFeatureSmartUpdater;


# direct methods
.method protected constructor <init>(Lcom/lge/lgdata/LGDataFeatureSmartUpdater;)V
    .locals 1
    .param p1, "this$0"    # Lcom/lge/lgdata/LGDataFeatureSmartUpdater;

    .line 129
    iput-object p1, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;->this$0:Lcom/lge/lgdata/LGDataFeatureSmartUpdater;

    .line 130
    invoke-direct {p0}, Lcom/lge/lgdata/ILGDataFeatureSet;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;->mXmlFeatureSet:Landroid/util/ArraySet;

    .line 131
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;->mXmlFeatureSet:Landroid/util/ArraySet;

    .line 132
    return-void
.end method

.method private requireXmlFeature(Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;)V
    .locals 4
    .param p1, "xmlFeature"    # Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;

    .line 136
    if-nez p1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;->this$0:Lcom/lge/lgdata/LGDataFeatureSmartUpdater;

    const-string/jumbo v1, "requireXmlFeature: parameter xmlFeature is null"

    invoke-static {v0, v1}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater;->access$000(Lcom/lge/lgdata/LGDataFeatureSmartUpdater;Ljava/lang/String;)V

    .line 138
    return-void

    .line 141
    :cond_0
    iget-object v0, p1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mFeature:Lcom/lge/lgdata/LGDataRuntimeFeature;

    if-nez v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;->this$0:Lcom/lge/lgdata/LGDataFeatureSmartUpdater;

    const-string/jumbo v1, "requireXmlFeature: xmlFeature.mFeature is null"

    invoke-static {v0, v1}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater;->access$000(Lcom/lge/lgdata/LGDataFeatureSmartUpdater;Ljava/lang/String;)V

    .line 143
    return-void

    .line 146
    :cond_1
    iget-object v0, p1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mEnabledType:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    if-nez v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;->this$0:Lcom/lge/lgdata/LGDataFeatureSmartUpdater;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requireXmlFeature: xmlFeature.mEnabledType is null, xmlFeature.mFeature="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mFeature:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater;->access$000(Lcom/lge/lgdata/LGDataFeatureSmartUpdater;Ljava/lang/String;)V

    .line 149
    return-void

    .line 152
    :cond_2
    iget-object v0, p1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mEnabledType:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    sget-object v1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;->PROP:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    if-eq v0, v1, :cond_3

    iget-object v0, p1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mEnabledType:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    sget-object v1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;->PROP_VAL:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    if-ne v0, v1, :cond_4

    :cond_3
    iget-object v0, p1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mPropertyName:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 155
    iget-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;->this$0:Lcom/lge/lgdata/LGDataFeatureSmartUpdater;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requireXmlFeature: xmlFeature.mPropertyName is null, xmlFeature.mFeature="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mFeature:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater;->access$000(Lcom/lge/lgdata/LGDataFeatureSmartUpdater;Ljava/lang/String;)V

    .line 156
    return-void

    .line 159
    :cond_4
    iget-object v0, p1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mEnabledType:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    sget-object v1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;->PROP_VAL:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    if-ne v0, v1, :cond_5

    iget-object v0, p1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mPropertyValue:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 161
    iget-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;->this$0:Lcom/lge/lgdata/LGDataFeatureSmartUpdater;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requireXmlFeature: xmlFeature.mPropertyValue is null, xmlFeature.mFeature="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mFeature:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater;->access$000(Lcom/lge/lgdata/LGDataFeatureSmartUpdater;Ljava/lang/String;)V

    .line 162
    return-void

    .line 165
    :cond_5
    iget-object v0, p1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mEnabledType:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    sget-object v1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;->SIM:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    if-ne v0, v1, :cond_6

    iget-object v0, p1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mNumeric:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 167
    iget-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;->this$0:Lcom/lge/lgdata/LGDataFeatureSmartUpdater;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requireXmlFeature: xmlFeature.mNumeric is null, xmlFeature.mFeature="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mFeature:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater;->access$000(Lcom/lge/lgdata/LGDataFeatureSmartUpdater;Ljava/lang/String;)V

    .line 168
    return-void

    .line 171
    :cond_6
    iget-object v0, p1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mEnabledType:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    sget-object v1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;->NO_COND:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    if-ne v0, v1, :cond_8

    .line 172
    iget-boolean v0, p1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mEnable:Z

    if-eqz v0, :cond_7

    .line 173
    iget-object v0, p1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mFeature:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;->ON(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    goto :goto_0

    .line 175
    :cond_7
    iget-object v0, p1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mFeature:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {p0, v0}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;->OFF(Lcom/lge/lgdata/LGDataRuntimeFeature;)V

    goto :goto_0

    .line 177
    :cond_8
    iget-object v0, p1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mEnabledType:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    sget-object v1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;->PROP:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    if-ne v0, v1, :cond_9

    .line 178
    iget-object v0, p1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mFeature:Lcom/lge/lgdata/LGDataRuntimeFeature;

    iget-object v1, p1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mPropertyName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;->ON_PROP(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_9
    iget-object v0, p1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mEnabledType:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    sget-object v1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;->PROP_VAL:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    if-ne v0, v1, :cond_a

    .line 180
    iget-object v0, p1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mFeature:Lcom/lge/lgdata/LGDataRuntimeFeature;

    iget-object v1, p1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mPropertyName:Ljava/lang/String;

    iget-object v2, p1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mPropertyValue:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;->ON_PROP(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_a
    iget-object v0, p1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mEnabledType:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    sget-object v1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;->SIM:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    if-ne v0, v1, :cond_b

    .line 182
    iget-object v0, p1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mFeature:Lcom/lge/lgdata/LGDataRuntimeFeature;

    iget-object v1, p1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mNumeric:Ljava/lang/String;

    iget-object v2, p1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mMvnoType:Ljava/lang/String;

    iget-object v3, p1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mMvnoMatchData:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;->ON_SIM(Lcom/lge/lgdata/LGDataRuntimeFeature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_b
    :goto_0
    return-void
.end method


# virtual methods
.method protected addXmlFeature(Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;)V
    .locals 1
    .param p1, "feature"    # Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;

    .line 230
    iget-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;->mXmlFeatureSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 231
    return-void
.end method

.method protected isEmpty()Z
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;->mXmlFeatureSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public require()V
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;->mXmlFeatureSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 190
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;->mXmlFeatureSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;

    .line 195
    .local v1, "xmlFeature":Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;
    iget-object v2, v1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mChipsetType:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

    sget-object v3, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;->ALL:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

    if-ne v2, v3, :cond_1

    .line 196
    invoke-direct {p0, v1}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;->requireXmlFeature(Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;)V

    .line 198
    .end local v1    # "xmlFeature":Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;
    :cond_1
    goto :goto_0

    .line 199
    :cond_2
    return-void
.end method

.method public require4MTK()V
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;->mXmlFeatureSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 218
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;->mXmlFeatureSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;

    .line 223
    .local v1, "xmlFeature":Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;
    iget-object v2, v1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mChipsetType:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

    sget-object v3, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;->MTK:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

    if-ne v2, v3, :cond_1

    .line 224
    invoke-direct {p0, v1}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;->requireXmlFeature(Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;)V

    .line 226
    .end local v1    # "xmlFeature":Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;
    :cond_1
    goto :goto_0

    .line 227
    :cond_2
    return-void
.end method

.method public require4QCT()V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;->mXmlFeatureSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 204
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;->mXmlFeatureSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;

    .line 209
    .local v1, "xmlFeature":Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;
    iget-object v2, v1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mChipsetType:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

    sget-object v3, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;->QCT:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

    if-ne v2, v3, :cond_1

    .line 210
    invoke-direct {p0, v1}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeatureSet;->requireXmlFeature(Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;)V

    .line 212
    .end local v1    # "xmlFeature":Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;
    :cond_1
    goto :goto_0

    .line 213
    :cond_2
    return-void
.end method

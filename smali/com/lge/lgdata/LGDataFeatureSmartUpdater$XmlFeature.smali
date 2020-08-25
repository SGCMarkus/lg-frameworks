.class public Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;
.super Ljava/lang/Object;
.source "LGDataFeatureSmartUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdata/LGDataFeatureSmartUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "XmlFeature"
.end annotation


# instance fields
.field protected mChipsetType:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

.field protected mEnable:Z

.field protected mEnabledType:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

.field protected mFeature:Lcom/lge/lgdata/LGDataRuntimeFeature;

.field protected mMvnoMatchData:Ljava/lang/String;

.field protected mMvnoType:Ljava/lang/String;

.field protected mNumeric:Ljava/lang/String;

.field protected mPropertyName:Ljava/lang/String;

.field protected mPropertyValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/lgdata/LGDataFeatureSmartUpdater;


# direct methods
.method protected constructor <init>(Lcom/lge/lgdata/LGDataFeatureSmartUpdater;Lcom/lge/lgdata/LGDataRuntimeFeature;ZLcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;)V
    .locals 2
    .param p1, "this$0"    # Lcom/lge/lgdata/LGDataFeatureSmartUpdater;
    .param p2, "feature"    # Lcom/lge/lgdata/LGDataRuntimeFeature;
    .param p3, "enable"    # Z
    .param p4, "chipsetType"    # Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

    .line 73
    iput-object p1, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->this$0:Lcom/lge/lgdata/LGDataFeatureSmartUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;->NO_COND:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mEnabledType:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mFeature:Lcom/lge/lgdata/LGDataRuntimeFeature;

    .line 61
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mEnable:Z

    .line 62
    sget-object v1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;->ALL:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

    iput-object v1, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mChipsetType:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

    .line 65
    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mPropertyName:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mPropertyValue:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mNumeric:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mMvnoType:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mMvnoMatchData:Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;->NO_COND:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mEnabledType:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    .line 75
    iput-object p2, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mFeature:Lcom/lge/lgdata/LGDataRuntimeFeature;

    .line 76
    iput-boolean p3, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mEnable:Z

    .line 77
    if-nez p4, :cond_0

    .line 78
    sget-object p4, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;->ALL:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

    .line 80
    :cond_0
    iput-object p4, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mChipsetType:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

    .line 81
    return-void
.end method


# virtual methods
.method protected addPropCondition(Ljava/lang/String;)Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;
    .locals 3
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 84
    iget-boolean v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mEnable:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mEnabledType:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    sget-object v1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;->NO_COND:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    if-ne v0, v1, :cond_0

    .line 85
    sget-object v0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;->PROP:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mEnabledType:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    .line 86
    iput-object p1, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mPropertyName:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mPropertyValue:Ljava/lang/String;

    goto :goto_0

    .line 88
    :cond_0
    iget-boolean v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mEnable:Z

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->this$0:Lcom/lge/lgdata/LGDataFeatureSmartUpdater;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid request to add property condition for disabled feature, mFeature="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mFeature:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater;->access$000(Lcom/lge/lgdata/LGDataFeatureSmartUpdater;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->this$0:Lcom/lge/lgdata/LGDataFeatureSmartUpdater;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid request to add one more property condition, mFeature="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mFeature:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater;->access$000(Lcom/lge/lgdata/LGDataFeatureSmartUpdater;Ljava/lang/String;)V

    .line 93
    :goto_0
    return-object p0
.end method

.method protected addPropCondition(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;
    .locals 3
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 97
    iget-boolean v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mEnable:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mEnabledType:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    sget-object v1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;->NO_COND:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    if-ne v0, v1, :cond_0

    .line 98
    sget-object v0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;->PROP_VAL:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mEnabledType:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    .line 99
    iput-object p1, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mPropertyName:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mPropertyValue:Ljava/lang/String;

    goto :goto_0

    .line 101
    :cond_0
    iget-boolean v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mEnable:Z

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->this$0:Lcom/lge/lgdata/LGDataFeatureSmartUpdater;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid request to add property and value condition for disabled feature, mFeature="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mFeature:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater;->access$000(Lcom/lge/lgdata/LGDataFeatureSmartUpdater;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->this$0:Lcom/lge/lgdata/LGDataFeatureSmartUpdater;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid request to add one more property and value condition, mFeature="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mFeature:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater;->access$000(Lcom/lge/lgdata/LGDataFeatureSmartUpdater;Ljava/lang/String;)V

    .line 106
    :goto_0
    return-object p0
.end method

.method protected addSimCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;
    .locals 3
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "mvnoType"    # Ljava/lang/String;
    .param p3, "mvnoData"    # Ljava/lang/String;

    .line 110
    iget-boolean v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mEnable:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mEnabledType:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    sget-object v1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;->NO_COND:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    if-ne v0, v1, :cond_0

    .line 111
    sget-object v0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;->SIM:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    iput-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mEnabledType:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    .line 112
    iput-object p1, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mNumeric:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mMvnoType:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mMvnoMatchData:Ljava/lang/String;

    goto :goto_0

    .line 115
    :cond_0
    iget-boolean v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mEnable:Z

    if-nez v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->this$0:Lcom/lge/lgdata/LGDataFeatureSmartUpdater;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid request to add SIM condition for disabled feature, mFeature="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mFeature:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater;->access$000(Lcom/lge/lgdata/LGDataFeatureSmartUpdater;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->this$0:Lcom/lge/lgdata/LGDataFeatureSmartUpdater;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid request to add one more SIM condition, mFeature="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$XmlFeature;->mFeature:Lcom/lge/lgdata/LGDataRuntimeFeature;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater;->access$000(Lcom/lge/lgdata/LGDataFeatureSmartUpdater;Ljava/lang/String;)V

    .line 120
    :goto_0
    return-object p0
.end method

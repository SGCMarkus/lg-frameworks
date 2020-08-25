.class public final enum Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;
.super Ljava/lang/Enum;
.source "LGDataFeatureSmartUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdata/LGDataFeatureSmartUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ChipsetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

.field public static final enum ALL:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

.field public static final enum MTK:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

.field public static final enum QCT:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 52
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

    const/4 v1, 0x0

    const-string v2, "ALL"

    invoke-direct {v0, v2, v1}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;->ALL:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

    .line 53
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

    const/4 v2, 0x1

    const-string v3, "QCT"

    invoke-direct {v0, v3, v2}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;->QCT:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

    .line 54
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

    const/4 v3, 0x2

    const-string v4, "MTK"

    invoke-direct {v0, v4, v3}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;->MTK:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

    sget-object v4, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;->ALL:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;->QCT:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;->MTK:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;->$VALUES:[Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 51
    const-class v0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

    return-object v0
.end method

.method public static values()[Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;
    .locals 1

    .line 51
    sget-object v0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;->$VALUES:[Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

    invoke-virtual {v0}, [Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/lgdata/LGDataFeatureSmartUpdater$ChipsetType;

    return-object v0
.end method

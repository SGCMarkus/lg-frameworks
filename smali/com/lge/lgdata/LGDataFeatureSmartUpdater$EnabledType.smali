.class public final enum Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;
.super Ljava/lang/Enum;
.source "LGDataFeatureSmartUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdata/LGDataFeatureSmartUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "EnabledType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

.field public static final enum NO_COND:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

.field public static final enum PROP:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

.field public static final enum PROP_VAL:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

.field public static final enum SIM:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 45
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    const/4 v1, 0x0

    const-string v2, "NO_COND"

    invoke-direct {v0, v2, v1}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;->NO_COND:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    .line 46
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    const/4 v2, 0x1

    const-string v3, "SIM"

    invoke-direct {v0, v3, v2}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;->SIM:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    .line 47
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    const/4 v3, 0x2

    const-string v4, "PROP"

    invoke-direct {v0, v4, v3}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;->PROP:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    .line 48
    new-instance v0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    const/4 v4, 0x3

    const-string v5, "PROP_VAL"

    invoke-direct {v0, v5, v4}, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;->PROP_VAL:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    sget-object v5, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;->NO_COND:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;->SIM:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;->PROP:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;->PROP_VAL:Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;->$VALUES:[Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 44
    const-class v0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    return-object v0
.end method

.method public static values()[Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;
    .locals 1

    .line 44
    sget-object v0, Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;->$VALUES:[Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    invoke-virtual {v0}, [Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/lgdata/LGDataFeatureSmartUpdater$EnabledType;

    return-object v0
.end method

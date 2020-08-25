.class public final enum Lcom/lge/lgdata/LGDctConstants$ApnSyncType;
.super Ljava/lang/Enum;
.source "LGDctConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdata/LGDctConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApnSyncType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lge/lgdata/LGDctConstants$ApnSyncType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/lgdata/LGDctConstants$ApnSyncType;

.field public static final enum DEFAULT:Lcom/lge/lgdata/LGDctConstants$ApnSyncType;

.field public static final enum NONE:Lcom/lge/lgdata/LGDctConstants$ApnSyncType;

.field public static final enum SUPL:Lcom/lge/lgdata/LGDctConstants$ApnSyncType;

.field public static final enum TETHER:Lcom/lge/lgdata/LGDctConstants$ApnSyncType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 11
    new-instance v0, Lcom/lge/lgdata/LGDctConstants$ApnSyncType;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/lge/lgdata/LGDctConstants$ApnSyncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/lgdata/LGDctConstants$ApnSyncType;->NONE:Lcom/lge/lgdata/LGDctConstants$ApnSyncType;

    .line 12
    new-instance v0, Lcom/lge/lgdata/LGDctConstants$ApnSyncType;

    const/4 v2, 0x1

    const-string v3, "DEFAULT"

    invoke-direct {v0, v3, v2}, Lcom/lge/lgdata/LGDctConstants$ApnSyncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/lgdata/LGDctConstants$ApnSyncType;->DEFAULT:Lcom/lge/lgdata/LGDctConstants$ApnSyncType;

    .line 13
    new-instance v0, Lcom/lge/lgdata/LGDctConstants$ApnSyncType;

    const/4 v3, 0x2

    const-string v4, "TETHER"

    invoke-direct {v0, v4, v3}, Lcom/lge/lgdata/LGDctConstants$ApnSyncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/lgdata/LGDctConstants$ApnSyncType;->TETHER:Lcom/lge/lgdata/LGDctConstants$ApnSyncType;

    .line 14
    new-instance v0, Lcom/lge/lgdata/LGDctConstants$ApnSyncType;

    const/4 v4, 0x3

    const-string v5, "SUPL"

    invoke-direct {v0, v5, v4}, Lcom/lge/lgdata/LGDctConstants$ApnSyncType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lge/lgdata/LGDctConstants$ApnSyncType;->SUPL:Lcom/lge/lgdata/LGDctConstants$ApnSyncType;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/lge/lgdata/LGDctConstants$ApnSyncType;

    sget-object v5, Lcom/lge/lgdata/LGDctConstants$ApnSyncType;->NONE:Lcom/lge/lgdata/LGDctConstants$ApnSyncType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/lge/lgdata/LGDctConstants$ApnSyncType;->DEFAULT:Lcom/lge/lgdata/LGDctConstants$ApnSyncType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lge/lgdata/LGDctConstants$ApnSyncType;->TETHER:Lcom/lge/lgdata/LGDctConstants$ApnSyncType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lge/lgdata/LGDctConstants$ApnSyncType;->SUPL:Lcom/lge/lgdata/LGDctConstants$ApnSyncType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/lgdata/LGDctConstants$ApnSyncType;->$VALUES:[Lcom/lge/lgdata/LGDctConstants$ApnSyncType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/lgdata/LGDctConstants$ApnSyncType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 10
    const-class v0, Lcom/lge/lgdata/LGDctConstants$ApnSyncType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/lgdata/LGDctConstants$ApnSyncType;

    return-object v0
.end method

.method public static values()[Lcom/lge/lgdata/LGDctConstants$ApnSyncType;
    .locals 1

    .line 10
    sget-object v0, Lcom/lge/lgdata/LGDctConstants$ApnSyncType;->$VALUES:[Lcom/lge/lgdata/LGDctConstants$ApnSyncType;

    invoke-virtual {v0}, [Lcom/lge/lgdata/LGDctConstants$ApnSyncType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/lgdata/LGDctConstants$ApnSyncType;

    return-object v0
.end method

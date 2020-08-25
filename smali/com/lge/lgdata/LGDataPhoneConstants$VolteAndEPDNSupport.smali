.class public final enum Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;
.super Ljava/lang/Enum;
.source "LGDataPhoneConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdata/LGDataPhoneConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VolteAndEPDNSupport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

.field public static final enum EPDN_NOT_SUPPORT:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

.field public static final enum EPDN_SUPPORT:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

.field public static final enum NONE:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

.field public static final enum VOLTE_NOT_SUPPORT:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

.field public static final enum VOLTE_SUPPORT:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

.field private static final sVolteAndEPDNSupportMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 88
    new-instance v0, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->NONE:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    .line 89
    new-instance v0, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    const/4 v2, 0x1

    const-string v3, "VOLTE_NOT_SUPPORT"

    invoke-direct {v0, v3, v2, v2}, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->VOLTE_NOT_SUPPORT:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    .line 90
    new-instance v0, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    const/4 v3, 0x2

    const-string v4, "VOLTE_SUPPORT"

    invoke-direct {v0, v4, v3, v3}, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->VOLTE_SUPPORT:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    .line 91
    new-instance v0, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    const/4 v4, 0x3

    const-string v5, "EPDN_NOT_SUPPORT"

    invoke-direct {v0, v5, v4, v4}, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->EPDN_NOT_SUPPORT:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    .line 92
    new-instance v0, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    const/4 v5, 0x4

    const-string v6, "EPDN_SUPPORT"

    invoke-direct {v0, v6, v5, v5}, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->EPDN_SUPPORT:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    .line 87
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    sget-object v6, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->NONE:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    aput-object v6, v0, v1

    sget-object v6, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->VOLTE_NOT_SUPPORT:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    aput-object v6, v0, v2

    sget-object v2, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->VOLTE_SUPPORT:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    aput-object v2, v0, v3

    sget-object v2, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->EPDN_NOT_SUPPORT:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    aput-object v2, v0, v4

    sget-object v2, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->EPDN_SUPPORT:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    aput-object v2, v0, v5

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->$VALUES:[Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->sVolteAndEPDNSupportMap:Ljava/util/HashMap;

    .line 98
    invoke-static {}, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->values()[Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 99
    .local v3, "ves":Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;
    sget-object v4, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->sVolteAndEPDNSupportMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .end local v3    # "ves":Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 104
    iput p3, p0, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->mCode:I

    .line 105
    return-void
.end method

.method public static fromInt(I)Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;
    .locals 2
    .param p0, "code"    # I

    .line 111
    sget-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->sVolteAndEPDNSupportMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    .line 112
    .local v0, "ves":Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;
    if-nez v0, :cond_0

    .line 113
    sget-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->NONE:Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    .line 115
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 87
    const-class v0, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    return-object v0
.end method

.method public static values()[Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;
    .locals 1

    .line 87
    sget-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->$VALUES:[Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    invoke-virtual {v0}, [Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/lge/lgdata/LGDataPhoneConstants$VolteAndEPDNSupport;->mCode:I

    return v0
.end method

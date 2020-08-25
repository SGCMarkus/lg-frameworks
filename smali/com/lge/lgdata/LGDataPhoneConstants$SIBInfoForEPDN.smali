.class public final enum Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;
.super Ljava/lang/Enum;
.source "LGDataPhoneConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdata/LGDataPhoneConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SIBInfoForEPDN"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

.field public static final enum EMER_ATTACH_NOT_SUPPORT:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

.field public static final enum EMER_ATTACH_SUPPORT:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

.field public static final enum EPDN_BARRED:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

.field public static final enum EPDN_NOT_BARRED:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

.field public static final enum NONE:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

.field private static final sSIBInfoForEPDNMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 120
    new-instance v0, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1, v1}, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;->NONE:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    .line 121
    new-instance v0, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    const/4 v2, 0x1

    const-string v3, "EMER_ATTACH_NOT_SUPPORT"

    invoke-direct {v0, v3, v2, v2}, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;->EMER_ATTACH_NOT_SUPPORT:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    .line 122
    new-instance v0, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    const/4 v3, 0x2

    const-string v4, "EMER_ATTACH_SUPPORT"

    invoke-direct {v0, v4, v3, v3}, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;->EMER_ATTACH_SUPPORT:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    .line 123
    new-instance v0, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    const/4 v4, 0x3

    const-string v5, "EPDN_NOT_BARRED"

    invoke-direct {v0, v5, v4, v4}, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;->EPDN_NOT_BARRED:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    .line 124
    new-instance v0, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    const/4 v5, 0x4

    const-string v6, "EPDN_BARRED"

    invoke-direct {v0, v6, v5, v5}, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;->EPDN_BARRED:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    .line 119
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    sget-object v6, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;->NONE:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    aput-object v6, v0, v1

    sget-object v6, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;->EMER_ATTACH_NOT_SUPPORT:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    aput-object v6, v0, v2

    sget-object v2, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;->EMER_ATTACH_SUPPORT:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    aput-object v2, v0, v3

    sget-object v2, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;->EPDN_NOT_BARRED:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    aput-object v2, v0, v4

    sget-object v2, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;->EPDN_BARRED:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    aput-object v2, v0, v5

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;->$VALUES:[Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;->sSIBInfoForEPDNMap:Ljava/util/HashMap;

    .line 130
    invoke-static {}, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;->values()[Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 131
    .local v3, "sie":Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;
    sget-object v4, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;->sSIBInfoForEPDNMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .end local v3    # "sie":Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
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

    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 136
    iput p3, p0, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;->mCode:I

    .line 137
    return-void
.end method

.method public static fromInt(I)Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;
    .locals 2
    .param p0, "code"    # I

    .line 144
    sget-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;->sSIBInfoForEPDNMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    .line 145
    .local v0, "sie":Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;
    if-nez v0, :cond_0

    .line 146
    sget-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;->NONE:Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    .line 148
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 119
    const-class v0, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    return-object v0
.end method

.method public static values()[Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;
    .locals 1

    .line 119
    sget-object v0, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;->$VALUES:[Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    invoke-virtual {v0}, [Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/lge/lgdata/LGDataPhoneConstants$SIBInfoForEPDN;->mCode:I

    return v0
.end method

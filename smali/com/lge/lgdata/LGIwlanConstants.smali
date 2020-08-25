.class public Lcom/lge/lgdata/LGIwlanConstants;
.super Ljava/lang/Object;
.source "LGIwlanConstants.java"


# static fields
.field public static final BUFFER_SIZE:I = 0x1000

.field public static final ERROR_NONE:I = 0x0

.field public static final GENERIC_FAILURE:I = 0x2

.field public static final IWLAN_DEAMON_EXCEPTION_CRASHED:I = 0x1

.field public static final IWLAN_EVENT_MAX:I = 0x7d0

.field public static final IWLAN_REQUEST_CONNECT:I = 0x3e9

.field public static final IWLAN_REQUEST_DISCONNECT:I = 0x3ea

.field public static final IWLAN_REQUEST_DO_DPD:I = 0x3ed

.field public static final IWLAN_REQUEST_HANDOVER_TO_IWLAN:I = 0x3eb

.field public static final IWLAN_REQUEST_RELEASE_CONTEXT:I = 0x3ec

.field public static final IWLAN_REQUEST_SEND_IMEI:I = 0x4b2

.field public static final IWLAN_REQUEST_SEND_MAC:I = 0x4b1

.field public static final IWLAN_RESPONSE_SOLICITED:I = 0x0

.field public static final IWLAN_RESPONSE_UNSOLICITED:I = 0x1

.field public static final IWLAN_UNSOL_DAEMON_EXCEPTION_IND:I = 0x44f

.field public static final IWLAN_UNSOL_DISCONNECT:I = 0x44d

.field public static final IWLAN_UNSOL_DPD_STATUS_CHANGED:I = 0x450

.field public static final IWLAN_UNSOL_WIFI_AVAILABLE_INFO_IND:I = 0x44e

.field public static final MAX_COMMAND_BYTES:I = 0x2000

.field public static final SOCKET_NAME:Ljava/lang/String; = "map_sock"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .line 56
    const/16 v0, 0x4b1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4b2

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 71
    const-string v0, "NO_MATCH_REQUEST"

    return-object v0

    .line 63
    :pswitch_0
    const-string v0, "IWLAN_REQUEST_DO_DPD"

    return-object v0

    .line 61
    :pswitch_1
    const-string v0, "IWLAN_REQUEST_RELEASE_CONTEXT"

    return-object v0

    .line 60
    :pswitch_2
    const-string v0, "IWLAN_REQUEST_HANDOVER_TO_IWLAN"

    return-object v0

    .line 59
    :pswitch_3
    const-string v0, "IWLAN_REQUEST_DISCONNECT"

    return-object v0

    .line 58
    :pswitch_4
    const-string v0, "IWLAN_REQUEST_CONNECT"

    return-object v0

    .line 68
    :cond_0
    const-string v0, "IWLAN_REQUEST_SEND_IMEI"

    return-object v0

    .line 67
    :cond_1
    const-string v0, "IWLAN_REQUEST_SEND_MAC"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static responseToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "response"    # I

    .line 77
    packed-switch p0, :pswitch_data_0

    .line 85
    const-string v0, "NO_MATCH_RESPONSE"

    return-object v0

    .line 83
    :pswitch_0
    const-string v0, "IWLAN_UNSOL_DPD_STATUS_CHANGED"

    return-object v0

    .line 81
    :pswitch_1
    const-string v0, "IWLAN_UNSOL_DAEMON_EXCEPTION_IND"

    return-object v0

    .line 80
    :pswitch_2
    const-string v0, "IWLAN_UNSOL_WIFI_AVAILABLE_INFO_IND"

    return-object v0

    .line 79
    :pswitch_3
    const-string v0, "IWLAN_UNSOL_DISCONNECT"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x44d
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

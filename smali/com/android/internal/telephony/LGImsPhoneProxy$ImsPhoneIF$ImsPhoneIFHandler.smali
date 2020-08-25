.class Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;
.super Landroid/os/Handler;
.source "LGImsPhoneProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsPhoneIFHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;)V
    .locals 0

    .line 2424
    iput-object p1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;Lcom/android/internal/telephony/LGImsPhoneProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;
    .param p2, "x1"    # Lcom/android/internal/telephony/LGImsPhoneProxy$1;

    .line 2424
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;-><init>(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;)V

    return-void
.end method


# virtual methods
.method public cacheMessage(ILandroid/os/AsyncResult;)V
    .locals 1
    .param p1, "msgType"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .line 2426
    const/16 v0, 0x6e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6f

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2432
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    invoke-static {v0, p2}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$1300(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;Landroid/os/AsyncResult;)Z

    .line 2433
    goto :goto_0

    .line 2428
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    invoke-static {v0, p2}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$1200(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;Landroid/os/AsyncResult;)V

    .line 2429
    nop

    .line 2438
    :goto_0
    return-void
.end method

.method public handleInternalMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 2441
    const/4 v0, 0x1

    .line 2443
    .local v0, "handled":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x74

    if-eq v1, v2, :cond_1

    const/16 v2, 0x98

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 2470
    const/4 v0, 0x0

    goto :goto_0

    .line 2466
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    invoke-static {v1}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$1700(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;)V

    .line 2467
    goto :goto_0

    .line 2449
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    invoke-static {v1}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$000(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;)V

    .line 2450
    goto :goto_0

    .line 2446
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    invoke-virtual {v1}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->startPhoneIF()V

    .line 2447
    goto :goto_0

    .line 2453
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    invoke-static {v1}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$1400(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;)V

    .line 2454
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    invoke-static {v1}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$1500(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;)V

    .line 2455
    goto :goto_0

    .line 2458
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$400()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 2459
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$1600(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;Z)V

    goto :goto_0

    .line 2461
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->setImsEnabledForMTK(I)V

    .line 2463
    nop

    .line 2474
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x9b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 2494
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    const-string v1, ")"

    const-string v2, "LGIMS_IPP"

    if-eqz v0, :cond_0

    .line 2495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage :: event ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->handleInternalMessage(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2499
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2500
    const-string v0, "internal message is processed"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2502
    :cond_1
    return-void

    .line 2505
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->prehandleMessage(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2506
    return-void

    .line 2509
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2511
    .local v0, "ar":Landroid/os/AsyncResult;
    if-nez v0, :cond_5

    .line 2512
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2513
    const-string v1, "ar is null"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    :cond_4
    return-void

    .line 2518
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    invoke-static {v3}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$1800(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2519
    const-string v1, "Callback is null"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->cacheMessage(ILandroid/os/AsyncResult;)V

    .line 2521
    return-void

    .line 2524
    :cond_6
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/16 v4, 0x9

    const/4 v5, 0x0

    const-string v6, ""

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eqz v3, :cond_b

    .line 2525
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    :cond_7
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x65

    if-eq v1, v2, :cond_9

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x66

    if-ne v1, v2, :cond_8

    goto :goto_0

    .line 2533
    :cond_8
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x73

    if-ne v1, v2, :cond_a

    .line 2534
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 2535
    .local v1, "id":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v4, v3, v8, v5}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$1000(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;IIILjava/lang/String;)V

    goto :goto_1

    .line 2531
    .end local v1    # "id":Ljava/lang/Integer;
    :cond_9
    :goto_0
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 2532
    .local v1, "fileId":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v7, v3, v8, v6}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$1000(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;IIILjava/lang/String;)V

    .line 2533
    .end local v1    # "fileId":Ljava/lang/Integer;
    :cond_a
    nop

    .line 2537
    :goto_1
    return-void

    .line 2540
    :cond_b
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v9, 0x75

    if-eq v3, v9, :cond_20

    const/16 v9, 0x7c

    if-eq v3, v9, :cond_20

    const/16 v9, 0x9e

    const/4 v10, 0x1

    if-eq v3, v9, :cond_1c

    const-string v9, "ar.result is null"

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    .line 2709
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 2710
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown event ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2676
    :pswitch_0
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 2678
    .local v1, "id":Ljava/lang/Integer;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 2679
    .local v3, "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    if-nez v3, :cond_c

    move-object v6, v5

    goto :goto_2

    :cond_c
    iget-object v6, v3, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .line 2681
    .local v6, "payloaddata":[B
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_SEND_ENVELOPE_RESPONSE: result="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    if-eqz v6, :cond_e

    array-length v2, v6

    if-nez v2, :cond_d

    goto :goto_3

    .line 2687
    :cond_d
    iget-object v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    .line 2688
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-byte v7, v6, v8

    iget-object v8, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    invoke-static {v8, v6}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$2300(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;[B)Ljava/lang/String;

    move-result-object v8

    .line 2687
    invoke-static {v2, v4, v5, v7, v8}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$1000(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;IIILjava/lang/String;)V

    .line 2690
    goto/16 :goto_7

    .line 2684
    :cond_e
    :goto_3
    iget-object v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    .line 2685
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2684
    invoke-static {v2, v4, v7, v8, v5}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$1000(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;IIILjava/lang/String;)V

    goto/16 :goto_7

    .line 2666
    .end local v1    # "id":Ljava/lang/Integer;
    .end local v3    # "result":Lcom/android/internal/telephony/uicc/IccIoResult;
    .end local v6    # "payloaddata":[B
    :pswitch_1
    const/4 v1, -0x1

    .line 2667
    .local v1, "value":I
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_f

    .line 2668
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    aget v1, v2, v8

    .line 2671
    :cond_f
    iget-object v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    const/16 v3, 0x8

    invoke-static {v2, v3, v1, v8, v6}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$1000(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;IIILjava/lang/String;)V

    .line 2673
    .end local v1    # "value":I
    goto/16 :goto_7

    .line 2655
    :pswitch_2
    const-string v1, ""

    .line 2656
    .local v1, "result":Ljava/lang/String;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_10

    .line 2657
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 2660
    :cond_10
    iget-object v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    const/4 v3, 0x6

    invoke-static {v2, v3, v8, v8, v1}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$1000(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;IIILjava/lang/String;)V

    .line 2663
    .end local v1    # "result":Ljava/lang/String;
    goto/16 :goto_7

    .line 2649
    :pswitch_3
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 2650
    .local v1, "ret":[I
    iget-object v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$2200(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;[I)V

    .line 2652
    .end local v1    # "ret":[I
    goto/16 :goto_7

    .line 2642
    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$1300(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;Landroid/os/AsyncResult;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2643
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    invoke-static {v1}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$2100(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;)[I

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$2200(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;[I)V

    goto/16 :goto_7

    .line 2620
    :pswitch_5
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 2621
    .restart local v1    # "ret":[I
    if-eqz v1, :cond_11

    array-length v3, v1

    goto :goto_4

    :cond_11
    move v3, v8

    .line 2623
    .local v3, "ret_length":I
    :goto_4
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2624
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    :cond_12
    if-le v3, v10, :cond_14

    .line 2628
    iget-object v4, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    aget v5, v1, v8

    invoke-static {v4, v5}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$1902(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;I)I

    .line 2629
    iget-object v4, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    aget v5, v1, v10

    invoke-static {v4, v5}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$2002(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;I)I

    .line 2631
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2632
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ims pref ind :: sys mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    .line 2633
    invoke-static {v5}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$1900(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , pref state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    invoke-static {v5}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$2000(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2632
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    :cond_13
    iget-object v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    const/4 v4, 0x4

    .line 2636
    invoke-static {v2}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$1900(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;)I

    move-result v5

    iget-object v7, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    invoke-static {v7}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$2000(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;)I

    move-result v7

    .line 2635
    invoke-static {v2, v4, v5, v7, v6}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$1000(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;IIILjava/lang/String;)V

    .line 2639
    .end local v1    # "ret":[I
    .end local v3    # "ret_length":I
    :cond_14
    goto/16 :goto_7

    .line 2611
    :pswitch_6
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 2613
    .local v1, "fileId":Ljava/lang/Integer;
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2614
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RIL_IMS_SET_E911_STATE received fileId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    .end local v1    # "fileId":Ljava/lang/Integer;
    :cond_15
    goto/16 :goto_7

    .line 2591
    :pswitch_7
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_17

    .line 2592
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2593
    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    :cond_16
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 2597
    .restart local v1    # "fileId":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    .line 2598
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2597
    invoke-static {v2, v7, v3, v8, v6}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$1000(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;IIILjava/lang/String;)V

    .line 2599
    goto/16 :goto_7

    .line 2602
    .end local v1    # "fileId":Ljava/lang/Integer;
    :cond_17
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 2603
    .restart local v1    # "fileId":Ljava/lang/Integer;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 2605
    .local v2, "data":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    .line 2606
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2605
    invoke-static {v3, v7, v4, v8, v2}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$1000(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;IIILjava/lang/String;)V

    .line 2608
    .end local v1    # "fileId":Ljava/lang/Integer;
    .end local v2    # "data":Ljava/lang/String;
    goto/16 :goto_7

    .line 2559
    :pswitch_8
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_19

    .line 2560
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2561
    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    :cond_18
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 2565
    .restart local v1    # "fileId":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    .line 2566
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2565
    invoke-static {v2, v7, v3, v8, v6}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$1000(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;IIILjava/lang/String;)V

    .line 2567
    goto/16 :goto_7

    .line 2570
    .end local v1    # "fileId":Ljava/lang/Integer;
    :cond_19
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 2572
    .restart local v1    # "fileId":Ljava/lang/Integer;
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 2573
    .local v2, "efRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-string v3, ""

    .line 2575
    .local v3, "data":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1b

    .line 2576
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 2578
    .local v5, "tmp":Ljava/lang/String;
    if-eqz v5, :cond_1a

    .line 2579
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2582
    :cond_1a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Z"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2575
    .end local v5    # "tmp":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 2585
    .end local v4    # "i":I
    :cond_1b
    iget-object v4, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    .line 2586
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2585
    invoke-static {v4, v7, v5, v8, v3}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$1000(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;IIILjava/lang/String;)V

    .line 2588
    .end local v1    # "fileId":Ljava/lang/Integer;
    .end local v2    # "efRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3    # "data":Ljava/lang/String;
    goto :goto_7

    .line 2693
    :cond_1c
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v1, v1, Landroid/util/Pair;

    if-eqz v1, :cond_21

    .line 2694
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 2697
    .local v1, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v7, :cond_1f

    .line 2698
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2699
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DATA_ENABLED_CHANGED: enabled ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", reason ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2702
    :cond_1d
    iget-object v2, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    const/16 v3, 0xa

    .line 2703
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-ne v4, v10, :cond_1e

    goto :goto_6

    :cond_1e
    move v10, v8

    .line 2702
    :goto_6
    invoke-static {v2, v3, v10, v8, v5}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->access$1000(Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;IIILjava/lang/String;)V

    .line 2705
    .end local v1    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :cond_1f
    goto :goto_7

    .line 2552
    :cond_20
    :pswitch_9
    invoke-static {}, Lcom/android/internal/telephony/LGImsPhoneProxy;->access$800()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ril response is received = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    :cond_21
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_6
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6e
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x77
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public prehandleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 2478
    const/4 v0, 0x1

    .line 2480
    .local v0, "handled":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x76

    if-eq v1, v2, :cond_0

    .line 2486
    const/4 v0, 0x0

    goto :goto_0

    .line 2482
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF$ImsPhoneIFHandler;->this$1:Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;

    invoke-virtual {v1}, Lcom/android/internal/telephony/LGImsPhoneProxy$ImsPhoneIF;->handleImsNetworkInfo()Z

    .line 2483
    nop

    .line 2490
    :goto_0
    return v0
.end method

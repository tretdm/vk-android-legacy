.class Lcom/vkontakte/android/CallActivity$19$1;
.super Ljava/lang/Object;
.source "CallActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/VoipHangup$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CallActivity$19;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/CallActivity$19;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CallActivity$19;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/CallActivity$19$1;->this$1:Lcom/vkontakte/android/CallActivity$19;

    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 1
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 908
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$19$1;->this$1:Lcom/vkontakte/android/CallActivity$19;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$19;->access$0(Lcom/vkontakte/android/CallActivity$19;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$16(Lcom/vkontakte/android/CallActivity;)Lcom/vkontakte/android/media/rtmp/RTMPClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->disconnect()V

    .line 909
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 910
    return-void
.end method

.method public success()V
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$19$1;->this$1:Lcom/vkontakte/android/CallActivity$19;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$19;->access$0(Lcom/vkontakte/android/CallActivity$19;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity;->access$16(Lcom/vkontakte/android/CallActivity;)Lcom/vkontakte/android/media/rtmp/RTMPClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/media/rtmp/RTMPClient;->disconnect()V

    .line 903
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 904
    return-void
.end method

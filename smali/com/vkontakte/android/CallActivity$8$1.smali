.class Lcom/vkontakte/android/CallActivity$8$1;
.super Ljava/lang/Object;
.source "CallActivity.java"

# interfaces
.implements Lcom/vkontakte/android/api/VoipSetDevices$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CallActivity$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/CallActivity$8;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CallActivity$8;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/CallActivity$8$1;->this$1:Lcom/vkontakte/android/CallActivity$8;

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(ILjava/lang/String;)V
    .locals 2
    .param p1, "ecode"    # I
    .param p2, "emsg"    # Ljava/lang/String;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$8$1;->this$1:Lcom/vkontakte/android/CallActivity$8;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$8;->access$0(Lcom/vkontakte/android/CallActivity$8;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/CallActivity;->access$15(Lcom/vkontakte/android/CallActivity;Z)V

    .line 397
    return-void
.end method

.method public success()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/vkontakte/android/CallActivity$8$1;->this$1:Lcom/vkontakte/android/CallActivity$8;

    invoke-static {v0}, Lcom/vkontakte/android/CallActivity$8;->access$0(Lcom/vkontakte/android/CallActivity$8;)Lcom/vkontakte/android/CallActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkontakte/android/CallActivity;->access$15(Lcom/vkontakte/android/CallActivity;Z)V

    .line 392
    return-void
.end method

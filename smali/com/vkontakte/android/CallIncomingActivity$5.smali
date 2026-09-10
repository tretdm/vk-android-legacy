.class Lcom/vkontakte/android/CallIncomingActivity$5;
.super Ljava/lang/Object;
.source "CallIncomingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/CallIncomingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/CallIncomingActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/CallIncomingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/CallIncomingActivity$5;->this$0:Lcom/vkontakte/android/CallIncomingActivity;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/vkontakte/android/CallIncomingActivity$5;->this$0:Lcom/vkontakte/android/CallIncomingActivity;

    invoke-static {v0}, Lcom/vkontakte/android/CallIncomingActivity;->access$2(Lcom/vkontakte/android/CallIncomingActivity;)V

    .line 136
    new-instance v0, Lcom/vkontakte/android/api/VoipHangup;

    iget-object v1, p0, Lcom/vkontakte/android/CallIncomingActivity$5;->this$0:Lcom/vkontakte/android/CallIncomingActivity;

    invoke-static {v1}, Lcom/vkontakte/android/CallIncomingActivity;->access$0(Lcom/vkontakte/android/CallIncomingActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/vkontakte/android/CallIncomingActivity$5;->this$0:Lcom/vkontakte/android/CallIncomingActivity;

    invoke-static {v2}, Lcom/vkontakte/android/CallIncomingActivity;->access$3(Lcom/vkontakte/android/CallIncomingActivity;)I

    move-result v2

    sget v3, Lcom/vkontakte/android/api/VoipHangup;->REASON_USER_NOT_REPLIED:I

    invoke-direct {v0, v1, v2, v3}, Lcom/vkontakte/android/api/VoipHangup;-><init>(III)V

    invoke-virtual {v0}, Lcom/vkontakte/android/api/VoipHangup;->exec()Lcom/vkontakte/android/APIRequest;

    .line 137
    iget-object v0, p0, Lcom/vkontakte/android/CallIncomingActivity$5;->this$0:Lcom/vkontakte/android/CallIncomingActivity;

    invoke-virtual {v0}, Lcom/vkontakte/android/CallIncomingActivity;->finish()V

    .line 138
    return-void
.end method

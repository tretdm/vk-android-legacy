.class Lcom/vkontakte/android/ChatActivity$21;
.super Ljava/util/TimerTask;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity;->restartTypingTimer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ChatActivity;

.field private final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$21;->this$0:Lcom/vkontakte/android/ChatActivity;

    iput p2, p0, Lcom/vkontakte/android/ChatActivity$21;->val$uid:I

    .line 860
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ChatActivity$21;)Lcom/vkontakte/android/ChatActivity;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$21;->this$0:Lcom/vkontakte/android/ChatActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 863
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$21;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$34(Lcom/vkontakte/android/ChatActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/ChatActivity$21;->val$uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$21;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$10(Lcom/vkontakte/android/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/ChatActivity$21;->val$uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 865
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$21;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$32(Lcom/vkontakte/android/ChatActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/ChatActivity$21$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/ChatActivity$21$1;-><init>(Lcom/vkontakte/android/ChatActivity$21;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 868
    return-void
.end method

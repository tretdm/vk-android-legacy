.class Lcom/vkontakte/android/fragments/ChatFragment$24;
.super Ljava/util/TimerTask;
.source "ChatFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/ChatFragment;->restartTypingTimer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/ChatFragment;

.field private final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/ChatFragment;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/ChatFragment$24;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    iput p2, p0, Lcom/vkontakte/android/fragments/ChatFragment$24;->val$uid:I

    .line 1361
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/fragments/ChatFragment$24;)Lcom/vkontakte/android/fragments/ChatFragment;
    .locals 1

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$24;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$24;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$67(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/fragments/ChatFragment$24;->val$uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$24;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$16(Lcom/vkontakte/android/fragments/ChatFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/fragments/ChatFragment$24;->val$uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1366
    iget-object v0, p0, Lcom/vkontakte/android/fragments/ChatFragment$24;->this$0:Lcom/vkontakte/android/fragments/ChatFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/ChatFragment;->access$65(Lcom/vkontakte/android/fragments/ChatFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/vkontakte/android/fragments/ChatFragment$24$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/fragments/ChatFragment$24$1;-><init>(Lcom/vkontakte/android/fragments/ChatFragment$24;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 1369
    return-void
.end method

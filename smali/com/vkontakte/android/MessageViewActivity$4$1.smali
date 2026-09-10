.class Lcom/vkontakte/android/MessageViewActivity$4$1;
.super Ljava/lang/Object;
.source "MessageViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/MessageViewActivity$4;->success(Lcom/vkontakte/android/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/MessageViewActivity$4;

.field private final synthetic val$msg:Lcom/vkontakte/android/Message;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MessageViewActivity$4;Lcom/vkontakte/android/Message;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/MessageViewActivity$4$1;->this$1:Lcom/vkontakte/android/MessageViewActivity$4;

    iput-object p2, p0, Lcom/vkontakte/android/MessageViewActivity$4$1;->val$msg:Lcom/vkontakte/android/Message;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/vkontakte/android/MessageViewActivity$4$1;->this$1:Lcom/vkontakte/android/MessageViewActivity$4;

    invoke-static {v0}, Lcom/vkontakte/android/MessageViewActivity$4;->access$0(Lcom/vkontakte/android/MessageViewActivity$4;)Lcom/vkontakte/android/MessageViewActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/MessageViewActivity$4$1;->val$msg:Lcom/vkontakte/android/Message;

    invoke-static {v0, v1}, Lcom/vkontakte/android/MessageViewActivity;->access$0(Lcom/vkontakte/android/MessageViewActivity;Lcom/vkontakte/android/Message;)V

    .line 178
    return-void
.end method

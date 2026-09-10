.class Lcom/vkontakte/android/ChatActivity$25$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity$25;->success(Ljava/util/Vector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ChatActivity$25;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity$25;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$25$1;->this$1:Lcom/vkontakte/android/ChatActivity$25;

    .line 1193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$25$1;->this$1:Lcom/vkontakte/android/ChatActivity$25;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$25;->access$0(Lcom/vkontakte/android/ChatActivity$25;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$7(Lcom/vkontakte/android/ChatActivity;)V

    .line 1195
    return-void
.end method

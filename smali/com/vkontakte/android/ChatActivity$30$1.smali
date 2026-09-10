.class Lcom/vkontakte/android/ChatActivity$30$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity$30;->success(Ljava/util/Vector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ChatActivity$30;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity$30;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$30$1;->this$1:Lcom/vkontakte/android/ChatActivity$30;

    .line 1522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$30$1;->this$1:Lcom/vkontakte/android/ChatActivity$30;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$30;->access$0(Lcom/vkontakte/android/ChatActivity$30;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$8(Lcom/vkontakte/android/ChatActivity;)V

    .line 1524
    return-void
.end method

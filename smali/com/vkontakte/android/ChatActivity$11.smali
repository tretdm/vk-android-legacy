.class Lcom/vkontakte/android/ChatActivity$11;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ChatActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$11;->this$0:Lcom/vkontakte/android/ChatActivity;

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$11;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$25(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/MultiAttachView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/MultiAttachView;->getNumAttachments()I

    move-result v0

    if-lez v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$11;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$26(Lcom/vkontakte/android/ChatActivity;)V

    .line 514
    :goto_0
    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$11;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$27(Lcom/vkontakte/android/ChatActivity;)V

    goto :goto_0
.end method

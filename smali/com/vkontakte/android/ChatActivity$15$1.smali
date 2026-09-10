.class Lcom/vkontakte/android/ChatActivity$15$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity$15;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ChatActivity$15;

.field private final synthetic val$mids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity$15;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$15$1;->this$1:Lcom/vkontakte/android/ChatActivity$15;

    iput-object p2, p0, Lcom/vkontakte/android/ChatActivity$15$1;->val$mids:Ljava/util/ArrayList;

    .line 632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/ChatActivity$15$1;)Lcom/vkontakte/android/ChatActivity$15;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$15$1;->this$1:Lcom/vkontakte/android/ChatActivity$15;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 635
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$15$1;->this$1:Lcom/vkontakte/android/ChatActivity$15;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$15;->access$0(Lcom/vkontakte/android/ChatActivity$15;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$21(Lcom/vkontakte/android/ChatActivity;)V

    .line 636
    new-instance v0, Lcom/vkontakte/android/api/MessagesDelete;

    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$15$1;->val$mids:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/vkontakte/android/api/MessagesDelete;-><init>(Ljava/util/List;)V

    .line 637
    new-instance v1, Lcom/vkontakte/android/ChatActivity$15$1$1;

    iget-object v2, p0, Lcom/vkontakte/android/ChatActivity$15$1;->val$mids:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2}, Lcom/vkontakte/android/ChatActivity$15$1$1;-><init>(Lcom/vkontakte/android/ChatActivity$15$1;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/api/MessagesDelete;->setCallback(Lcom/vkontakte/android/api/MessagesDelete$Callback;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 653
    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$15$1;->this$1:Lcom/vkontakte/android/ChatActivity$15;

    invoke-static {v1}, Lcom/vkontakte/android/ChatActivity$15;->access$0(Lcom/vkontakte/android/ChatActivity$15;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkontakte/android/APIRequest;

    move-result-object v0

    .line 654
    iget-object v1, p0, Lcom/vkontakte/android/ChatActivity$15$1;->this$1:Lcom/vkontakte/android/ChatActivity$15;

    invoke-static {v1}, Lcom/vkontakte/android/ChatActivity$15;->access$0(Lcom/vkontakte/android/ChatActivity$15;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/APIRequest;->exec(Landroid/app/Activity;)Lcom/vkontakte/android/APIRequest;

    .line 655
    return-void
.end method

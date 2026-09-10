.class Lcom/vkontakte/android/ChatActivity$4$2;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity$4;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/ChatActivity$4;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$4$2;->this$1:Lcom/vkontakte/android/ChatActivity$4;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$4$2;->this$1:Lcom/vkontakte/android/ChatActivity$4;

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity$4;->access$0(Lcom/vkontakte/android/ChatActivity$4;)Lcom/vkontakte/android/ChatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/ChatActivity;->access$13(Lcom/vkontakte/android/ChatActivity;)Lcom/vkontakte/android/ui/RefreshableListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/ui/RefreshableListView;->setHighlightAfterClick(Z)V

    .line 338
    return-void
.end method

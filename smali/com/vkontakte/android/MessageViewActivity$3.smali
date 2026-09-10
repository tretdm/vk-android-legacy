.class Lcom/vkontakte/android/MessageViewActivity$3;
.super Ljava/lang/Object;
.source "MessageViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/MessageViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/MessageViewActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/MessageViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/MessageViewActivity$3;->this$0:Lcom/vkontakte/android/MessageViewActivity;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/MessageViewActivity$3;)Lcom/vkontakte/android/MessageViewActivity;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/vkontakte/android/MessageViewActivity$3;->this$0:Lcom/vkontakte/android/MessageViewActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 147
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/vkontakte/android/MessageViewActivity$3;->this$0:Lcom/vkontakte/android/MessageViewActivity;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 148
    .local v0, "pm":Landroid/widget/PopupMenu;
    iget-object v1, p0, Lcom/vkontakte/android/MessageViewActivity$3;->this$0:Lcom/vkontakte/android/MessageViewActivity;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/MessageViewActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 149
    iget-object v1, p0, Lcom/vkontakte/android/MessageViewActivity$3;->this$0:Lcom/vkontakte/android/MessageViewActivity;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/MessageViewActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 150
    new-instance v1, Lcom/vkontakte/android/MessageViewActivity$3$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/MessageViewActivity$3$1;-><init>(Lcom/vkontakte/android/MessageViewActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 156
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 157
    return-void
.end method

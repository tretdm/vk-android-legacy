.class Lcom/vkontakte/android/PostViewActivity$14;
.super Ljava/lang/Object;
.source "PostViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PostViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PostViewActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PostViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PostViewActivity$14;->this$0:Lcom/vkontakte/android/PostViewActivity;

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PostViewActivity$14;)Lcom/vkontakte/android/PostViewActivity;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/vkontakte/android/PostViewActivity$14;->this$0:Lcom/vkontakte/android/PostViewActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 403
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity$14;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 404
    .local v0, "pm":Landroid/widget/PopupMenu;
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity$14;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/PostViewActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 405
    iget-object v1, p0, Lcom/vkontakte/android/PostViewActivity$14;->this$0:Lcom/vkontakte/android/PostViewActivity;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/PostViewActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 406
    new-instance v1, Lcom/vkontakte/android/PostViewActivity$14$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PostViewActivity$14$1;-><init>(Lcom/vkontakte/android/PostViewActivity$14;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 412
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 413
    return-void
.end method

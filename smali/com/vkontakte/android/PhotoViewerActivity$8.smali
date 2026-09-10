.class Lcom/vkontakte/android/PhotoViewerActivity$8;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/PhotoViewerActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$8;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkontakte/android/PhotoViewerActivity$8;)Lcom/vkontakte/android/PhotoViewerActivity;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$8;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 217
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$8;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 218
    .local v0, "pm":Landroid/widget/PopupMenu;
    iget-object v1, p0, Lcom/vkontakte/android/PhotoViewerActivity$8;->this$0:Lcom/vkontakte/android/PhotoViewerActivity;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkontakte/android/PhotoViewerActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 219
    new-instance v1, Lcom/vkontakte/android/PhotoViewerActivity$8$1;

    invoke-direct {v1, p0}, Lcom/vkontakte/android/PhotoViewerActivity$8$1;-><init>(Lcom/vkontakte/android/PhotoViewerActivity$8;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 225
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 226
    return-void
.end method

.class Lcom/vkontakte/android/PhotoViewerActivity$14$1;
.super Ljava/lang/Object;
.source "PhotoViewerActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoViewerActivity$14;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/PhotoViewerActivity$14;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoViewerActivity$14;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoViewerActivity$14$1;->this$1:Lcom/vkontakte/android/PhotoViewerActivity$14;

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/vkontakte/android/PhotoViewerActivity$14$1;->this$1:Lcom/vkontakte/android/PhotoViewerActivity$14;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoViewerActivity$14;->access$0(Lcom/vkontakte/android/PhotoViewerActivity$14;)Lcom/vkontakte/android/PhotoViewerActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/PhotoViewerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

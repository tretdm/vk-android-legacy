.class Lcom/vkontakte/android/VideoListActivity$1;
.super Ljava/lang/Object;
.source "VideoListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/VideoListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/VideoListActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/VideoListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/VideoListActivity$1;->this$0:Lcom/vkontakte/android/VideoListActivity;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vkontakte/android/VideoListActivity$1;->this$0:Lcom/vkontakte/android/VideoListActivity;

    iget-object v0, v0, Lcom/vkontakte/android/VideoListActivity;->view:Lcom/vkontakte/android/VideoListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/VideoListView;->showAlbums()V

    .line 31
    return-void
.end method

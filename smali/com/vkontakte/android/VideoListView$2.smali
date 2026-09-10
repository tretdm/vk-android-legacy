.class Lcom/vkontakte/android/VideoListView$2;
.super Ljava/lang/Object;
.source "VideoListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/VideoListView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/VideoListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/VideoListView;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/vkontakte/android/VideoListView$2;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$2;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$700(Lcom/vkontakte/android/VideoListView;)Lcom/vkontakte/android/VideoListView$VideoViewCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$2;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$700(Lcom/vkontakte/android/VideoListView;)Lcom/vkontakte/android/VideoListView$VideoViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/vkontakte/android/VideoListView$VideoViewCallback;->showAddDialog()V

    .line 231
    :cond_0
    return-void
.end method

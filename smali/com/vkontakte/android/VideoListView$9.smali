.class Lcom/vkontakte/android/VideoListView$9;
.super Ljava/lang/Object;
.source "VideoListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/VideoListView;->updateList()V
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
    .line 459
    iput-object p1, p0, Lcom/vkontakte/android/VideoListView$9;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 460
    const-string v0, "vk"

    const-string v1, "UPDATE LIST"

    invoke-static {v0, v1}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$9;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$1900(Lcom/vkontakte/android/VideoListView;)Lcom/vkontakte/android/VideoListView$VideoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/VideoListView$VideoAdapter;->notifyDataSetChanged()V

    .line 462
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$9;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$2000(Lcom/vkontakte/android/VideoListView;)Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 463
    return-void
.end method

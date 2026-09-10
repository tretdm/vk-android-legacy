.class Lcom/vkontakte/android/VideoListView$16;
.super Ljava/lang/Object;
.source "VideoListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/VideoListView;->invalidateList()V
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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/VideoListView$16;->this$0:Lcom/vkontakte/android/VideoListView;

    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$16;->this$0:Lcom/vkontakte/android/VideoListView;

    invoke-static {v0}, Lcom/vkontakte/android/VideoListView;->access$18(Lcom/vkontakte/android/VideoListView;)Lcom/vkontakte/android/VideoListView$VideoAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/VideoListView$VideoAdapter;->notifyDataSetInvalidated()V

    .line 644
    return-void
.end method

.class Lcom/vkontakte/android/mediapicker/ui/HorizontalListView$1;
.super Landroid/database/DataSetObserver;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView$1;->this$0:Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;

    .line 81
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    .line 85
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView$1;->this$0:Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView$1;->this$0:Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->access$2(Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;Z)V

    .line 85
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView$1;->this$0:Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->requestLayout()V

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView$1;->this$0:Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->invalidate()V

    .line 92
    :cond_0
    return-void

    .line 85
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView$1;->this$0:Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;

    invoke-static {v0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->access$3(Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;)V

    .line 97
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView$1;->this$0:Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->requestLayout()V

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView$1;->this$0:Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;

    invoke-virtual {v0}, Lcom/vkontakte/android/mediapicker/ui/HorizontalListView;->invalidate()V

    .line 101
    :cond_0
    return-void
.end method

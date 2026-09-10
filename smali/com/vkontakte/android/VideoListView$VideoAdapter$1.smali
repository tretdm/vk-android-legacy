.class Lcom/vkontakte/android/VideoListView$VideoAdapter$1;
.super Ljava/lang/Object;
.source "VideoListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/VideoListView$VideoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/VideoListView$VideoAdapter;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/VideoListView$VideoAdapter;)V
    .locals 0

    .prologue
    .line 756
    iput-object p1, p0, Lcom/vkontakte/android/VideoListView$VideoAdapter$1;->this$1:Lcom/vkontakte/android/VideoListView$VideoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$VideoAdapter$1;->this$1:Lcom/vkontakte/android/VideoListView$VideoAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vkontakte/android/VideoListView$VideoAdapter;->first:Z

    .line 758
    return-void
.end method

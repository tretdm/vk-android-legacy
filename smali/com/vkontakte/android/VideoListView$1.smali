.class Lcom/vkontakte/android/VideoListView$1;
.super Ljava/lang/Object;
.source "VideoListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/VideoListView;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/VideoListView;

.field private final synthetic val$w:I


# direct methods
.method constructor <init>(Lcom/vkontakte/android/VideoListView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/VideoListView$1;->this$0:Lcom/vkontakte/android/VideoListView;

    iput p2, p0, Lcom/vkontakte/android/VideoListView$1;->val$w:I

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$1;->this$0:Lcom/vkontakte/android/VideoListView;

    iget v1, p0, Lcom/vkontakte/android/VideoListView$1;->val$w:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/VideoListView;->access$4(Lcom/vkontakte/android/VideoListView;I)V

    .line 174
    return-void
.end method

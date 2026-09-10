.class Lcom/vkontakte/android/VideoListView$13;
.super Ljava/lang/Object;
.source "VideoListView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/VideoListView;->deleteVideo(Lcom/vkontakte/android/api/VideoFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/VideoListView;

.field private final synthetic val$vf:Lcom/vkontakte/android/api/VideoFile;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/VideoListView$13;->this$0:Lcom/vkontakte/android/VideoListView;

    iput-object p2, p0, Lcom/vkontakte/android/VideoListView$13;->val$vf:Lcom/vkontakte/android/api/VideoFile;

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 547
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$13;->this$0:Lcom/vkontakte/android/VideoListView;

    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$13;->val$vf:Lcom/vkontakte/android/api/VideoFile;

    invoke-static {v0, v1}, Lcom/vkontakte/android/VideoListView;->access$23(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V

    .line 548
    return-void
.end method

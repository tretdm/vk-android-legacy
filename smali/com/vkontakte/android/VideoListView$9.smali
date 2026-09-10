.class Lcom/vkontakte/android/VideoListView$9;
.super Ljava/lang/Object;
.source "VideoListView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/VideoListView;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
    iput-object p1, p0, Lcom/vkontakte/android/VideoListView$9;->this$0:Lcom/vkontakte/android/VideoListView;

    iput-object p2, p0, Lcom/vkontakte/android/VideoListView$9;->val$vf:Lcom/vkontakte/android/api/VideoFile;

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 393
    packed-switch p2, :pswitch_data_0

    .line 401
    :goto_0
    return-void

    .line 395
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$9;->this$0:Lcom/vkontakte/android/VideoListView;

    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$9;->val$vf:Lcom/vkontakte/android/api/VideoFile;

    invoke-static {v0, v1}, Lcom/vkontakte/android/VideoListView;->access$26(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V

    goto :goto_0

    .line 398
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/VideoListView$9;->this$0:Lcom/vkontakte/android/VideoListView;

    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$9;->val$vf:Lcom/vkontakte/android/api/VideoFile;

    invoke-static {v0, v1}, Lcom/vkontakte/android/VideoListView;->access$27(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V

    goto :goto_0

    .line 393
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.class Lcom/vkontakte/android/VideoListView$1$1;
.super Ljava/lang/Object;
.source "VideoListView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/VideoListView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/VideoListView$1;

.field final synthetic val$acts:Ljava/util/ArrayList;

.field final synthetic val$vf:Lcom/vkontakte/android/api/VideoFile;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/VideoListView$1;Ljava/util/ArrayList;Lcom/vkontakte/android/api/VideoFile;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/vkontakte/android/VideoListView$1$1;->this$1:Lcom/vkontakte/android/VideoListView$1;

    iput-object p2, p0, Lcom/vkontakte/android/VideoListView$1$1;->val$acts:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/vkontakte/android/VideoListView$1$1;->val$vf:Lcom/vkontakte/android/api/VideoFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 115
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$1$1;->val$acts:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    .local v0, "act":Ljava/lang/String;
    const-string v1, "comments"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$1$1;->this$1:Lcom/vkontakte/android/VideoListView$1;

    iget-object v1, v1, Lcom/vkontakte/android/VideoListView$1;->this$0:Lcom/vkontakte/android/VideoListView;

    iget-object v2, p0, Lcom/vkontakte/android/VideoListView$1$1;->val$vf:Lcom/vkontakte/android/api/VideoFile;

    invoke-static {v1, v2}, Lcom/vkontakte/android/VideoListView;->access$100(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const-string v1, "add"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$1$1;->this$1:Lcom/vkontakte/android/VideoListView$1;

    iget-object v1, v1, Lcom/vkontakte/android/VideoListView$1;->this$0:Lcom/vkontakte/android/VideoListView;

    iget-object v2, p0, Lcom/vkontakte/android/VideoListView$1$1;->val$vf:Lcom/vkontakte/android/api/VideoFile;

    invoke-static {v1, v2}, Lcom/vkontakte/android/VideoListView;->access$200(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V

    goto :goto_0

    .line 120
    :cond_2
    const-string v1, "delete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 121
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$1$1;->this$1:Lcom/vkontakte/android/VideoListView$1;

    iget-object v1, v1, Lcom/vkontakte/android/VideoListView$1;->this$0:Lcom/vkontakte/android/VideoListView;

    iget-object v2, p0, Lcom/vkontakte/android/VideoListView$1$1;->val$vf:Lcom/vkontakte/android/api/VideoFile;

    invoke-static {v1, v2}, Lcom/vkontakte/android/VideoListView;->access$300(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V

    goto :goto_0

    .line 122
    :cond_3
    const-string v1, "link"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$1$1;->this$1:Lcom/vkontakte/android/VideoListView$1;

    iget-object v1, v1, Lcom/vkontakte/android/VideoListView$1;->this$0:Lcom/vkontakte/android/VideoListView;

    iget-object v2, p0, Lcom/vkontakte/android/VideoListView$1$1;->val$vf:Lcom/vkontakte/android/api/VideoFile;

    invoke-static {v1, v2}, Lcom/vkontakte/android/VideoListView;->access$400(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V

    goto :goto_0
.end method

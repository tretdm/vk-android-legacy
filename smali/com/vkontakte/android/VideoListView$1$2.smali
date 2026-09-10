.class Lcom/vkontakte/android/VideoListView$1$2;
.super Ljava/lang/Object;
.source "VideoListView.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


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
    .line 133
    iput-object p1, p0, Lcom/vkontakte/android/VideoListView$1$2;->this$1:Lcom/vkontakte/android/VideoListView$1;

    iput-object p2, p0, Lcom/vkontakte/android/VideoListView$1$2;->val$acts:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/vkontakte/android/VideoListView$1$2;->val$vf:Lcom/vkontakte/android/api/VideoFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 136
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$1$2;->val$acts:Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    .local v0, "act":Ljava/lang/String;
    const-string v1, "comments"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$1$2;->this$1:Lcom/vkontakte/android/VideoListView$1;

    iget-object v1, v1, Lcom/vkontakte/android/VideoListView$1;->this$0:Lcom/vkontakte/android/VideoListView;

    iget-object v2, p0, Lcom/vkontakte/android/VideoListView$1$2;->val$vf:Lcom/vkontakte/android/api/VideoFile;

    invoke-static {v1, v2}, Lcom/vkontakte/android/VideoListView;->access$100(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V

    .line 146
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 139
    :cond_1
    const-string v1, "add"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$1$2;->this$1:Lcom/vkontakte/android/VideoListView$1;

    iget-object v1, v1, Lcom/vkontakte/android/VideoListView$1;->this$0:Lcom/vkontakte/android/VideoListView;

    iget-object v2, p0, Lcom/vkontakte/android/VideoListView$1$2;->val$vf:Lcom/vkontakte/android/api/VideoFile;

    invoke-static {v1, v2}, Lcom/vkontakte/android/VideoListView;->access$200(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V

    goto :goto_0

    .line 141
    :cond_2
    const-string v1, "delete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 142
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$1$2;->this$1:Lcom/vkontakte/android/VideoListView$1;

    iget-object v1, v1, Lcom/vkontakte/android/VideoListView$1;->this$0:Lcom/vkontakte/android/VideoListView;

    iget-object v2, p0, Lcom/vkontakte/android/VideoListView$1$2;->val$vf:Lcom/vkontakte/android/api/VideoFile;

    invoke-static {v1, v2}, Lcom/vkontakte/android/VideoListView;->access$300(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V

    goto :goto_0

    .line 143
    :cond_3
    const-string v1, "link"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/vkontakte/android/VideoListView$1$2;->this$1:Lcom/vkontakte/android/VideoListView$1;

    iget-object v1, v1, Lcom/vkontakte/android/VideoListView$1;->this$0:Lcom/vkontakte/android/VideoListView;

    iget-object v2, p0, Lcom/vkontakte/android/VideoListView$1$2;->val$vf:Lcom/vkontakte/android/api/VideoFile;

    invoke-static {v1, v2}, Lcom/vkontakte/android/VideoListView;->access$400(Lcom/vkontakte/android/VideoListView;Lcom/vkontakte/android/api/VideoFile;)V

    goto :goto_0
.end method

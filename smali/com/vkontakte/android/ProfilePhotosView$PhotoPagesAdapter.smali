.class Lcom/vkontakte/android/ProfilePhotosView$PhotoPagesAdapter;
.super Lcom/vkontakte/android/ui/PagerAdapter;
.source "ProfilePhotosView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ProfilePhotosView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoPagesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ProfilePhotosView;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/ProfilePhotosView;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/vkontakte/android/ProfilePhotosView$PhotoPagesAdapter;->this$0:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/ProfilePhotosView;Lcom/vkontakte/android/ProfilePhotosView$PhotoPagesAdapter;)V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/vkontakte/android/ProfilePhotosView$PhotoPagesAdapter;-><init>(Lcom/vkontakte/android/ProfilePhotosView;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 233
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "container":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 234
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 239
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView$PhotoPagesAdapter;->this$0:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfilePhotosView;->access$3(Lcom/vkontakte/android/ProfilePhotosView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 3
    .param p1, "item"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 252
    iget-object v2, p0, Lcom/vkontakte/android/ProfilePhotosView$PhotoPagesAdapter;->this$0:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-static {v2}, Lcom/vkontakte/android/ProfilePhotosView;->access$3(Lcom/vkontakte/android/ProfilePhotosView;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 253
    iget-object v2, p0, Lcom/vkontakte/android/ProfilePhotosView$PhotoPagesAdapter;->this$0:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-static {v2}, Lcom/vkontakte/android/ProfilePhotosView;->access$2(Lcom/vkontakte/android/ProfilePhotosView;)Lcom/vkontakte/android/PhotoListView;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v0

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView$PhotoPagesAdapter;->this$0:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfilePhotosView;->access$1(Lcom/vkontakte/android/ProfilePhotosView;)Lcom/vkontakte/android/PhotoListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView$PhotoPagesAdapter;->this$0:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfilePhotosView;->access$4(Lcom/vkontakte/android/ProfilePhotosView;)Lcom/vkontakte/android/PhotoAlbumsView;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    .line 257
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/ProfilePhotosView$PhotoPagesAdapter;->this$0:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-static {v2}, Lcom/vkontakte/android/ProfilePhotosView;->access$1(Lcom/vkontakte/android/ProfilePhotosView;)Lcom/vkontakte/android/PhotoListView;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 258
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView$PhotoPagesAdapter;->this$0:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfilePhotosView;->access$4(Lcom/vkontakte/android/ProfilePhotosView;)Lcom/vkontakte/android/PhotoAlbumsView;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_0

    .line 260
    :cond_4
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 3
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView$PhotoPagesAdapter;->this$0:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfilePhotosView;->access$3(Lcom/vkontakte/android/ProfilePhotosView;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 216
    :cond_0
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "instantiateItem "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    packed-switch p2, :pswitch_data_0

    .line 228
    const/4 v0, 0x0

    .end local p1    # "container":Landroid/view/View;
    :goto_0
    return-object v0

    .line 219
    .restart local p1    # "container":Landroid/view/View;
    :pswitch_0
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "container":Landroid/view/View;
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView$PhotoPagesAdapter;->this$0:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfilePhotosView;->access$2(Lcom/vkontakte/android/ProfilePhotosView;)Lcom/vkontakte/android/PhotoListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 220
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView$PhotoPagesAdapter;->this$0:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfilePhotosView;->access$2(Lcom/vkontakte/android/ProfilePhotosView;)Lcom/vkontakte/android/PhotoListView;

    move-result-object v0

    goto :goto_0

    .line 222
    .restart local p1    # "container":Landroid/view/View;
    :pswitch_1
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "container":Landroid/view/View;
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView$PhotoPagesAdapter;->this$0:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfilePhotosView;->access$1(Lcom/vkontakte/android/ProfilePhotosView;)Lcom/vkontakte/android/PhotoListView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 223
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView$PhotoPagesAdapter;->this$0:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfilePhotosView;->access$1(Lcom/vkontakte/android/ProfilePhotosView;)Lcom/vkontakte/android/PhotoListView;

    move-result-object v0

    goto :goto_0

    .line 225
    .restart local p1    # "container":Landroid/view/View;
    :pswitch_2
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "container":Landroid/view/View;
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView$PhotoPagesAdapter;->this$0:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfilePhotosView;->access$4(Lcom/vkontakte/android/ProfilePhotosView;)Lcom/vkontakte/android/PhotoAlbumsView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 226
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView$PhotoPagesAdapter;->this$0:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfilePhotosView;->access$4(Lcom/vkontakte/android/ProfilePhotosView;)Lcom/vkontakte/android/PhotoAlbumsView;

    move-result-object v0

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 243
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 265
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 211
    return-void
.end method

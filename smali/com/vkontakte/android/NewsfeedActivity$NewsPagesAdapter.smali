.class Lcom/vkontakte/android/NewsfeedActivity$NewsPagesAdapter;
.super Lcom/vkontakte/android/ui/PagerAdapter;
.source "NewsfeedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/NewsfeedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewsPagesAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/NewsfeedActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/NewsfeedActivity;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/vkontakte/android/NewsfeedActivity$NewsPagesAdapter;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/NewsfeedActivity;Lcom/vkontakte/android/NewsfeedActivity$NewsPagesAdapter;)V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/vkontakte/android/NewsfeedActivity$NewsPagesAdapter;-><init>(Lcom/vkontakte/android/NewsfeedActivity;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 288
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "container":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 289
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 294
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x4

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "view":Landroid/view/View;
    packed-switch p2, :pswitch_data_0

    .line 280
    :goto_0
    if-eqz v0, :cond_0

    .line 281
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "container":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 283
    :cond_0
    return-object v0

    .line 268
    .restart local p1    # "container":Landroid/view/View;
    :pswitch_0
    sget-boolean v1, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedActivity$NewsPagesAdapter;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewsfeedActivity;->access$2(Lcom/vkontakte/android/NewsfeedActivity;)Lcom/vkontakte/android/NotificationsView;

    move-result-object v0

    .line 269
    :goto_1
    goto :goto_0

    .line 268
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedActivity$NewsPagesAdapter;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewsfeedActivity;->access$0(Lcom/vkontakte/android/NewsfeedActivity;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    goto :goto_1

    .line 271
    :pswitch_1
    sget-boolean v1, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedActivity$NewsPagesAdapter;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewsfeedActivity;->access$0(Lcom/vkontakte/android/NewsfeedActivity;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    .line 272
    :goto_2
    goto :goto_0

    .line 271
    :cond_2
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedActivity$NewsPagesAdapter;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewsfeedActivity;->access$2(Lcom/vkontakte/android/NewsfeedActivity;)Lcom/vkontakte/android/NotificationsView;

    move-result-object v0

    goto :goto_2

    .line 274
    :pswitch_2
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedActivity$NewsPagesAdapter;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewsfeedActivity;->access$1(Lcom/vkontakte/android/NewsfeedActivity;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    .line 275
    goto :goto_0

    .line 277
    :pswitch_3
    iget-object v1, p0, Lcom/vkontakte/android/NewsfeedActivity$NewsPagesAdapter;->this$0:Lcom/vkontakte/android/NewsfeedActivity;

    invoke-static {v1}, Lcom/vkontakte/android/NewsfeedActivity;->access$3(Lcom/vkontakte/android/NewsfeedActivity;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 298
    check-cast p2, Landroid/view/View;

    .end local p2    # "object":Ljava/lang/Object;
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 308
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 261
    return-void
.end method

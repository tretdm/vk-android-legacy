.class Lcom/vkontakte/android/FaveActivity$FavePagerAdapter;
.super Lcom/vkontakte/android/ui/PagerAdapter;
.source "FaveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/FaveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavePagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/FaveActivity;


# direct methods
.method private constructor <init>(Lcom/vkontakte/android/FaveActivity;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/vkontakte/android/FaveActivity$FavePagerAdapter;->this$0:Lcom/vkontakte/android/FaveActivity;

    invoke-direct {p0}, Lcom/vkontakte/android/ui/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkontakte/android/FaveActivity;Lcom/vkontakte/android/FaveActivity$FavePagerAdapter;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/vkontakte/android/FaveActivity$FavePagerAdapter;-><init>(Lcom/vkontakte/android/FaveActivity;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 106
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "container":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 107
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 110
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x5

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 2
    .param p1, "container"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "view":Landroid/view/View;
    packed-switch p2, :pswitch_data_0

    .line 98
    :goto_0
    if-eqz v0, :cond_0

    .line 99
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "container":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 101
    :cond_0
    return-object v0

    .line 83
    .restart local p1    # "container":Landroid/view/View;
    :pswitch_0
    iget-object v1, p0, Lcom/vkontakte/android/FaveActivity$FavePagerAdapter;->this$0:Lcom/vkontakte/android/FaveActivity;

    invoke-static {v1}, Lcom/vkontakte/android/FaveActivity;->access$0(Lcom/vkontakte/android/FaveActivity;)Lcom/vkontakte/android/VideoListView;

    move-result-object v0

    .line 84
    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v1, p0, Lcom/vkontakte/android/FaveActivity$FavePagerAdapter;->this$0:Lcom/vkontakte/android/FaveActivity;

    invoke-static {v1}, Lcom/vkontakte/android/FaveActivity;->access$1(Lcom/vkontakte/android/FaveActivity;)Lcom/vkontakte/android/PhotoListView;

    move-result-object v0

    .line 87
    goto :goto_0

    .line 89
    :pswitch_2
    iget-object v1, p0, Lcom/vkontakte/android/FaveActivity$FavePagerAdapter;->this$0:Lcom/vkontakte/android/FaveActivity;

    invoke-static {v1}, Lcom/vkontakte/android/FaveActivity;->access$2(Lcom/vkontakte/android/FaveActivity;)Lcom/vkontakte/android/UserListView;

    move-result-object v0

    .line 90
    goto :goto_0

    .line 92
    :pswitch_3
    iget-object v1, p0, Lcom/vkontakte/android/FaveActivity$FavePagerAdapter;->this$0:Lcom/vkontakte/android/FaveActivity;

    invoke-static {v1}, Lcom/vkontakte/android/FaveActivity;->access$3(Lcom/vkontakte/android/FaveActivity;)Lcom/vkontakte/android/NewsView;

    move-result-object v0

    .line 93
    goto :goto_0

    .line 95
    :pswitch_4
    iget-object v1, p0, Lcom/vkontakte/android/FaveActivity$FavePagerAdapter;->this$0:Lcom/vkontakte/android/FaveActivity;

    invoke-static {v1}, Lcom/vkontakte/android/FaveActivity;->access$4(Lcom/vkontakte/android/FaveActivity;)Lcom/vkontakte/android/UserListView;

    move-result-object v0

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 114
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
    .line 123
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "container"    # Landroid/view/View;

    .prologue
    .line 76
    return-void
.end method

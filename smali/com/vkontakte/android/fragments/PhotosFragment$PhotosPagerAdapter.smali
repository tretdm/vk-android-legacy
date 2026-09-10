.class Lcom/vkontakte/android/fragments/PhotosFragment$PhotosPagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "PhotosFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/fragments/PhotosFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotosPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PhotosFragment;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/fragments/PhotosFragment;)V
    .locals 1

    .prologue
    .line 119
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PhotosFragment$PhotosPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotosFragment;

    .line 120
    invoke-virtual {p1}, Lcom/vkontakte/android/fragments/PhotosFragment;->getInnerFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 121
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 130
    packed-switch p1, :pswitch_data_0

    .line 136
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 132
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotosFragment$PhotosPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotosFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotosFragment;->access$100(Lcom/vkontakte/android/fragments/PhotosFragment;)Lcom/vkontakte/android/fragments/PhotoNewsFragment;

    move-result-object v0

    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotosFragment$PhotosPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotosFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PhotosFragment;->access$200(Lcom/vkontakte/android/fragments/PhotosFragment;)Lcom/vkontakte/android/fragments/PhotoAlbumsFragment;

    move-result-object v0

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 140
    packed-switch p1, :pswitch_data_0

    .line 146
    const-string v0, ""

    :goto_0
    return-object v0

    .line 142
    :pswitch_0
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotosFragment$PhotosPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotosFragment;

    const v1, 0x7f0d0100

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/PhotosFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 144
    :pswitch_1
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PhotosFragment$PhotosPagerAdapter;->this$0:Lcom/vkontakte/android/fragments/PhotosFragment;

    const v1, 0x7f0d0022

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/fragments/PhotosFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

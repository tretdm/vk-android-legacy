.class Lcom/vkontakte/android/ProfilePhotosView$2;
.super Ljava/lang/Object;
.source "ProfilePhotosView.java"

# interfaces
.implements Lcom/vkontakte/android/ui/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ProfilePhotosView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ProfilePhotosView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ProfilePhotosView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ProfilePhotosView$2;->this$0:Lcom/vkontakte/android/ProfilePhotosView;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 128
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 124
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView$2;->this$0:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfilePhotosView;->access$5(Lcom/vkontakte/android/ProfilePhotosView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView$2;->this$0:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfilePhotosView;->access$3(Lcom/vkontakte/android/ProfilePhotosView;)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 p1, p1, 0x1

    .line 106
    :cond_2
    if-nez p1, :cond_3

    .line 107
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView$2;->this$0:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfilePhotosView;->access$2(Lcom/vkontakte/android/ProfilePhotosView;)Lcom/vkontakte/android/PhotoListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoListView;->onActivate()V

    .line 108
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView$2;->this$0:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfilePhotosView;->access$1(Lcom/vkontakte/android/ProfilePhotosView;)Lcom/vkontakte/android/PhotoListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoListView;->onDeactivate()V

    .line 109
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView$2;->this$0:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfilePhotosView;->access$4(Lcom/vkontakte/android/ProfilePhotosView;)Lcom/vkontakte/android/PhotoAlbumsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->onDeactivate()V

    goto :goto_0

    .line 110
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 111
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView$2;->this$0:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfilePhotosView;->access$1(Lcom/vkontakte/android/ProfilePhotosView;)Lcom/vkontakte/android/PhotoListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoListView;->onActivate()V

    .line 112
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView$2;->this$0:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfilePhotosView;->access$2(Lcom/vkontakte/android/ProfilePhotosView;)Lcom/vkontakte/android/PhotoListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoListView;->onDeactivate()V

    .line 113
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView$2;->this$0:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfilePhotosView;->access$4(Lcom/vkontakte/android/ProfilePhotosView;)Lcom/vkontakte/android/PhotoAlbumsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->onDeactivate()V

    goto :goto_0

    .line 114
    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView$2;->this$0:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfilePhotosView;->access$2(Lcom/vkontakte/android/ProfilePhotosView;)Lcom/vkontakte/android/PhotoListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoListView;->onDeactivate()V

    .line 116
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView$2;->this$0:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfilePhotosView;->access$1(Lcom/vkontakte/android/ProfilePhotosView;)Lcom/vkontakte/android/PhotoListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoListView;->onDeactivate()V

    .line 117
    iget-object v0, p0, Lcom/vkontakte/android/ProfilePhotosView$2;->this$0:Lcom/vkontakte/android/ProfilePhotosView;

    invoke-static {v0}, Lcom/vkontakte/android/ProfilePhotosView;->access$4(Lcom/vkontakte/android/ProfilePhotosView;)Lcom/vkontakte/android/PhotoAlbumsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/PhotoAlbumsView;->onActivate()V

    goto :goto_0
.end method

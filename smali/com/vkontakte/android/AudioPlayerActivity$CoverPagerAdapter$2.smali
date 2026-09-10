.class Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$2;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$2;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;

    iput-object p2, p0, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$2;->val$v:Landroid/view/View;

    .line 999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1002
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$2;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1003
    iget-object v0, p0, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$2;->val$v:Landroid/view/View;

    const v1, 0x7f090088

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter$2;->this$1:Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;

    invoke-static {v1}, Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;->access$1(Lcom/vkontakte/android/AudioPlayerActivity$CoverPagerAdapter;)Lcom/vkontakte/android/AudioPlayerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkontakte/android/AudioPlayerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->getHeight()I

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1004
    const/4 v0, 0x1

    return v0
.end method

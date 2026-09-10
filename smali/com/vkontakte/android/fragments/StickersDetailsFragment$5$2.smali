.class Lcom/vkontakte/android/fragments/StickersDetailsFragment$5$2;
.super Ljava/lang/Object;
.source "StickersDetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;

.field private final synthetic val$pager:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;Landroid/support/v4/view/ViewPager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$5$2;->this$1:Lcom/vkontakte/android/fragments/StickersDetailsFragment$5;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$5$2;->val$pager:Landroid/support/v4/view/ViewPager;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$5$2;->val$pager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$5$2;->val$pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 266
    return-void
.end method

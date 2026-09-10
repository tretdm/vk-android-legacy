.class Lcom/vkontakte/android/EmojiView$6;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/EmojiView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/EmojiView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/EmojiView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/EmojiView$6;->this$0:Lcom/vkontakte/android/EmojiView;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 360
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 354
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 345
    if-eqz p1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$6;->this$0:Lcom/vkontakte/android/EmojiView;

    invoke-static {v0}, Lcom/vkontakte/android/EmojiView;->access$19(Lcom/vkontakte/android/EmojiView;)V

    .line 348
    :cond_0
    return-void
.end method

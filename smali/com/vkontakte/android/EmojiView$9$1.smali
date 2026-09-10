.class Lcom/vkontakte/android/EmojiView$9$1;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/EmojiView$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/EmojiView$9;

.field private final synthetic val$icon:Landroid/graphics/drawable/StateListDrawable;

.field private final synthetic val$tab:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/EmojiView$9;Landroid/widget/ImageView;Landroid/graphics/drawable/StateListDrawable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/EmojiView$9$1;->this$1:Lcom/vkontakte/android/EmojiView$9;

    iput-object p2, p0, Lcom/vkontakte/android/EmojiView$9$1;->val$tab:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/vkontakte/android/EmojiView$9$1;->val$icon:Landroid/graphics/drawable/StateListDrawable;

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/vkontakte/android/EmojiView$9$1;->val$tab:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkontakte/android/EmojiView$9$1;->val$icon:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 507
    return-void
.end method

.class Lcom/vkontakte/android/fragments/PostViewFragment$32$1;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment$32;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/PostViewFragment$32;

.field final synthetic val$td:Landroid/graphics/drawable/TransitionDrawable;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment$32;Landroid/graphics/drawable/TransitionDrawable;)V
    .locals 0

    .prologue
    .line 1397
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32$1;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$32;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32$1;->val$td:Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$32$1;->val$td:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 1400
    return-void
.end method

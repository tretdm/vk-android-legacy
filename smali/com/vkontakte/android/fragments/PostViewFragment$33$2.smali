.class Lcom/vkontakte/android/fragments/PostViewFragment$33$2;
.super Ljava/lang/Object;
.source "PostViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment$33;->success(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/PostViewFragment$33;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment$33;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$33$2;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$33;

    .line 1395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/vkontakte/android/fragments/PostViewFragment$33$2;->this$1:Lcom/vkontakte/android/fragments/PostViewFragment$33;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment$33;->access$0(Lcom/vkontakte/android/fragments/PostViewFragment$33;)Lcom/vkontakte/android/fragments/PostViewFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$1(Lcom/vkontakte/android/fragments/PostViewFragment;)V

    .line 1398
    return-void
.end method

.class Lcom/vkontakte/android/fragments/NewsFragment$14$1;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/NewsFragment$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkontakte/android/fragments/NewsFragment$14;

.field final synthetic val$e:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/NewsFragment$14;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/vkontakte/android/fragments/NewsFragment$14$1;->this$1:Lcom/vkontakte/android/fragments/NewsFragment$14;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/NewsFragment$14$1;->val$e:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 593
    iget-object v0, p0, Lcom/vkontakte/android/fragments/NewsFragment$14$1;->this$1:Lcom/vkontakte/android/fragments/NewsFragment$14;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/NewsFragment$14;->this$0:Lcom/vkontakte/android/fragments/NewsFragment;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/NewsFragment$14$1;->val$e:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vkontakte/android/fragments/NewsFragment;->onDataLoaded(Ljava/util/List;Z)V

    .line 594
    return-void
.end method

.class Lcom/vkontakte/android/PhotoCommentsActivity$6$1$1;
.super Ljava/lang/Object;
.source "PhotoCommentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/PhotoCommentsActivity$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkontakte/android/PhotoCommentsActivity$6$1;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/PhotoCommentsActivity$6$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/PhotoCommentsActivity$6$1$1;->this$2:Lcom/vkontakte/android/PhotoCommentsActivity$6$1;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/vkontakte/android/PhotoCommentsActivity$6$1$1;->this$2:Lcom/vkontakte/android/PhotoCommentsActivity$6$1;

    invoke-static {v0}, Lcom/vkontakte/android/PhotoCommentsActivity$6$1;->access$0(Lcom/vkontakte/android/PhotoCommentsActivity$6$1;)Lcom/vkontakte/android/PhotoCommentsActivity$6;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/PhotoCommentsActivity$6;->access$0(Lcom/vkontakte/android/PhotoCommentsActivity$6;)Lcom/vkontakte/android/PhotoCommentsActivity;

    move-result-object v0

    const v1, 0x7f06016b

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PhotoCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const/4 v1, 0x0

    const v2, 0xf423f

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 245
    return-void
.end method

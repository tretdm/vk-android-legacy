.class Lcom/vkontakte/android/fragments/StickersDetailsFragment$6;
.super Ljava/lang/Object;
.source "StickersDetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/StickersDetailsFragment;->updateState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/StickersDetailsFragment;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$6;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/vkontakte/android/fragments/StickersDetailsFragment$6;->this$0:Lcom/vkontakte/android/fragments/StickersDetailsFragment;

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/StickersDetailsFragment;->dismiss()V

    .line 328
    return-void
.end method

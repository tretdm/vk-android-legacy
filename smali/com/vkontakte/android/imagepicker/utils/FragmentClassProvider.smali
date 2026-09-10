.class public Lcom/vkontakte/android/imagepicker/utils/FragmentClassProvider;
.super Landroid/support/v4/app/Fragment;
.source "FragmentClassProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method protected static Log(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-static {p0}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Log(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method protected static varargs Log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 17
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/imagepicker/utils/Loggable;->Log(Ljava/lang/String;)V

    .line 18
    return-void
.end method

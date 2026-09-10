.class public Lcom/vkontakte/android/PhotoAttachment$Image;
.super Ljava/lang/Object;
.source "PhotoAttachment.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/PhotoAttachment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Image"
.end annotation


# instance fields
.field public height:I

.field public type:C

.field public url:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(CLjava/lang/String;II)V
    .locals 0
    .param p1, "type"    # C
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-char p1, p0, Lcom/vkontakte/android/PhotoAttachment$Image;->type:C

    .line 300
    iput-object p2, p0, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    .line 301
    iput p3, p0, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    .line 302
    iput p4, p0, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    .line 303
    return-void
.end method

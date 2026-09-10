.class public Lcom/vkontakte/android/mediapicker/gl/GLAttrib;
.super Ljava/lang/Object;
.source "GLAttrib.java"


# instance fields
.field location:I

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "location"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/vkontakte/android/mediapicker/gl/GLAttrib;->location:I

    .line 14
    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/gl/GLAttrib;->name:Ljava/lang/String;

    .line 15
    return-void
.end method
